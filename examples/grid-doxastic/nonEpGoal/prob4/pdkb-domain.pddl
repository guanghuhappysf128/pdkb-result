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
                    ; #12125: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22651: <==closure== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #38269: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #44498: <==closure== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #53661: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #61870: <==closure== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #67682: <==closure== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #89625: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #20962: <==negation-removal== 22651 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27020: <==uncertain_firing== 67682 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37537: <==negation-removal== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #41944: <==negation-removal== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48330: <==uncertain_firing== 12125 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49411: <==negation-removal== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #52346: <==uncertain_firing== 61870 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #53224: <==uncertain_firing== 53661 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #56221: <==uncertain_firing== 89625 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #64976: <==uncertain_firing== 38269 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69453: <==negation-removal== 44498 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #80517: <==negation-removal== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #84510: <==uncertain_firing== 44498 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87742: <==negation-removal== 61870 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #88180: <==uncertain_firing== 22651 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #89022: <==negation-removal== 67682 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #12125: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22651: <==closure== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #38269: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #44498: <==closure== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #53661: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #61870: <==closure== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #67682: <==closure== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #89625: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #20962: <==negation-removal== 22651 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27020: <==uncertain_firing== 67682 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37537: <==negation-removal== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #41944: <==negation-removal== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48330: <==uncertain_firing== 12125 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49411: <==negation-removal== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #52346: <==uncertain_firing== 61870 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #53224: <==uncertain_firing== 53661 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #56221: <==uncertain_firing== 89625 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #64976: <==uncertain_firing== 38269 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69453: <==negation-removal== 44498 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #80517: <==negation-removal== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #84510: <==uncertain_firing== 44498 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87742: <==negation-removal== 61870 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #88180: <==uncertain_firing== 22651 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #89022: <==negation-removal== 67682 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #12125: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22651: <==closure== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #38269: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #44498: <==closure== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #53661: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #61870: <==closure== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #67682: <==closure== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #89625: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #20962: <==negation-removal== 22651 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27020: <==uncertain_firing== 67682 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37537: <==negation-removal== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #41944: <==negation-removal== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48330: <==uncertain_firing== 12125 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49411: <==negation-removal== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #52346: <==uncertain_firing== 61870 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #53224: <==uncertain_firing== 53661 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #56221: <==uncertain_firing== 89625 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #64976: <==uncertain_firing== 38269 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69453: <==negation-removal== 44498 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #80517: <==negation-removal== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #84510: <==uncertain_firing== 44498 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87742: <==negation-removal== 61870 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #88180: <==uncertain_firing== 22651 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #89022: <==negation-removal== 67682 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #12125: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #22651: <==closure== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #38269: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #44498: <==closure== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #53661: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #61870: <==closure== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #67682: <==closure== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #89625: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #20962: <==negation-removal== 22651 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27020: <==uncertain_firing== 67682 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #37537: <==negation-removal== 89625 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #41944: <==negation-removal== 53661 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48330: <==uncertain_firing== 12125 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49411: <==negation-removal== 12125 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #52346: <==uncertain_firing== 61870 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #53224: <==uncertain_firing== 53661 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #56221: <==uncertain_firing== 89625 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #64976: <==uncertain_firing== 38269 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #69453: <==negation-removal== 44498 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #80517: <==negation-removal== 38269 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #84510: <==uncertain_firing== 44498 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87742: <==negation-removal== 61870 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #88180: <==uncertain_firing== 22651 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #89022: <==negation-removal== 67682 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #18827: <==closure== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #27590: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #44707: <==closure== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #61132: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #61250: <==closure== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #62631: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #66684: <==closure== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #89943: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #10858: <==uncertain_firing== 61250 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #11414: <==uncertain_firing== 62631 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #12152: <==uncertain_firing== 61132 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16985: <==negation-removal== 18827 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #23390: <==negation-removal== 44707 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #29864: <==negation-removal== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #32701: <==negation-removal== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42872: <==uncertain_firing== 66684 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #46621: <==uncertain_firing== 18827 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47435: <==negation-removal== 61250 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #49002: <==negation-removal== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59693: <==uncertain_firing== 89943 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #60480: <==negation-removal== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #68517: <==negation-removal== 66684 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78734: <==uncertain_firing== 44707 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #88481: <==uncertain_firing== 27590 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #18827: <==closure== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #27590: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #44707: <==closure== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #61132: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #61250: <==closure== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #62631: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #66684: <==closure== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #89943: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #10858: <==uncertain_firing== 61250 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #11414: <==uncertain_firing== 62631 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #12152: <==uncertain_firing== 61132 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16985: <==negation-removal== 18827 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #23390: <==negation-removal== 44707 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #29864: <==negation-removal== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #32701: <==negation-removal== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42872: <==uncertain_firing== 66684 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #46621: <==uncertain_firing== 18827 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47435: <==negation-removal== 61250 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #49002: <==negation-removal== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59693: <==uncertain_firing== 89943 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #60480: <==negation-removal== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #68517: <==negation-removal== 66684 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78734: <==uncertain_firing== 44707 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #88481: <==uncertain_firing== 27590 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #18827: <==closure== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #27590: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #44707: <==closure== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #61132: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #61250: <==closure== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #62631: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #66684: <==closure== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #89943: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #10858: <==uncertain_firing== 61250 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #11414: <==uncertain_firing== 62631 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #12152: <==uncertain_firing== 61132 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16985: <==negation-removal== 18827 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #23390: <==negation-removal== 44707 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #29864: <==negation-removal== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #32701: <==negation-removal== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42872: <==uncertain_firing== 66684 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #46621: <==uncertain_firing== 18827 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47435: <==negation-removal== 61250 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #49002: <==negation-removal== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59693: <==uncertain_firing== 89943 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #60480: <==negation-removal== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #68517: <==negation-removal== 66684 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78734: <==uncertain_firing== 44707 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #88481: <==uncertain_firing== 27590 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #18827: <==closure== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #27590: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #44707: <==closure== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #61132: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #61250: <==closure== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #62631: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #66684: <==closure== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #89943: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #10858: <==uncertain_firing== 61250 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #11414: <==uncertain_firing== 62631 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #12152: <==uncertain_firing== 61132 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #16985: <==negation-removal== 18827 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #23390: <==negation-removal== 44707 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #29864: <==negation-removal== 61132 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #32701: <==negation-removal== 27590 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #42872: <==uncertain_firing== 66684 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #46621: <==uncertain_firing== 18827 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47435: <==negation-removal== 61250 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #49002: <==negation-removal== 89943 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59693: <==uncertain_firing== 89943 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #60480: <==negation-removal== 62631 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #68517: <==negation-removal== 66684 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #78734: <==uncertain_firing== 44707 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #88481: <==uncertain_firing== 27590 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #17048: <==closure== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #18380: <==closure== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #29825: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #38759: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #42072: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #44973: <==closure== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #70786: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #91999: <==closure== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #13116: <==negation-removal== 18380 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #31003: <==uncertain_firing== 38759 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #32129: <==uncertain_firing== 18380 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #36614: <==uncertain_firing== 17048 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41553: <==negation-removal== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #41835: <==negation-removal== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #52675: <==negation-removal== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #57085: <==negation-removal== 17048 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59566: <==uncertain_firing== 29825 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60536: <==negation-removal== 91999 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #61352: <==uncertain_firing== 70786 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #73013: <==negation-removal== 44973 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81646: <==negation-removal== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87358: <==uncertain_firing== 91999 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89219: <==uncertain_firing== 44973 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #89853: <==uncertain_firing== 42072 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #17048: <==closure== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #18380: <==closure== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #29825: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #38759: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #42072: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #44973: <==closure== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #70786: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #91999: <==closure== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #13116: <==negation-removal== 18380 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #31003: <==uncertain_firing== 38759 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #32129: <==uncertain_firing== 18380 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #36614: <==uncertain_firing== 17048 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41553: <==negation-removal== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #41835: <==negation-removal== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #52675: <==negation-removal== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #57085: <==negation-removal== 17048 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59566: <==uncertain_firing== 29825 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60536: <==negation-removal== 91999 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #61352: <==uncertain_firing== 70786 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #73013: <==negation-removal== 44973 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81646: <==negation-removal== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87358: <==uncertain_firing== 91999 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89219: <==uncertain_firing== 44973 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #89853: <==uncertain_firing== 42072 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #17048: <==closure== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #18380: <==closure== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #29825: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #38759: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #42072: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #44973: <==closure== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #70786: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #91999: <==closure== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #13116: <==negation-removal== 18380 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #31003: <==uncertain_firing== 38759 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #32129: <==uncertain_firing== 18380 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #36614: <==uncertain_firing== 17048 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41553: <==negation-removal== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #41835: <==negation-removal== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #52675: <==negation-removal== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #57085: <==negation-removal== 17048 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59566: <==uncertain_firing== 29825 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60536: <==negation-removal== 91999 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #61352: <==uncertain_firing== 70786 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #73013: <==negation-removal== 44973 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81646: <==negation-removal== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87358: <==uncertain_firing== 91999 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89219: <==uncertain_firing== 44973 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #89853: <==uncertain_firing== 42072 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #17048: <==closure== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #18380: <==closure== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #29825: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #38759: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #42072: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #44973: <==closure== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #70786: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #91999: <==closure== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #13116: <==negation-removal== 18380 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #31003: <==uncertain_firing== 38759 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #32129: <==uncertain_firing== 18380 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #36614: <==uncertain_firing== 17048 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #41553: <==negation-removal== 42072 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #41835: <==negation-removal== 29825 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #52675: <==negation-removal== 38759 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #57085: <==negation-removal== 17048 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #59566: <==uncertain_firing== 29825 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60536: <==negation-removal== 91999 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #61352: <==uncertain_firing== 70786 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #73013: <==negation-removal== 44973 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81646: <==negation-removal== 70786 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87358: <==uncertain_firing== 91999 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89219: <==uncertain_firing== 44973 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #89853: <==uncertain_firing== 42072 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #20326: <==closure== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #21500: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #28031: <==closure== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #49525: <==closure== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #51047: <==closure== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #59594: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #61642: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #72236: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19365: <==uncertain_firing== 28031 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #21711: <==uncertain_firing== 61642 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #23662: <==uncertain_firing== 49525 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #26876: <==negation-removal== 28031 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29723: <==uncertain_firing== 59594 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32543: <==uncertain_firing== 21500 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #33790: <==negation-removal== 20326 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35026: <==uncertain_firing== 72236 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35291: <==uncertain_firing== 20326 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #37051: <==negation-removal== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66455: <==uncertain_firing== 51047 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #74342: <==negation-removal== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #76744: <==negation-removal== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77551: <==negation-removal== 51047 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78122: <==negation-removal== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86139: <==negation-removal== 49525 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #20326: <==closure== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #21500: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #28031: <==closure== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #49525: <==closure== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #51047: <==closure== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #59594: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #61642: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #72236: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19365: <==uncertain_firing== 28031 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #21711: <==uncertain_firing== 61642 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #23662: <==uncertain_firing== 49525 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #26876: <==negation-removal== 28031 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29723: <==uncertain_firing== 59594 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32543: <==uncertain_firing== 21500 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #33790: <==negation-removal== 20326 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35026: <==uncertain_firing== 72236 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35291: <==uncertain_firing== 20326 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #37051: <==negation-removal== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66455: <==uncertain_firing== 51047 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #74342: <==negation-removal== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #76744: <==negation-removal== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77551: <==negation-removal== 51047 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78122: <==negation-removal== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86139: <==negation-removal== 49525 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20326: <==closure== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #21500: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #28031: <==closure== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #49525: <==closure== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #51047: <==closure== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #59594: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #61642: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #72236: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19365: <==uncertain_firing== 28031 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #21711: <==uncertain_firing== 61642 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #23662: <==uncertain_firing== 49525 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #26876: <==negation-removal== 28031 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29723: <==uncertain_firing== 59594 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32543: <==uncertain_firing== 21500 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #33790: <==negation-removal== 20326 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35026: <==uncertain_firing== 72236 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35291: <==uncertain_firing== 20326 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #37051: <==negation-removal== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66455: <==uncertain_firing== 51047 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #74342: <==negation-removal== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #76744: <==negation-removal== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77551: <==negation-removal== 51047 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78122: <==negation-removal== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86139: <==negation-removal== 49525 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #20326: <==closure== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #21500: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #28031: <==closure== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #49525: <==closure== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #51047: <==closure== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #59594: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #61642: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #72236: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #19365: <==uncertain_firing== 28031 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #21711: <==uncertain_firing== 61642 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #23662: <==uncertain_firing== 49525 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #26876: <==negation-removal== 28031 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29723: <==uncertain_firing== 59594 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #32543: <==uncertain_firing== 21500 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #33790: <==negation-removal== 20326 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35026: <==uncertain_firing== 72236 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #35291: <==uncertain_firing== 20326 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #37051: <==negation-removal== 61642 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66455: <==uncertain_firing== 51047 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #74342: <==negation-removal== 72236 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #76744: <==negation-removal== 21500 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77551: <==negation-removal== 51047 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #78122: <==negation-removal== 59594 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86139: <==negation-removal== 49525 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #14313: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #23313: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #23872: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #39942: <==closure== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #44781: <==closure== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #56495: <==closure== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #59549: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #63100: <==closure== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #17117: <==uncertain_firing== 23313 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #20619: <==uncertain_firing== 59549 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22319: <==negation-removal== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26797: <==negation-removal== 56495 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #26874: <==negation-removal== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32188: <==uncertain_firing== 63100 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40879: <==negation-removal== 63100 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #47823: <==uncertain_firing== 39942 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52845: <==uncertain_firing== 44781 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54776: <==negation-removal== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #56130: <==uncertain_firing== 56495 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #60727: <==uncertain_firing== 23872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62910: <==negation-removal== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #81679: <==negation-removal== 39942 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84057: <==negation-removal== 44781 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #88094: <==uncertain_firing== 14313 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #14313: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #23313: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #23872: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #39942: <==closure== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #44781: <==closure== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #56495: <==closure== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #59549: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #63100: <==closure== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #17117: <==uncertain_firing== 23313 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #20619: <==uncertain_firing== 59549 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22319: <==negation-removal== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26797: <==negation-removal== 56495 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #26874: <==negation-removal== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32188: <==uncertain_firing== 63100 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40879: <==negation-removal== 63100 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #47823: <==uncertain_firing== 39942 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52845: <==uncertain_firing== 44781 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54776: <==negation-removal== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #56130: <==uncertain_firing== 56495 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #60727: <==uncertain_firing== 23872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62910: <==negation-removal== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #81679: <==negation-removal== 39942 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84057: <==negation-removal== 44781 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #88094: <==uncertain_firing== 14313 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #14313: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #23313: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #23872: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #39942: <==closure== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #44781: <==closure== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #56495: <==closure== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #59549: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #63100: <==closure== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #17117: <==uncertain_firing== 23313 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #20619: <==uncertain_firing== 59549 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22319: <==negation-removal== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26797: <==negation-removal== 56495 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #26874: <==negation-removal== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32188: <==uncertain_firing== 63100 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40879: <==negation-removal== 63100 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #47823: <==uncertain_firing== 39942 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52845: <==uncertain_firing== 44781 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54776: <==negation-removal== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #56130: <==uncertain_firing== 56495 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #60727: <==uncertain_firing== 23872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62910: <==negation-removal== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #81679: <==negation-removal== 39942 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84057: <==negation-removal== 44781 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #88094: <==uncertain_firing== 14313 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #14313: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #23313: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #23872: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #39942: <==closure== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #44781: <==closure== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #56495: <==closure== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #59549: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #63100: <==closure== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #17117: <==uncertain_firing== 23313 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #20619: <==uncertain_firing== 59549 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #22319: <==negation-removal== 59549 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26797: <==negation-removal== 56495 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #26874: <==negation-removal== 23872 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32188: <==uncertain_firing== 63100 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #40879: <==negation-removal== 63100 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #47823: <==uncertain_firing== 39942 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52845: <==uncertain_firing== 44781 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54776: <==negation-removal== 23313 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #56130: <==uncertain_firing== 56495 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #60727: <==uncertain_firing== 23872 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #62910: <==negation-removal== 14313 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #81679: <==negation-removal== 39942 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84057: <==negation-removal== 44781 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #88094: <==uncertain_firing== 14313 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #19984: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #20967: <==closure== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #22807: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #50082: <==closure== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #54212: <==closure== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #74188: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #80215: <==closure== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82516: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #10312: <==negation-removal== 80215 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #11928: <==uncertain_firing== 82516 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #12169: <==negation-removal== 50082 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #12441: <==negation-removal== 54212 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15596: <==uncertain_firing== 20967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22769: <==uncertain_firing== 74188 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27894: <==uncertain_firing== 80215 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #35467: <==negation-removal== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #40856: <==uncertain_firing== 50082 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #51277: <==uncertain_firing== 54212 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63008: <==uncertain_firing== 22807 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71299: <==negation-removal== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71442: <==uncertain_firing== 19984 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86470: <==negation-removal== 20967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87533: <==negation-removal== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90931: <==negation-removal== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #19984: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #20967: <==closure== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #22807: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #50082: <==closure== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #54212: <==closure== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #74188: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #80215: <==closure== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82516: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #10312: <==negation-removal== 80215 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #11928: <==uncertain_firing== 82516 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #12169: <==negation-removal== 50082 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #12441: <==negation-removal== 54212 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15596: <==uncertain_firing== 20967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22769: <==uncertain_firing== 74188 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27894: <==uncertain_firing== 80215 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #35467: <==negation-removal== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #40856: <==uncertain_firing== 50082 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #51277: <==uncertain_firing== 54212 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63008: <==uncertain_firing== 22807 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71299: <==negation-removal== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71442: <==uncertain_firing== 19984 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86470: <==negation-removal== 20967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87533: <==negation-removal== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90931: <==negation-removal== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #19984: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #20967: <==closure== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #22807: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #50082: <==closure== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #54212: <==closure== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #74188: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #80215: <==closure== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82516: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #10312: <==negation-removal== 80215 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #11928: <==uncertain_firing== 82516 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #12169: <==negation-removal== 50082 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #12441: <==negation-removal== 54212 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15596: <==uncertain_firing== 20967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22769: <==uncertain_firing== 74188 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27894: <==uncertain_firing== 80215 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #35467: <==negation-removal== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #40856: <==uncertain_firing== 50082 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #51277: <==uncertain_firing== 54212 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63008: <==uncertain_firing== 22807 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71299: <==negation-removal== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71442: <==uncertain_firing== 19984 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86470: <==negation-removal== 20967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87533: <==negation-removal== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90931: <==negation-removal== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #19984: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #20967: <==closure== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #22807: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #50082: <==closure== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #54212: <==closure== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #74188: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #80215: <==closure== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #82516: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #10312: <==negation-removal== 80215 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #11928: <==uncertain_firing== 82516 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #12169: <==negation-removal== 50082 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #12441: <==negation-removal== 54212 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #15596: <==uncertain_firing== 20967 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #22769: <==uncertain_firing== 74188 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #27894: <==uncertain_firing== 80215 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #35467: <==negation-removal== 82516 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #40856: <==uncertain_firing== 50082 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #51277: <==uncertain_firing== 54212 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #63008: <==uncertain_firing== 22807 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71299: <==negation-removal== 22807 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #71442: <==uncertain_firing== 19984 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86470: <==negation-removal== 20967 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87533: <==negation-removal== 74188 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90931: <==negation-removal== 19984 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #22914: <==closure== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #26209: <==closure== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48741: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #56738: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #57800: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #58870: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #74566: <==closure== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #95733: <==closure== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #15795: <==uncertain_firing== 57800 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #18914: <==negation-removal== 22914 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19845: <==negation-removal== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #37583: <==negation-removal== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #38987: <==uncertain_firing== 48741 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39078: <==uncertain_firing== 22914 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #40775: <==negation-removal== 26209 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58583: <==negation-removal== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62646: <==negation-removal== 74566 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #63881: <==negation-removal== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #65295: <==uncertain_firing== 58870 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69310: <==uncertain_firing== 95733 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #69845: <==uncertain_firing== 26209 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73395: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79039: <==negation-removal== 95733 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #81667: <==uncertain_firing== 74566 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #22914: <==closure== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #26209: <==closure== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48741: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #56738: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #57800: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #58870: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #74566: <==closure== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #95733: <==closure== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #15795: <==uncertain_firing== 57800 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #18914: <==negation-removal== 22914 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19845: <==negation-removal== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #37583: <==negation-removal== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #38987: <==uncertain_firing== 48741 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39078: <==uncertain_firing== 22914 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #40775: <==negation-removal== 26209 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58583: <==negation-removal== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62646: <==negation-removal== 74566 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #63881: <==negation-removal== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #65295: <==uncertain_firing== 58870 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69310: <==uncertain_firing== 95733 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #69845: <==uncertain_firing== 26209 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73395: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79039: <==negation-removal== 95733 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #81667: <==uncertain_firing== 74566 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #22914: <==closure== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #26209: <==closure== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48741: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #56738: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #57800: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #58870: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #74566: <==closure== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #95733: <==closure== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #15795: <==uncertain_firing== 57800 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #18914: <==negation-removal== 22914 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19845: <==negation-removal== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #37583: <==negation-removal== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #38987: <==uncertain_firing== 48741 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39078: <==uncertain_firing== 22914 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #40775: <==negation-removal== 26209 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58583: <==negation-removal== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62646: <==negation-removal== 74566 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #63881: <==negation-removal== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #65295: <==uncertain_firing== 58870 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69310: <==uncertain_firing== 95733 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #69845: <==uncertain_firing== 26209 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73395: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79039: <==negation-removal== 95733 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #81667: <==uncertain_firing== 74566 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #22914: <==closure== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #26209: <==closure== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48741: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #56738: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #57800: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #58870: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #74566: <==closure== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #95733: <==closure== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #15795: <==uncertain_firing== 57800 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #18914: <==negation-removal== 22914 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #19845: <==negation-removal== 57800 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #37583: <==negation-removal== 48741 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #38987: <==uncertain_firing== 48741 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39078: <==uncertain_firing== 22914 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #40775: <==negation-removal== 26209 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58583: <==negation-removal== 56738 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #62646: <==negation-removal== 74566 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #63881: <==negation-removal== 58870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #65295: <==uncertain_firing== 58870 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #69310: <==uncertain_firing== 95733 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #69845: <==uncertain_firing== 26209 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73395: <==uncertain_firing== 56738 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79039: <==negation-removal== 95733 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #81667: <==uncertain_firing== 74566 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #27011: <==closure== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #27574: <==closure== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #33494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #37486: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #46058: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #88405: <==closure== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #89952: <==closure== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #90883: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #12798: <==negation-removal== 88405 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16028: <==uncertain_firing== 37486 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #21563: <==uncertain_firing== 27574 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #21896: <==uncertain_firing== 27011 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23888: <==negation-removal== 89952 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25964: <==negation-removal== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #28285: <==negation-removal== 27011 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45140: <==negation-removal== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48751: <==uncertain_firing== 90883 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60298: <==uncertain_firing== 46058 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #60566: <==uncertain_firing== 33494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #63347: <==uncertain_firing== 88405 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #82489: <==negation-removal== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82551: <==negation-removal== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #86574: <==uncertain_firing== 89952 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #87857: <==negation-removal== 27574 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #27011: <==closure== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #27574: <==closure== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #33494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #37486: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #46058: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #88405: <==closure== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #89952: <==closure== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #90883: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #12798: <==negation-removal== 88405 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16028: <==uncertain_firing== 37486 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #21563: <==uncertain_firing== 27574 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #21896: <==uncertain_firing== 27011 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23888: <==negation-removal== 89952 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25964: <==negation-removal== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #28285: <==negation-removal== 27011 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45140: <==negation-removal== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48751: <==uncertain_firing== 90883 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60298: <==uncertain_firing== 46058 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #60566: <==uncertain_firing== 33494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #63347: <==uncertain_firing== 88405 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #82489: <==negation-removal== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82551: <==negation-removal== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #86574: <==uncertain_firing== 89952 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #87857: <==negation-removal== 27574 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #27011: <==closure== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #27574: <==closure== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #33494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #37486: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #46058: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #88405: <==closure== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #89952: <==closure== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #90883: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #12798: <==negation-removal== 88405 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16028: <==uncertain_firing== 37486 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #21563: <==uncertain_firing== 27574 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #21896: <==uncertain_firing== 27011 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23888: <==negation-removal== 89952 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25964: <==negation-removal== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #28285: <==negation-removal== 27011 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45140: <==negation-removal== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48751: <==uncertain_firing== 90883 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60298: <==uncertain_firing== 46058 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #60566: <==uncertain_firing== 33494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #63347: <==uncertain_firing== 88405 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #82489: <==negation-removal== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82551: <==negation-removal== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #86574: <==uncertain_firing== 89952 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #87857: <==negation-removal== 27574 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #27011: <==closure== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #27574: <==closure== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #33494: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #37486: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #46058: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #88405: <==closure== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #89952: <==closure== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #90883: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #12798: <==negation-removal== 88405 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #16028: <==uncertain_firing== 37486 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #21563: <==uncertain_firing== 27574 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #21896: <==uncertain_firing== 27011 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23888: <==negation-removal== 89952 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25964: <==negation-removal== 46058 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #28285: <==negation-removal== 27011 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45140: <==negation-removal== 90883 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #48751: <==uncertain_firing== 90883 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #60298: <==uncertain_firing== 46058 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #60566: <==uncertain_firing== 33494 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #63347: <==uncertain_firing== 88405 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #82489: <==negation-removal== 33494 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82551: <==negation-removal== 37486 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #86574: <==uncertain_firing== 89952 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #87857: <==negation-removal== 27574 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #25449: <==closure== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #29048: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #41433: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #41878: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #44236: <==closure== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #65990: <==closure== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #82915: <==closure== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88570: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11641: <==uncertain_firing== 65990 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15919: <==negation-removal== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #17318: <==negation-removal== 82915 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21880: <==negation-removal== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22526: <==negation-removal== 65990 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23286: <==uncertain_firing== 41433 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27932: <==negation-removal== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #28381: <==negation-removal== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33616: <==uncertain_firing== 44236 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36163: <==negation-removal== 25449 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58324: <==uncertain_firing== 88570 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60882: <==uncertain_firing== 25449 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #63867: <==uncertain_firing== 41878 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64812: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #77201: <==uncertain_firing== 82915 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77926: <==negation-removal== 44236 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #25449: <==closure== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #29048: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #41433: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #41878: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #44236: <==closure== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #65990: <==closure== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #82915: <==closure== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88570: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11641: <==uncertain_firing== 65990 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15919: <==negation-removal== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #17318: <==negation-removal== 82915 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21880: <==negation-removal== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22526: <==negation-removal== 65990 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23286: <==uncertain_firing== 41433 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27932: <==negation-removal== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #28381: <==negation-removal== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33616: <==uncertain_firing== 44236 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36163: <==negation-removal== 25449 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58324: <==uncertain_firing== 88570 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60882: <==uncertain_firing== 25449 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #63867: <==uncertain_firing== 41878 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64812: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #77201: <==uncertain_firing== 82915 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77926: <==negation-removal== 44236 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #25449: <==closure== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #29048: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #41433: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #41878: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #44236: <==closure== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #65990: <==closure== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #82915: <==closure== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88570: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11641: <==uncertain_firing== 65990 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15919: <==negation-removal== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #17318: <==negation-removal== 82915 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21880: <==negation-removal== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22526: <==negation-removal== 65990 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23286: <==uncertain_firing== 41433 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27932: <==negation-removal== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #28381: <==negation-removal== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33616: <==uncertain_firing== 44236 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36163: <==negation-removal== 25449 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58324: <==uncertain_firing== 88570 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60882: <==uncertain_firing== 25449 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #63867: <==uncertain_firing== 41878 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64812: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #77201: <==uncertain_firing== 82915 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77926: <==negation-removal== 44236 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #25449: <==closure== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #29048: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #41433: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #41878: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #44236: <==closure== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #65990: <==closure== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #82915: <==closure== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #88570: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #11641: <==uncertain_firing== 65990 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #15919: <==negation-removal== 41433 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #17318: <==negation-removal== 82915 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #21880: <==negation-removal== 41878 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22526: <==negation-removal== 65990 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #23286: <==uncertain_firing== 41433 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27932: <==negation-removal== 29048 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #28381: <==negation-removal== 88570 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33616: <==uncertain_firing== 44236 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #36163: <==negation-removal== 25449 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #58324: <==uncertain_firing== 88570 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60882: <==uncertain_firing== 25449 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #63867: <==uncertain_firing== 41878 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64812: <==uncertain_firing== 29048 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #77201: <==uncertain_firing== 82915 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77926: <==negation-removal== 44236 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #11204: <==closure== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #12443: <==closure== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #19576: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #21009: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #29083: <==closure== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #75940: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #76962: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #79097: <==closure== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #12746: <==negation-removal== 79097 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #19033: <==negation-removal== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31539: <==uncertain_firing== 79097 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #32112: <==negation-removal== 29083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38199: <==uncertain_firing== 11204 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #46761: <==negation-removal== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #47491: <==negation-removal== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53900: <==uncertain_firing== 29083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53937: <==uncertain_firing== 75940 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #57632: <==negation-removal== 11204 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57928: <==uncertain_firing== 21009 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65257: <==uncertain_firing== 12443 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66756: <==negation-removal== 12443 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #78963: <==uncertain_firing== 19576 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #79466: <==uncertain_firing== 76962 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80810: <==negation-removal== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #11204: <==closure== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #12443: <==closure== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #19576: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #21009: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #29083: <==closure== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #75940: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #76962: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #79097: <==closure== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #12746: <==negation-removal== 79097 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #19033: <==negation-removal== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31539: <==uncertain_firing== 79097 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #32112: <==negation-removal== 29083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38199: <==uncertain_firing== 11204 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #46761: <==negation-removal== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #47491: <==negation-removal== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53900: <==uncertain_firing== 29083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53937: <==uncertain_firing== 75940 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #57632: <==negation-removal== 11204 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57928: <==uncertain_firing== 21009 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65257: <==uncertain_firing== 12443 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66756: <==negation-removal== 12443 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #78963: <==uncertain_firing== 19576 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #79466: <==uncertain_firing== 76962 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80810: <==negation-removal== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #11204: <==closure== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #12443: <==closure== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #19576: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #21009: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #29083: <==closure== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #75940: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #76962: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #79097: <==closure== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #12746: <==negation-removal== 79097 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #19033: <==negation-removal== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31539: <==uncertain_firing== 79097 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #32112: <==negation-removal== 29083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38199: <==uncertain_firing== 11204 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #46761: <==negation-removal== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #47491: <==negation-removal== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53900: <==uncertain_firing== 29083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53937: <==uncertain_firing== 75940 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #57632: <==negation-removal== 11204 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57928: <==uncertain_firing== 21009 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65257: <==uncertain_firing== 12443 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66756: <==negation-removal== 12443 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #78963: <==uncertain_firing== 19576 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #79466: <==uncertain_firing== 76962 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80810: <==negation-removal== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #11204: <==closure== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #12443: <==closure== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #19576: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #21009: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #29083: <==closure== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #75940: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #76962: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #79097: <==closure== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #12746: <==negation-removal== 79097 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #19033: <==negation-removal== 19576 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #31539: <==uncertain_firing== 79097 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #32112: <==negation-removal== 29083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38199: <==uncertain_firing== 11204 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #46761: <==negation-removal== 76962 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #47491: <==negation-removal== 21009 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53900: <==uncertain_firing== 29083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #53937: <==uncertain_firing== 75940 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #57632: <==negation-removal== 11204 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #57928: <==uncertain_firing== 21009 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #65257: <==uncertain_firing== 12443 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #66756: <==negation-removal== 12443 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #78963: <==uncertain_firing== 19576 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #79466: <==uncertain_firing== 76962 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #80810: <==negation-removal== 75940 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19799: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29235: <==closure== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #57399: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60375: <==closure== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65726: <==closure== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #70026: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #77356: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92055: <==closure== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #12061: <==negation-removal== 29235 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #15202: <==uncertain_firing== 92055 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #21214: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21252: <==uncertain_firing== 60375 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29263: <==negation-removal== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #36261: <==uncertain_firing== 29235 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48008: <==uncertain_firing== 70026 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48730: <==uncertain_firing== 57399 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #51033: <==negation-removal== 65726 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55563: <==negation-removal== 92055 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #60193: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62545: <==negation-removal== 60375 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #67741: <==uncertain_firing== 19799 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73155: <==negation-removal== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75280: <==uncertain_firing== 65726 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88098: <==negation-removal== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #19799: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29235: <==closure== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #57399: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60375: <==closure== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65726: <==closure== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #70026: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #77356: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92055: <==closure== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #12061: <==negation-removal== 29235 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #15202: <==uncertain_firing== 92055 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #21214: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21252: <==uncertain_firing== 60375 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29263: <==negation-removal== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #36261: <==uncertain_firing== 29235 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48008: <==uncertain_firing== 70026 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48730: <==uncertain_firing== 57399 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #51033: <==negation-removal== 65726 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55563: <==negation-removal== 92055 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #60193: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62545: <==negation-removal== 60375 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #67741: <==uncertain_firing== 19799 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73155: <==negation-removal== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75280: <==uncertain_firing== 65726 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88098: <==negation-removal== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #19799: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29235: <==closure== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #57399: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60375: <==closure== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65726: <==closure== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #70026: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #77356: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92055: <==closure== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #12061: <==negation-removal== 29235 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #15202: <==uncertain_firing== 92055 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #21214: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21252: <==uncertain_firing== 60375 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29263: <==negation-removal== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #36261: <==uncertain_firing== 29235 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48008: <==uncertain_firing== 70026 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48730: <==uncertain_firing== 57399 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #51033: <==negation-removal== 65726 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55563: <==negation-removal== 92055 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #60193: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62545: <==negation-removal== 60375 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #67741: <==uncertain_firing== 19799 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73155: <==negation-removal== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75280: <==uncertain_firing== 65726 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88098: <==negation-removal== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #19799: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29235: <==closure== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #57399: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #60375: <==closure== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #65726: <==closure== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #70026: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #77356: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92055: <==closure== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #12061: <==negation-removal== 29235 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #15202: <==uncertain_firing== 92055 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #21214: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #21252: <==uncertain_firing== 60375 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #29263: <==negation-removal== 70026 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #36261: <==uncertain_firing== 29235 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48008: <==uncertain_firing== 70026 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #48730: <==uncertain_firing== 57399 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #51033: <==negation-removal== 65726 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55563: <==negation-removal== 92055 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #60193: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62545: <==negation-removal== 60375 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #67741: <==uncertain_firing== 19799 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #73155: <==negation-removal== 57399 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75280: <==uncertain_firing== 65726 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88098: <==negation-removal== 19799 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15372: <==closure== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #17440: <==closure== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #20592: <==closure== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #22334: <==closure== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #46229: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58136: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #70823: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77563: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #14133: <==negation-removal== 22334 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16083: <==negation-removal== 15372 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #19725: <==uncertain_firing== 70823 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #20555: <==negation-removal== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #22265: <==uncertain_firing== 77563 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #33614: <==negation-removal== 20592 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34801: <==uncertain_firing== 20592 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39840: <==negation-removal== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54815: <==uncertain_firing== 58136 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57762: <==uncertain_firing== 46229 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69686: <==uncertain_firing== 15372 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69730: <==uncertain_firing== 17440 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70493: <==negation-removal== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #81009: <==negation-removal== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86256: <==negation-removal== 17440 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88398: <==uncertain_firing== 22334 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #15372: <==closure== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #17440: <==closure== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #20592: <==closure== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #22334: <==closure== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #46229: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58136: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #70823: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77563: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #14133: <==negation-removal== 22334 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16083: <==negation-removal== 15372 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #19725: <==uncertain_firing== 70823 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #20555: <==negation-removal== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #22265: <==uncertain_firing== 77563 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #33614: <==negation-removal== 20592 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34801: <==uncertain_firing== 20592 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39840: <==negation-removal== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54815: <==uncertain_firing== 58136 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57762: <==uncertain_firing== 46229 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69686: <==uncertain_firing== 15372 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69730: <==uncertain_firing== 17440 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70493: <==negation-removal== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #81009: <==negation-removal== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86256: <==negation-removal== 17440 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88398: <==uncertain_firing== 22334 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #15372: <==closure== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #17440: <==closure== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #20592: <==closure== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #22334: <==closure== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #46229: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58136: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #70823: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77563: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #14133: <==negation-removal== 22334 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16083: <==negation-removal== 15372 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #19725: <==uncertain_firing== 70823 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #20555: <==negation-removal== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #22265: <==uncertain_firing== 77563 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #33614: <==negation-removal== 20592 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34801: <==uncertain_firing== 20592 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39840: <==negation-removal== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54815: <==uncertain_firing== 58136 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57762: <==uncertain_firing== 46229 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69686: <==uncertain_firing== 15372 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69730: <==uncertain_firing== 17440 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70493: <==negation-removal== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #81009: <==negation-removal== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86256: <==negation-removal== 17440 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88398: <==uncertain_firing== 22334 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #15372: <==closure== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #17440: <==closure== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #20592: <==closure== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #22334: <==closure== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #46229: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #58136: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #70823: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #77563: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #14133: <==negation-removal== 22334 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16083: <==negation-removal== 15372 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #19725: <==uncertain_firing== 70823 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #20555: <==negation-removal== 77563 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #22265: <==uncertain_firing== 77563 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #33614: <==negation-removal== 20592 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34801: <==uncertain_firing== 20592 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39840: <==negation-removal== 70823 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54815: <==uncertain_firing== 58136 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #57762: <==uncertain_firing== 46229 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69686: <==uncertain_firing== 15372 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69730: <==uncertain_firing== 17440 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #70493: <==negation-removal== 58136 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #81009: <==negation-removal== 46229 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86256: <==negation-removal== 17440 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88398: <==uncertain_firing== 22334 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #14322: <==closure== 16775 (pos)
                    (Pd_survivorat_s_p10)

                    ; #15668: <==closure== 90659 (pos)
                    (Pc_survivorat_s_p10)

                    ; #16775: origin
                    (Bd_survivorat_s_p10)

                    ; #18663: <==closure== 89444 (pos)
                    (Pb_survivorat_s_p10)

                    ; #27048: origin
                    (Ba_survivorat_s_p10)

                    ; #60691: <==closure== 27048 (pos)
                    (Pa_survivorat_s_p10)

                    ; #89444: origin
                    (Bb_survivorat_s_p10)

                    ; #90659: origin
                    (Bc_survivorat_s_p10)

                    ; #13889: <==negation-removal== 89444 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #34233: <==negation-removal== 60691 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42240: <==negation-removal== 27048 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #52037: <==negation-removal== 16775 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #65231: <==negation-removal== 18663 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67122: <==negation-removal== 14322 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #83128: <==negation-removal== 15668 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88098: <==negation-removal== 90659 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #14322: <==closure== 16775 (pos)
                    (Pd_survivorat_s_p10)

                    ; #15668: <==closure== 90659 (pos)
                    (Pc_survivorat_s_p10)

                    ; #16775: origin
                    (Bd_survivorat_s_p10)

                    ; #18663: <==closure== 89444 (pos)
                    (Pb_survivorat_s_p10)

                    ; #27048: origin
                    (Ba_survivorat_s_p10)

                    ; #60691: <==closure== 27048 (pos)
                    (Pa_survivorat_s_p10)

                    ; #89444: origin
                    (Bb_survivorat_s_p10)

                    ; #90659: origin
                    (Bc_survivorat_s_p10)

                    ; #13889: <==negation-removal== 89444 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #34233: <==negation-removal== 60691 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42240: <==negation-removal== 27048 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #52037: <==negation-removal== 16775 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #65231: <==negation-removal== 18663 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67122: <==negation-removal== 14322 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #83128: <==negation-removal== 15668 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88098: <==negation-removal== 90659 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #14322: <==closure== 16775 (pos)
                    (Pd_survivorat_s_p10)

                    ; #15668: <==closure== 90659 (pos)
                    (Pc_survivorat_s_p10)

                    ; #16775: origin
                    (Bd_survivorat_s_p10)

                    ; #18663: <==closure== 89444 (pos)
                    (Pb_survivorat_s_p10)

                    ; #27048: origin
                    (Ba_survivorat_s_p10)

                    ; #60691: <==closure== 27048 (pos)
                    (Pa_survivorat_s_p10)

                    ; #89444: origin
                    (Bb_survivorat_s_p10)

                    ; #90659: origin
                    (Bc_survivorat_s_p10)

                    ; #13889: <==negation-removal== 89444 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #34233: <==negation-removal== 60691 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42240: <==negation-removal== 27048 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #52037: <==negation-removal== 16775 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #65231: <==negation-removal== 18663 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67122: <==negation-removal== 14322 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #83128: <==negation-removal== 15668 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88098: <==negation-removal== 90659 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #14322: <==closure== 16775 (pos)
                    (Pd_survivorat_s_p10)

                    ; #15668: <==closure== 90659 (pos)
                    (Pc_survivorat_s_p10)

                    ; #16775: origin
                    (Bd_survivorat_s_p10)

                    ; #18663: <==closure== 89444 (pos)
                    (Pb_survivorat_s_p10)

                    ; #27048: origin
                    (Ba_survivorat_s_p10)

                    ; #60691: <==closure== 27048 (pos)
                    (Pa_survivorat_s_p10)

                    ; #89444: origin
                    (Bb_survivorat_s_p10)

                    ; #90659: origin
                    (Bc_survivorat_s_p10)

                    ; #13889: <==negation-removal== 89444 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #34233: <==negation-removal== 60691 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42240: <==negation-removal== 27048 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #52037: <==negation-removal== 16775 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #65231: <==negation-removal== 18663 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #67122: <==negation-removal== 14322 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #83128: <==negation-removal== 15668 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88098: <==negation-removal== 90659 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #19694: <==closure== 37496 (pos)
                    (Pd_survivorat_s_p11)

                    ; #19782: origin
                    (Bc_survivorat_s_p11)

                    ; #35492: <==closure== 19782 (pos)
                    (Pc_survivorat_s_p11)

                    ; #35964: origin
                    (Bb_survivorat_s_p11)

                    ; #37496: origin
                    (Bd_survivorat_s_p11)

                    ; #49512: <==closure== 49623 (pos)
                    (Pa_survivorat_s_p11)

                    ; #49623: origin
                    (Ba_survivorat_s_p11)

                    ; #66746: <==closure== 35964 (pos)
                    (Pb_survivorat_s_p11)

                    ; #24409: <==negation-removal== 35492 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #25205: <==negation-removal== 66746 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29069: <==negation-removal== 35964 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39303: <==negation-removal== 19694 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #72475: <==negation-removal== 19782 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73089: <==negation-removal== 37496 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #76954: <==negation-removal== 49512 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84911: <==negation-removal== 49623 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #19694: <==closure== 37496 (pos)
                    (Pd_survivorat_s_p11)

                    ; #19782: origin
                    (Bc_survivorat_s_p11)

                    ; #35492: <==closure== 19782 (pos)
                    (Pc_survivorat_s_p11)

                    ; #35964: origin
                    (Bb_survivorat_s_p11)

                    ; #37496: origin
                    (Bd_survivorat_s_p11)

                    ; #49512: <==closure== 49623 (pos)
                    (Pa_survivorat_s_p11)

                    ; #49623: origin
                    (Ba_survivorat_s_p11)

                    ; #66746: <==closure== 35964 (pos)
                    (Pb_survivorat_s_p11)

                    ; #24409: <==negation-removal== 35492 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #25205: <==negation-removal== 66746 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29069: <==negation-removal== 35964 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39303: <==negation-removal== 19694 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #72475: <==negation-removal== 19782 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73089: <==negation-removal== 37496 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #76954: <==negation-removal== 49512 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84911: <==negation-removal== 49623 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #19694: <==closure== 37496 (pos)
                    (Pd_survivorat_s_p11)

                    ; #19782: origin
                    (Bc_survivorat_s_p11)

                    ; #35492: <==closure== 19782 (pos)
                    (Pc_survivorat_s_p11)

                    ; #35964: origin
                    (Bb_survivorat_s_p11)

                    ; #37496: origin
                    (Bd_survivorat_s_p11)

                    ; #49512: <==closure== 49623 (pos)
                    (Pa_survivorat_s_p11)

                    ; #49623: origin
                    (Ba_survivorat_s_p11)

                    ; #66746: <==closure== 35964 (pos)
                    (Pb_survivorat_s_p11)

                    ; #24409: <==negation-removal== 35492 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #25205: <==negation-removal== 66746 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29069: <==negation-removal== 35964 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39303: <==negation-removal== 19694 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #72475: <==negation-removal== 19782 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73089: <==negation-removal== 37496 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #76954: <==negation-removal== 49512 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84911: <==negation-removal== 49623 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #19694: <==closure== 37496 (pos)
                    (Pd_survivorat_s_p11)

                    ; #19782: origin
                    (Bc_survivorat_s_p11)

                    ; #35492: <==closure== 19782 (pos)
                    (Pc_survivorat_s_p11)

                    ; #35964: origin
                    (Bb_survivorat_s_p11)

                    ; #37496: origin
                    (Bd_survivorat_s_p11)

                    ; #49512: <==closure== 49623 (pos)
                    (Pa_survivorat_s_p11)

                    ; #49623: origin
                    (Ba_survivorat_s_p11)

                    ; #66746: <==closure== 35964 (pos)
                    (Pb_survivorat_s_p11)

                    ; #24409: <==negation-removal== 35492 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #25205: <==negation-removal== 66746 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #29069: <==negation-removal== 35964 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39303: <==negation-removal== 19694 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #72475: <==negation-removal== 19782 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #73089: <==negation-removal== 37496 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #76954: <==negation-removal== 49512 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #84911: <==negation-removal== 49623 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (at_a_p12)
                           (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #11162: origin
                    (Bc_survivorat_s_p12)

                    ; #21871: <==closure== 27425 (pos)
                    (Pb_survivorat_s_p12)

                    ; #27425: origin
                    (Bb_survivorat_s_p12)

                    ; #38646: <==closure== 80770 (pos)
                    (Pa_survivorat_s_p12)

                    ; #59979: <==closure== 11162 (pos)
                    (Pc_survivorat_s_p12)

                    ; #69929: origin
                    (Bd_survivorat_s_p12)

                    ; #72055: <==closure== 69929 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80770: origin
                    (Ba_survivorat_s_p12)

                    ; #10607: <==negation-removal== 27425 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #19747: <==negation-removal== 72055 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #42784: <==negation-removal== 21871 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #74531: <==negation-removal== 80770 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #77053: <==negation-removal== 69929 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #78864: <==negation-removal== 59979 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83526: <==negation-removal== 38646 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #93089: <==negation-removal== 11162 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #11162: origin
                    (Bc_survivorat_s_p12)

                    ; #21871: <==closure== 27425 (pos)
                    (Pb_survivorat_s_p12)

                    ; #27425: origin
                    (Bb_survivorat_s_p12)

                    ; #38646: <==closure== 80770 (pos)
                    (Pa_survivorat_s_p12)

                    ; #59979: <==closure== 11162 (pos)
                    (Pc_survivorat_s_p12)

                    ; #69929: origin
                    (Bd_survivorat_s_p12)

                    ; #72055: <==closure== 69929 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80770: origin
                    (Ba_survivorat_s_p12)

                    ; #10607: <==negation-removal== 27425 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #19747: <==negation-removal== 72055 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #42784: <==negation-removal== 21871 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #74531: <==negation-removal== 80770 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #77053: <==negation-removal== 69929 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #78864: <==negation-removal== 59979 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83526: <==negation-removal== 38646 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #93089: <==negation-removal== 11162 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #11162: origin
                    (Bc_survivorat_s_p12)

                    ; #21871: <==closure== 27425 (pos)
                    (Pb_survivorat_s_p12)

                    ; #27425: origin
                    (Bb_survivorat_s_p12)

                    ; #38646: <==closure== 80770 (pos)
                    (Pa_survivorat_s_p12)

                    ; #59979: <==closure== 11162 (pos)
                    (Pc_survivorat_s_p12)

                    ; #69929: origin
                    (Bd_survivorat_s_p12)

                    ; #72055: <==closure== 69929 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80770: origin
                    (Ba_survivorat_s_p12)

                    ; #10607: <==negation-removal== 27425 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #19747: <==negation-removal== 72055 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #42784: <==negation-removal== 21871 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #74531: <==negation-removal== 80770 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #77053: <==negation-removal== 69929 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #78864: <==negation-removal== 59979 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83526: <==negation-removal== 38646 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #93089: <==negation-removal== 11162 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #11162: origin
                    (Bc_survivorat_s_p12)

                    ; #21871: <==closure== 27425 (pos)
                    (Pb_survivorat_s_p12)

                    ; #27425: origin
                    (Bb_survivorat_s_p12)

                    ; #38646: <==closure== 80770 (pos)
                    (Pa_survivorat_s_p12)

                    ; #59979: <==closure== 11162 (pos)
                    (Pc_survivorat_s_p12)

                    ; #69929: origin
                    (Bd_survivorat_s_p12)

                    ; #72055: <==closure== 69929 (pos)
                    (Pd_survivorat_s_p12)

                    ; #80770: origin
                    (Ba_survivorat_s_p12)

                    ; #10607: <==negation-removal== 27425 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #19747: <==negation-removal== 72055 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #42784: <==negation-removal== 21871 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #74531: <==negation-removal== 80770 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #77053: <==negation-removal== 69929 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #78864: <==negation-removal== 59979 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83526: <==negation-removal== 38646 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #93089: <==negation-removal== 11162 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #10160: <==closure== 19766 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19766: origin
                    (Bb_survivorat_s_p1)

                    ; #43441: origin
                    (Bd_survivorat_s_p1)

                    ; #66676: origin
                    (Bc_survivorat_s_p1)

                    ; #75682: <==closure== 43441 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84125: <==closure== 66676 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84595: <==closure== 92527 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92527: origin
                    (Ba_survivorat_s_p1)

                    ; #11778: <==negation-removal== 84125 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28870: <==negation-removal== 84595 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30974: <==negation-removal== 66676 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59525: <==negation-removal== 19766 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60052: <==negation-removal== 43441 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #67565: <==negation-removal== 10160 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76920: <==negation-removal== 92527 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #83327: <==negation-removal== 75682 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #10160: <==closure== 19766 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19766: origin
                    (Bb_survivorat_s_p1)

                    ; #43441: origin
                    (Bd_survivorat_s_p1)

                    ; #66676: origin
                    (Bc_survivorat_s_p1)

                    ; #75682: <==closure== 43441 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84125: <==closure== 66676 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84595: <==closure== 92527 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92527: origin
                    (Ba_survivorat_s_p1)

                    ; #11778: <==negation-removal== 84125 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28870: <==negation-removal== 84595 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30974: <==negation-removal== 66676 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59525: <==negation-removal== 19766 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60052: <==negation-removal== 43441 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #67565: <==negation-removal== 10160 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76920: <==negation-removal== 92527 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #83327: <==negation-removal== 75682 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10160: <==closure== 19766 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19766: origin
                    (Bb_survivorat_s_p1)

                    ; #43441: origin
                    (Bd_survivorat_s_p1)

                    ; #66676: origin
                    (Bc_survivorat_s_p1)

                    ; #75682: <==closure== 43441 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84125: <==closure== 66676 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84595: <==closure== 92527 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92527: origin
                    (Ba_survivorat_s_p1)

                    ; #11778: <==negation-removal== 84125 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28870: <==negation-removal== 84595 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30974: <==negation-removal== 66676 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59525: <==negation-removal== 19766 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60052: <==negation-removal== 43441 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #67565: <==negation-removal== 10160 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76920: <==negation-removal== 92527 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #83327: <==negation-removal== 75682 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #10160: <==closure== 19766 (pos)
                    (Pb_survivorat_s_p1)

                    ; #19766: origin
                    (Bb_survivorat_s_p1)

                    ; #43441: origin
                    (Bd_survivorat_s_p1)

                    ; #66676: origin
                    (Bc_survivorat_s_p1)

                    ; #75682: <==closure== 43441 (pos)
                    (Pd_survivorat_s_p1)

                    ; #84125: <==closure== 66676 (pos)
                    (Pc_survivorat_s_p1)

                    ; #84595: <==closure== 92527 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92527: origin
                    (Ba_survivorat_s_p1)

                    ; #11778: <==negation-removal== 84125 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #28870: <==negation-removal== 84595 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #30974: <==negation-removal== 66676 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #59525: <==negation-removal== 19766 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #60052: <==negation-removal== 43441 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #67565: <==negation-removal== 10160 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76920: <==negation-removal== 92527 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #83327: <==negation-removal== 75682 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #13380: <==closure== 50021 (pos)
                    (Pd_survivorat_s_p2)

                    ; #17230: <==closure== 61190 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35327: <==closure== 53901 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50021: origin
                    (Bd_survivorat_s_p2)

                    ; #53901: origin
                    (Bb_survivorat_s_p2)

                    ; #61190: origin
                    (Ba_survivorat_s_p2)

                    ; #75316: origin
                    (Bc_survivorat_s_p2)

                    ; #95523: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18163: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #39587: <==negation-removal== 17230 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41696: <==negation-removal== 61190 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #53416: <==negation-removal== 13380 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #60521: <==negation-removal== 50021 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #62199: <==negation-removal== 35327 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #77197: <==negation-removal== 95523 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81247: <==negation-removal== 53901 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #13380: <==closure== 50021 (pos)
                    (Pd_survivorat_s_p2)

                    ; #17230: <==closure== 61190 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35327: <==closure== 53901 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50021: origin
                    (Bd_survivorat_s_p2)

                    ; #53901: origin
                    (Bb_survivorat_s_p2)

                    ; #61190: origin
                    (Ba_survivorat_s_p2)

                    ; #75316: origin
                    (Bc_survivorat_s_p2)

                    ; #95523: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18163: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #39587: <==negation-removal== 17230 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41696: <==negation-removal== 61190 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #53416: <==negation-removal== 13380 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #60521: <==negation-removal== 50021 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #62199: <==negation-removal== 35327 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #77197: <==negation-removal== 95523 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81247: <==negation-removal== 53901 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #13380: <==closure== 50021 (pos)
                    (Pd_survivorat_s_p2)

                    ; #17230: <==closure== 61190 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35327: <==closure== 53901 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50021: origin
                    (Bd_survivorat_s_p2)

                    ; #53901: origin
                    (Bb_survivorat_s_p2)

                    ; #61190: origin
                    (Ba_survivorat_s_p2)

                    ; #75316: origin
                    (Bc_survivorat_s_p2)

                    ; #95523: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18163: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #39587: <==negation-removal== 17230 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41696: <==negation-removal== 61190 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #53416: <==negation-removal== 13380 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #60521: <==negation-removal== 50021 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #62199: <==negation-removal== 35327 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #77197: <==negation-removal== 95523 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81247: <==negation-removal== 53901 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (at_d_p2))
        :effect (and
                    ; #13380: <==closure== 50021 (pos)
                    (Pd_survivorat_s_p2)

                    ; #17230: <==closure== 61190 (pos)
                    (Pa_survivorat_s_p2)

                    ; #35327: <==closure== 53901 (pos)
                    (Pb_survivorat_s_p2)

                    ; #50021: origin
                    (Bd_survivorat_s_p2)

                    ; #53901: origin
                    (Bb_survivorat_s_p2)

                    ; #61190: origin
                    (Ba_survivorat_s_p2)

                    ; #75316: origin
                    (Bc_survivorat_s_p2)

                    ; #95523: <==closure== 75316 (pos)
                    (Pc_survivorat_s_p2)

                    ; #18163: <==negation-removal== 75316 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #39587: <==negation-removal== 17230 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #41696: <==negation-removal== 61190 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #53416: <==negation-removal== 13380 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #60521: <==negation-removal== 50021 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #62199: <==negation-removal== 35327 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #77197: <==negation-removal== 95523 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #81247: <==negation-removal== 53901 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #14431: <==closure== 34982 (pos)
                    (Pa_survivorat_s_p3)

                    ; #24268: origin
                    (Bd_survivorat_s_p3)

                    ; #27381: origin
                    (Bc_survivorat_s_p3)

                    ; #34982: origin
                    (Ba_survivorat_s_p3)

                    ; #46678: origin
                    (Bb_survivorat_s_p3)

                    ; #63453: <==closure== 27381 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82956: <==closure== 24268 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89079: <==closure== 46678 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16615: <==negation-removal== 46678 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31319: <==negation-removal== 34982 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37524: <==negation-removal== 27381 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #44337: <==negation-removal== 14431 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66492: <==negation-removal== 82956 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #70010: <==negation-removal== 63453 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71234: <==negation-removal== 24268 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #75379: <==negation-removal== 89079 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #14431: <==closure== 34982 (pos)
                    (Pa_survivorat_s_p3)

                    ; #24268: origin
                    (Bd_survivorat_s_p3)

                    ; #27381: origin
                    (Bc_survivorat_s_p3)

                    ; #34982: origin
                    (Ba_survivorat_s_p3)

                    ; #46678: origin
                    (Bb_survivorat_s_p3)

                    ; #63453: <==closure== 27381 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82956: <==closure== 24268 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89079: <==closure== 46678 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16615: <==negation-removal== 46678 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31319: <==negation-removal== 34982 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37524: <==negation-removal== 27381 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #44337: <==negation-removal== 14431 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66492: <==negation-removal== 82956 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #70010: <==negation-removal== 63453 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71234: <==negation-removal== 24268 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #75379: <==negation-removal== 89079 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #14431: <==closure== 34982 (pos)
                    (Pa_survivorat_s_p3)

                    ; #24268: origin
                    (Bd_survivorat_s_p3)

                    ; #27381: origin
                    (Bc_survivorat_s_p3)

                    ; #34982: origin
                    (Ba_survivorat_s_p3)

                    ; #46678: origin
                    (Bb_survivorat_s_p3)

                    ; #63453: <==closure== 27381 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82956: <==closure== 24268 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89079: <==closure== 46678 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16615: <==negation-removal== 46678 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31319: <==negation-removal== 34982 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37524: <==negation-removal== 27381 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #44337: <==negation-removal== 14431 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66492: <==negation-removal== 82956 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #70010: <==negation-removal== 63453 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71234: <==negation-removal== 24268 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #75379: <==negation-removal== 89079 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #14431: <==closure== 34982 (pos)
                    (Pa_survivorat_s_p3)

                    ; #24268: origin
                    (Bd_survivorat_s_p3)

                    ; #27381: origin
                    (Bc_survivorat_s_p3)

                    ; #34982: origin
                    (Ba_survivorat_s_p3)

                    ; #46678: origin
                    (Bb_survivorat_s_p3)

                    ; #63453: <==closure== 27381 (pos)
                    (Pc_survivorat_s_p3)

                    ; #82956: <==closure== 24268 (pos)
                    (Pd_survivorat_s_p3)

                    ; #89079: <==closure== 46678 (pos)
                    (Pb_survivorat_s_p3)

                    ; #16615: <==negation-removal== 46678 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #31319: <==negation-removal== 34982 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37524: <==negation-removal== 27381 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #44337: <==negation-removal== 14431 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #66492: <==negation-removal== 82956 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #70010: <==negation-removal== 63453 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #71234: <==negation-removal== 24268 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #75379: <==negation-removal== 89079 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #22163: <==closure== 45442 (pos)
                    (Pc_survivorat_s_p4)

                    ; #22553: <==closure== 51152 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45442: origin
                    (Bc_survivorat_s_p4)

                    ; #51152: origin
                    (Ba_survivorat_s_p4)

                    ; #54948: origin
                    (Bd_survivorat_s_p4)

                    ; #55878: origin
                    (Bb_survivorat_s_p4)

                    ; #59559: <==closure== 54948 (pos)
                    (Pd_survivorat_s_p4)

                    ; #90177: <==closure== 55878 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14573: <==negation-removal== 51152 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20635: <==negation-removal== 45442 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 59559 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #24814: <==negation-removal== 90177 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #59144: <==negation-removal== 22553 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67307: <==negation-removal== 54948 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #73688: <==negation-removal== 22163 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #90166: <==negation-removal== 55878 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #22163: <==closure== 45442 (pos)
                    (Pc_survivorat_s_p4)

                    ; #22553: <==closure== 51152 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45442: origin
                    (Bc_survivorat_s_p4)

                    ; #51152: origin
                    (Ba_survivorat_s_p4)

                    ; #54948: origin
                    (Bd_survivorat_s_p4)

                    ; #55878: origin
                    (Bb_survivorat_s_p4)

                    ; #59559: <==closure== 54948 (pos)
                    (Pd_survivorat_s_p4)

                    ; #90177: <==closure== 55878 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14573: <==negation-removal== 51152 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20635: <==negation-removal== 45442 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 59559 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #24814: <==negation-removal== 90177 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #59144: <==negation-removal== 22553 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67307: <==negation-removal== 54948 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #73688: <==negation-removal== 22163 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #90166: <==negation-removal== 55878 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #22163: <==closure== 45442 (pos)
                    (Pc_survivorat_s_p4)

                    ; #22553: <==closure== 51152 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45442: origin
                    (Bc_survivorat_s_p4)

                    ; #51152: origin
                    (Ba_survivorat_s_p4)

                    ; #54948: origin
                    (Bd_survivorat_s_p4)

                    ; #55878: origin
                    (Bb_survivorat_s_p4)

                    ; #59559: <==closure== 54948 (pos)
                    (Pd_survivorat_s_p4)

                    ; #90177: <==closure== 55878 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14573: <==negation-removal== 51152 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20635: <==negation-removal== 45442 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 59559 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #24814: <==negation-removal== 90177 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #59144: <==negation-removal== 22553 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67307: <==negation-removal== 54948 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #73688: <==negation-removal== 22163 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #90166: <==negation-removal== 55878 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #22163: <==closure== 45442 (pos)
                    (Pc_survivorat_s_p4)

                    ; #22553: <==closure== 51152 (pos)
                    (Pa_survivorat_s_p4)

                    ; #45442: origin
                    (Bc_survivorat_s_p4)

                    ; #51152: origin
                    (Ba_survivorat_s_p4)

                    ; #54948: origin
                    (Bd_survivorat_s_p4)

                    ; #55878: origin
                    (Bb_survivorat_s_p4)

                    ; #59559: <==closure== 54948 (pos)
                    (Pd_survivorat_s_p4)

                    ; #90177: <==closure== 55878 (pos)
                    (Pb_survivorat_s_p4)

                    ; #14573: <==negation-removal== 51152 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #20635: <==negation-removal== 45442 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #22110: <==negation-removal== 59559 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #24814: <==negation-removal== 90177 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #59144: <==negation-removal== 22553 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67307: <==negation-removal== 54948 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #73688: <==negation-removal== 22163 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #90166: <==negation-removal== 55878 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #14629: <==closure== 27935 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22312: <==closure== 29862 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27935: origin
                    (Bc_survivorat_s_p5)

                    ; #29862: origin
                    (Bb_survivorat_s_p5)

                    ; #35107: origin
                    (Bd_survivorat_s_p5)

                    ; #61428: origin
                    (Ba_survivorat_s_p5)

                    ; #71678: <==closure== 35107 (pos)
                    (Pd_survivorat_s_p5)

                    ; #74899: <==closure== 61428 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11085: <==negation-removal== 74899 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #30855: <==negation-removal== 71678 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #38772: <==negation-removal== 61428 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79174: <==negation-removal== 29862 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80468: <==negation-removal== 14629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #88151: <==negation-removal== 27935 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91123: <==negation-removal== 35107 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #91303: <==negation-removal== 22312 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #14629: <==closure== 27935 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22312: <==closure== 29862 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27935: origin
                    (Bc_survivorat_s_p5)

                    ; #29862: origin
                    (Bb_survivorat_s_p5)

                    ; #35107: origin
                    (Bd_survivorat_s_p5)

                    ; #61428: origin
                    (Ba_survivorat_s_p5)

                    ; #71678: <==closure== 35107 (pos)
                    (Pd_survivorat_s_p5)

                    ; #74899: <==closure== 61428 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11085: <==negation-removal== 74899 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #30855: <==negation-removal== 71678 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #38772: <==negation-removal== 61428 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79174: <==negation-removal== 29862 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80468: <==negation-removal== 14629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #88151: <==negation-removal== 27935 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91123: <==negation-removal== 35107 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #91303: <==negation-removal== 22312 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #14629: <==closure== 27935 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22312: <==closure== 29862 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27935: origin
                    (Bc_survivorat_s_p5)

                    ; #29862: origin
                    (Bb_survivorat_s_p5)

                    ; #35107: origin
                    (Bd_survivorat_s_p5)

                    ; #61428: origin
                    (Ba_survivorat_s_p5)

                    ; #71678: <==closure== 35107 (pos)
                    (Pd_survivorat_s_p5)

                    ; #74899: <==closure== 61428 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11085: <==negation-removal== 74899 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #30855: <==negation-removal== 71678 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #38772: <==negation-removal== 61428 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79174: <==negation-removal== 29862 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80468: <==negation-removal== 14629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #88151: <==negation-removal== 27935 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91123: <==negation-removal== 35107 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #91303: <==negation-removal== 22312 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #14629: <==closure== 27935 (pos)
                    (Pc_survivorat_s_p5)

                    ; #22312: <==closure== 29862 (pos)
                    (Pb_survivorat_s_p5)

                    ; #27935: origin
                    (Bc_survivorat_s_p5)

                    ; #29862: origin
                    (Bb_survivorat_s_p5)

                    ; #35107: origin
                    (Bd_survivorat_s_p5)

                    ; #61428: origin
                    (Ba_survivorat_s_p5)

                    ; #71678: <==closure== 35107 (pos)
                    (Pd_survivorat_s_p5)

                    ; #74899: <==closure== 61428 (pos)
                    (Pa_survivorat_s_p5)

                    ; #11085: <==negation-removal== 74899 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #30855: <==negation-removal== 71678 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #38772: <==negation-removal== 61428 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #79174: <==negation-removal== 29862 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #80468: <==negation-removal== 14629 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #88151: <==negation-removal== 27935 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #91123: <==negation-removal== 35107 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #91303: <==negation-removal== 22312 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #24748: <==closure== 42934 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37369: <==closure== 73964 (pos)
                    (Pd_survivorat_s_p6)

                    ; #42934: origin
                    (Bb_survivorat_s_p6)

                    ; #49204: origin
                    (Bc_survivorat_s_p6)

                    ; #57663: origin
                    (Ba_survivorat_s_p6)

                    ; #64749: <==closure== 49204 (pos)
                    (Pc_survivorat_s_p6)

                    ; #73964: origin
                    (Bd_survivorat_s_p6)

                    ; #83828: <==closure== 57663 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13749: <==negation-removal== 49204 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #17894: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32961: <==negation-removal== 73964 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #47875: <==negation-removal== 57663 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60983: <==negation-removal== 24748 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #62437: <==negation-removal== 42934 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #63046: <==negation-removal== 37369 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71536: <==negation-removal== 64749 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #24748: <==closure== 42934 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37369: <==closure== 73964 (pos)
                    (Pd_survivorat_s_p6)

                    ; #42934: origin
                    (Bb_survivorat_s_p6)

                    ; #49204: origin
                    (Bc_survivorat_s_p6)

                    ; #57663: origin
                    (Ba_survivorat_s_p6)

                    ; #64749: <==closure== 49204 (pos)
                    (Pc_survivorat_s_p6)

                    ; #73964: origin
                    (Bd_survivorat_s_p6)

                    ; #83828: <==closure== 57663 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13749: <==negation-removal== 49204 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #17894: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32961: <==negation-removal== 73964 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #47875: <==negation-removal== 57663 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60983: <==negation-removal== 24748 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #62437: <==negation-removal== 42934 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #63046: <==negation-removal== 37369 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71536: <==negation-removal== 64749 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #24748: <==closure== 42934 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37369: <==closure== 73964 (pos)
                    (Pd_survivorat_s_p6)

                    ; #42934: origin
                    (Bb_survivorat_s_p6)

                    ; #49204: origin
                    (Bc_survivorat_s_p6)

                    ; #57663: origin
                    (Ba_survivorat_s_p6)

                    ; #64749: <==closure== 49204 (pos)
                    (Pc_survivorat_s_p6)

                    ; #73964: origin
                    (Bd_survivorat_s_p6)

                    ; #83828: <==closure== 57663 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13749: <==negation-removal== 49204 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #17894: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32961: <==negation-removal== 73964 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #47875: <==negation-removal== 57663 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60983: <==negation-removal== 24748 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #62437: <==negation-removal== 42934 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #63046: <==negation-removal== 37369 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71536: <==negation-removal== 64749 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Pd_survivorat_s_p6)
                           (at_d_p6)
                           (Bd_survivorat_s_p6))
        :effect (and
                    ; #24748: <==closure== 42934 (pos)
                    (Pb_survivorat_s_p6)

                    ; #37369: <==closure== 73964 (pos)
                    (Pd_survivorat_s_p6)

                    ; #42934: origin
                    (Bb_survivorat_s_p6)

                    ; #49204: origin
                    (Bc_survivorat_s_p6)

                    ; #57663: origin
                    (Ba_survivorat_s_p6)

                    ; #64749: <==closure== 49204 (pos)
                    (Pc_survivorat_s_p6)

                    ; #73964: origin
                    (Bd_survivorat_s_p6)

                    ; #83828: <==closure== 57663 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13749: <==negation-removal== 49204 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #17894: <==negation-removal== 83828 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #32961: <==negation-removal== 73964 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #47875: <==negation-removal== 57663 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #60983: <==negation-removal== 24748 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #62437: <==negation-removal== 42934 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #63046: <==negation-removal== 37369 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71536: <==negation-removal== 64749 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #15879: <==closure== 52393 (pos)
                    (Pb_survivorat_s_p7)

                    ; #16855: origin
                    (Bc_survivorat_s_p7)

                    ; #25713: origin
                    (Bd_survivorat_s_p7)

                    ; #40355: <==closure== 25713 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41471: <==closure== 16855 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52393: origin
                    (Bb_survivorat_s_p7)

                    ; #63360: origin
                    (Ba_survivorat_s_p7)

                    ; #85219: <==closure== 63360 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15449: <==negation-removal== 52393 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #21279: <==negation-removal== 63360 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #34843: <==negation-removal== 85219 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #42746: <==negation-removal== 25713 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #59763: <==negation-removal== 15879 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #60559: <==negation-removal== 40355 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #80121: <==negation-removal== 41471 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #83006: <==negation-removal== 16855 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #15879: <==closure== 52393 (pos)
                    (Pb_survivorat_s_p7)

                    ; #16855: origin
                    (Bc_survivorat_s_p7)

                    ; #25713: origin
                    (Bd_survivorat_s_p7)

                    ; #40355: <==closure== 25713 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41471: <==closure== 16855 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52393: origin
                    (Bb_survivorat_s_p7)

                    ; #63360: origin
                    (Ba_survivorat_s_p7)

                    ; #85219: <==closure== 63360 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15449: <==negation-removal== 52393 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #21279: <==negation-removal== 63360 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #34843: <==negation-removal== 85219 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #42746: <==negation-removal== 25713 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #59763: <==negation-removal== 15879 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #60559: <==negation-removal== 40355 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #80121: <==negation-removal== 41471 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #83006: <==negation-removal== 16855 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #15879: <==closure== 52393 (pos)
                    (Pb_survivorat_s_p7)

                    ; #16855: origin
                    (Bc_survivorat_s_p7)

                    ; #25713: origin
                    (Bd_survivorat_s_p7)

                    ; #40355: <==closure== 25713 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41471: <==closure== 16855 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52393: origin
                    (Bb_survivorat_s_p7)

                    ; #63360: origin
                    (Ba_survivorat_s_p7)

                    ; #85219: <==closure== 63360 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15449: <==negation-removal== 52393 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #21279: <==negation-removal== 63360 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #34843: <==negation-removal== 85219 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #42746: <==negation-removal== 25713 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #59763: <==negation-removal== 15879 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #60559: <==negation-removal== 40355 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #80121: <==negation-removal== 41471 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #83006: <==negation-removal== 16855 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #15879: <==closure== 52393 (pos)
                    (Pb_survivorat_s_p7)

                    ; #16855: origin
                    (Bc_survivorat_s_p7)

                    ; #25713: origin
                    (Bd_survivorat_s_p7)

                    ; #40355: <==closure== 25713 (pos)
                    (Pd_survivorat_s_p7)

                    ; #41471: <==closure== 16855 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52393: origin
                    (Bb_survivorat_s_p7)

                    ; #63360: origin
                    (Ba_survivorat_s_p7)

                    ; #85219: <==closure== 63360 (pos)
                    (Pa_survivorat_s_p7)

                    ; #15449: <==negation-removal== 52393 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #21279: <==negation-removal== 63360 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #34843: <==negation-removal== 85219 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #42746: <==negation-removal== 25713 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #59763: <==negation-removal== 15879 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #60559: <==negation-removal== 40355 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #80121: <==negation-removal== 41471 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #83006: <==negation-removal== 16855 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #25072: <==closure== 44003 (pos)
                    (Pa_survivorat_s_p8)

                    ; #43515: <==closure== 69293 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44003: origin
                    (Ba_survivorat_s_p8)

                    ; #52804: origin
                    (Bb_survivorat_s_p8)

                    ; #66753: <==closure== 81271 (pos)
                    (Pc_survivorat_s_p8)

                    ; #66887: <==closure== 52804 (pos)
                    (Pb_survivorat_s_p8)

                    ; #69293: origin
                    (Bd_survivorat_s_p8)

                    ; #81271: origin
                    (Bc_survivorat_s_p8)

                    ; #18635: <==negation-removal== 66753 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #22511: <==negation-removal== 44003 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #27926: <==negation-removal== 52804 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34000: <==negation-removal== 81271 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46186: <==negation-removal== 69293 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #57845: <==negation-removal== 66887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #61220: <==negation-removal== 43515 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87319: <==negation-removal== 25072 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #25072: <==closure== 44003 (pos)
                    (Pa_survivorat_s_p8)

                    ; #43515: <==closure== 69293 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44003: origin
                    (Ba_survivorat_s_p8)

                    ; #52804: origin
                    (Bb_survivorat_s_p8)

                    ; #66753: <==closure== 81271 (pos)
                    (Pc_survivorat_s_p8)

                    ; #66887: <==closure== 52804 (pos)
                    (Pb_survivorat_s_p8)

                    ; #69293: origin
                    (Bd_survivorat_s_p8)

                    ; #81271: origin
                    (Bc_survivorat_s_p8)

                    ; #18635: <==negation-removal== 66753 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #22511: <==negation-removal== 44003 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #27926: <==negation-removal== 52804 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34000: <==negation-removal== 81271 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46186: <==negation-removal== 69293 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #57845: <==negation-removal== 66887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #61220: <==negation-removal== 43515 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87319: <==negation-removal== 25072 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #25072: <==closure== 44003 (pos)
                    (Pa_survivorat_s_p8)

                    ; #43515: <==closure== 69293 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44003: origin
                    (Ba_survivorat_s_p8)

                    ; #52804: origin
                    (Bb_survivorat_s_p8)

                    ; #66753: <==closure== 81271 (pos)
                    (Pc_survivorat_s_p8)

                    ; #66887: <==closure== 52804 (pos)
                    (Pb_survivorat_s_p8)

                    ; #69293: origin
                    (Bd_survivorat_s_p8)

                    ; #81271: origin
                    (Bc_survivorat_s_p8)

                    ; #18635: <==negation-removal== 66753 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #22511: <==negation-removal== 44003 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #27926: <==negation-removal== 52804 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34000: <==negation-removal== 81271 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46186: <==negation-removal== 69293 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #57845: <==negation-removal== 66887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #61220: <==negation-removal== 43515 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87319: <==negation-removal== 25072 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #25072: <==closure== 44003 (pos)
                    (Pa_survivorat_s_p8)

                    ; #43515: <==closure== 69293 (pos)
                    (Pd_survivorat_s_p8)

                    ; #44003: origin
                    (Ba_survivorat_s_p8)

                    ; #52804: origin
                    (Bb_survivorat_s_p8)

                    ; #66753: <==closure== 81271 (pos)
                    (Pc_survivorat_s_p8)

                    ; #66887: <==closure== 52804 (pos)
                    (Pb_survivorat_s_p8)

                    ; #69293: origin
                    (Bd_survivorat_s_p8)

                    ; #81271: origin
                    (Bc_survivorat_s_p8)

                    ; #18635: <==negation-removal== 66753 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #22511: <==negation-removal== 44003 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #27926: <==negation-removal== 52804 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #34000: <==negation-removal== 81271 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #46186: <==negation-removal== 69293 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #57845: <==negation-removal== 66887 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #61220: <==negation-removal== 43515 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87319: <==negation-removal== 25072 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #20952: origin
                    (Ba_survivorat_s_p9)

                    ; #32922: <==closure== 61209 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47843: origin
                    (Bc_survivorat_s_p9)

                    ; #55031: <==closure== 20952 (pos)
                    (Pa_survivorat_s_p9)

                    ; #60737: origin
                    (Bd_survivorat_s_p9)

                    ; #61209: origin
                    (Bb_survivorat_s_p9)

                    ; #69937: <==closure== 60737 (pos)
                    (Pd_survivorat_s_p9)

                    ; #70625: <==closure== 47843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22624: <==negation-removal== 20952 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25513: <==negation-removal== 69937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36702: <==negation-removal== 70625 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45974: <==negation-removal== 55031 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62628: <==negation-removal== 61209 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68296: <==negation-removal== 32922 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70936: <==negation-removal== 47843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #91286: <==negation-removal== 60737 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #20952: origin
                    (Ba_survivorat_s_p9)

                    ; #32922: <==closure== 61209 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47843: origin
                    (Bc_survivorat_s_p9)

                    ; #55031: <==closure== 20952 (pos)
                    (Pa_survivorat_s_p9)

                    ; #60737: origin
                    (Bd_survivorat_s_p9)

                    ; #61209: origin
                    (Bb_survivorat_s_p9)

                    ; #69937: <==closure== 60737 (pos)
                    (Pd_survivorat_s_p9)

                    ; #70625: <==closure== 47843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22624: <==negation-removal== 20952 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25513: <==negation-removal== 69937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36702: <==negation-removal== 70625 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45974: <==negation-removal== 55031 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62628: <==negation-removal== 61209 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68296: <==negation-removal== 32922 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70936: <==negation-removal== 47843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #91286: <==negation-removal== 60737 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #20952: origin
                    (Ba_survivorat_s_p9)

                    ; #32922: <==closure== 61209 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47843: origin
                    (Bc_survivorat_s_p9)

                    ; #55031: <==closure== 20952 (pos)
                    (Pa_survivorat_s_p9)

                    ; #60737: origin
                    (Bd_survivorat_s_p9)

                    ; #61209: origin
                    (Bb_survivorat_s_p9)

                    ; #69937: <==closure== 60737 (pos)
                    (Pd_survivorat_s_p9)

                    ; #70625: <==closure== 47843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22624: <==negation-removal== 20952 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25513: <==negation-removal== 69937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36702: <==negation-removal== 70625 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45974: <==negation-removal== 55031 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62628: <==negation-removal== 61209 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68296: <==negation-removal== 32922 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70936: <==negation-removal== 47843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #91286: <==negation-removal== 60737 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (at_d_p9))
        :effect (and
                    ; #20952: origin
                    (Ba_survivorat_s_p9)

                    ; #32922: <==closure== 61209 (pos)
                    (Pb_survivorat_s_p9)

                    ; #47843: origin
                    (Bc_survivorat_s_p9)

                    ; #55031: <==closure== 20952 (pos)
                    (Pa_survivorat_s_p9)

                    ; #60737: origin
                    (Bd_survivorat_s_p9)

                    ; #61209: origin
                    (Bb_survivorat_s_p9)

                    ; #69937: <==closure== 60737 (pos)
                    (Pd_survivorat_s_p9)

                    ; #70625: <==closure== 47843 (pos)
                    (Pc_survivorat_s_p9)

                    ; #22624: <==negation-removal== 20952 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25513: <==negation-removal== 69937 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36702: <==negation-removal== 70625 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #45974: <==negation-removal== 55031 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #62628: <==negation-removal== 61209 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #68296: <==negation-removal== 32922 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #70936: <==negation-removal== 47843 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #91286: <==negation-removal== 60737 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #65607: origin
                    (not_at_a_p10)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #55984: origin
                    (at_a_p10)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #65607: origin
                    (not_at_a_p10)

                    ; #82985: origin
                    (at_a_p11)

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #54025: origin
                    (at_a_p2)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #65607: origin
                    (not_at_a_p10)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #64369: origin
                    (at_a_p5)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #48326: origin
                    (at_a_p6)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #65607: origin
                    (not_at_a_p10)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #65607: origin
                    (not_at_a_p10)

                    ; #91101: origin
                    (at_a_p8)

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #65607: origin
                    (not_at_a_p10)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #55984: <==negation-removal== 65607 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #55984: origin
                    (at_a_p10)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #54025: origin
                    (at_a_p2)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #48326: origin
                    (at_a_p6)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #62433: origin
                    (not_at_a_p11)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #91101: origin
                    (at_a_p8)

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #62433: origin
                    (not_at_a_p11)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #82985: <==negation-removal== 62433 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #67179: origin
                    (at_a_p1)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #55984: origin
                    (at_a_p10)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #82985: origin
                    (at_a_p11)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #49218: origin
                    (not_at_a_p12)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #54025: origin
                    (at_a_p2)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #49218: origin
                    (not_at_a_p12)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #87321: origin
                    (at_a_p4)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #64369: origin
                    (at_a_p5)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #48326: origin
                    (at_a_p6)

                    ; #49218: origin
                    (not_at_a_p12)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #49218: origin
                    (not_at_a_p12)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #91101: origin
                    (at_a_p8)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #49218: origin
                    (not_at_a_p12)

                    ; #77523: origin
                    (at_a_p9)

                    ; #13056: <==negation-removal== 49218 (pos)
                    (not (at_a_p12))

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #55984: origin
                    (at_a_p10)

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #40478: origin
                    (not_at_a_p1)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #40478: origin
                    (not_at_a_p1)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #40478: origin
                    (not_at_a_p1)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #91101: origin
                    (at_a_p8)

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #40478: origin
                    (not_at_a_p1)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #67179: <==negation-removal== 40478 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #55984: origin
                    (at_a_p10)

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #82985: origin
                    (at_a_p11)

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #39926: origin
                    (not_at_a_p2)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #39926: origin
                    (not_at_a_p2)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #39926: origin
                    (not_at_a_p2)

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #91101: origin
                    (at_a_p8)

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #39926: origin
                    (not_at_a_p2)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #54025: <==negation-removal== 39926 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #67179: origin
                    (at_a_p1)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #55984: origin
                    (at_a_p10)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #82985: origin
                    (at_a_p11)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #18361: origin
                    (not_at_a_p3)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #54025: origin
                    (at_a_p2)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #18361: origin
                    (not_at_a_p3)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #87321: origin
                    (at_a_p4)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #64369: origin
                    (at_a_p5)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #48326: origin
                    (at_a_p6)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #18361: origin
                    (not_at_a_p3)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #91101: origin
                    (at_a_p8)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #18361: origin
                    (not_at_a_p3)

                    ; #77523: origin
                    (at_a_p9)

                    ; #15953: <==negation-removal== 18361 (pos)
                    (not (at_a_p3))

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #55984: origin
                    (at_a_p10)

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #25640: origin
                    (not_at_a_p4)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #25640: origin
                    (not_at_a_p4)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #25640: origin
                    (not_at_a_p4)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #91101: origin
                    (at_a_p8)

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #25640: origin
                    (not_at_a_p4)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #87321: <==negation-removal== 25640 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #55984: origin
                    (at_a_p10)

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #41571: origin
                    (not_at_a_p5)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #41571: origin
                    (not_at_a_p5)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #41571: origin
                    (not_at_a_p5)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #91101: origin
                    (at_a_p8)

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #41571: origin
                    (not_at_a_p5)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #64369: <==negation-removal== 41571 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #55984: origin
                    (at_a_p10)

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #82985: origin
                    (at_a_p11)

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #31817: origin
                    (not_at_a_p6)

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #31817: origin
                    (not_at_a_p6)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #31817: origin
                    (not_at_a_p6)

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #91101: origin
                    (at_a_p8)

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #31817: origin
                    (not_at_a_p6)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #48326: <==negation-removal== 31817 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #67179: origin
                    (at_a_p1)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #55984: origin
                    (at_a_p10)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #82985: origin
                    (at_a_p11)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #54547: origin
                    (not_at_a_p7)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #54025: origin
                    (at_a_p2)

                    ; #54547: origin
                    (not_at_a_p7)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #54547: origin
                    (not_at_a_p7)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #87321: origin
                    (at_a_p4)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #64369: origin
                    (at_a_p5)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #48326: origin
                    (at_a_p6)

                    ; #54547: origin
                    (not_at_a_p7)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #54547: origin
                    (not_at_a_p7)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #91101: origin
                    (at_a_p8)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #54547: origin
                    (not_at_a_p7)

                    ; #77523: origin
                    (at_a_p9)

                    ; #10167: <==negation-removal== 54547 (pos)
                    (not (at_a_p7))

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #67179: origin
                    (at_a_p1)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #55984: origin
                    (at_a_p10)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p8)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #54025: origin
                    (at_a_p2)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p8)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #64369: origin
                    (at_a_p5)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #48326: origin
                    (at_a_p6)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #68685: origin
                    (not_at_a_p8)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p8)

                    ; #91101: origin
                    (at_a_p8)

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #68685: origin
                    (not_at_a_p8)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #91101: <==negation-removal== 68685 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #67179: origin
                    (at_a_p1)

                    ; #40478: <==negation-removal== 67179 (pos)
                    (not (not_at_a_p1))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #55984: origin
                    (at_a_p10)

                    ; #65607: <==negation-removal== 55984 (pos)
                    (not (not_at_a_p10))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #82985: origin
                    (at_a_p11)

                    ; #62433: <==negation-removal== 82985 (pos)
                    (not (not_at_a_p11))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #13056: origin
                    (at_a_p12)

                    ; #31884: origin
                    (not_at_a_p9)

                    ; #49218: <==negation-removal== 13056 (pos)
                    (not (not_at_a_p12))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #54025: origin
                    (at_a_p2)

                    ; #39926: <==negation-removal== 54025 (pos)
                    (not (not_at_a_p2))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15953: origin
                    (at_a_p3)

                    ; #31884: origin
                    (not_at_a_p9)

                    ; #18361: <==negation-removal== 15953 (pos)
                    (not (not_at_a_p3))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #87321: origin
                    (at_a_p4)

                    ; #25640: <==negation-removal== 87321 (pos)
                    (not (not_at_a_p4))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #64369: origin
                    (at_a_p5)

                    ; #41571: <==negation-removal== 64369 (pos)
                    (not (not_at_a_p5))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #48326: origin
                    (at_a_p6)

                    ; #31817: <==negation-removal== 48326 (pos)
                    (not (not_at_a_p6))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10167: origin
                    (at_a_p7)

                    ; #31884: origin
                    (not_at_a_p9)

                    ; #54547: <==negation-removal== 10167 (pos)
                    (not (not_at_a_p7))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #91101: origin
                    (at_a_p8)

                    ; #68685: <==negation-removal== 91101 (pos)
                    (not (not_at_a_p8))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #31884: origin
                    (not_at_a_p9)

                    ; #77523: origin
                    (at_a_p9)

                    ; #31884: <==negation-removal== 77523 (pos)
                    (not (not_at_a_p9))

                    ; #77523: <==negation-removal== 31884 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #79517: origin
                    (not_at_b_p10)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #73236: origin
                    (at_b_p10)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #57313: origin
                    (at_b_p11)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #79397: origin
                    (at_b_p4)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #79517: origin
                    (not_at_b_p10)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #74890: origin
                    (at_b_p7)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #52438: origin
                    (at_b_p8)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #79517: origin
                    (not_at_b_p10)

                    ; #73236: <==negation-removal== 79517 (pos)
                    (not (at_b_p10))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #67804: origin
                    (not_at_b_p11)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #67804: origin
                    (not_at_b_p11)

                    ; #73236: origin
                    (at_b_p10)

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #57313: origin
                    (at_b_p11)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #67804: origin
                    (not_at_b_p11)

                    ; #79397: origin
                    (at_b_p4)

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #67804: origin
                    (not_at_b_p11)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #67804: origin
                    (not_at_b_p11)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #52438: origin
                    (at_b_p8)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #67804: origin
                    (not_at_b_p11)

                    ; #57313: <==negation-removal== 67804 (pos)
                    (not (at_b_p11))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #73236: origin
                    (at_b_p10)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #57313: origin
                    (at_b_p11)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #51584: origin
                    (not_at_b_p12)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #51584: origin
                    (not_at_b_p12)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #51584: origin
                    (not_at_b_p12)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #79397: origin
                    (at_b_p4)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #51584: origin
                    (not_at_b_p12)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #91302: origin
                    (at_b_p6)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #51584: origin
                    (not_at_b_p12)

                    ; #52438: origin
                    (at_b_p8)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #51584: origin
                    (not_at_b_p12)

                    ; #32733: <==negation-removal== 51584 (pos)
                    (not (at_b_p12))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #73236: origin
                    (at_b_p10)

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #57313: origin
                    (at_b_p11)

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #32733: origin
                    (at_b_p12)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #49579: origin
                    (at_b_p2)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #29037: origin
                    (at_b_p3)

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #79397: origin
                    (at_b_p4)

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #39395: origin
                    (at_b_p5)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #12060: origin
                    (not_at_b_p1)

                    ; #12112: origin
                    (at_b_p9)

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))

                    ; #80210: <==negation-removal== 12060 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #73236: origin
                    (at_b_p10)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #57313: origin
                    (at_b_p11)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #32733: origin
                    (at_b_p12)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #49579: origin
                    (at_b_p2)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #29037: origin
                    (at_b_p3)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #79397: origin
                    (at_b_p4)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #39395: origin
                    (at_b_p5)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #91302: origin
                    (at_b_p6)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #27207: origin
                    (not_at_b_p2)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #27207: origin
                    (not_at_b_p2)

                    ; #49579: <==negation-removal== 27207 (pos)
                    (not (at_b_p2))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #80210: origin
                    (at_b_p1)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #73236: origin
                    (at_b_p10)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #57313: origin
                    (at_b_p11)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #79397: origin
                    (at_b_p4)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #85061: origin
                    (not_at_b_p3)

                    ; #91302: origin
                    (at_b_p6)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #74890: origin
                    (at_b_p7)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #52438: origin
                    (at_b_p8)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #85061: origin
                    (not_at_b_p3)

                    ; #29037: <==negation-removal== 85061 (pos)
                    (not (at_b_p3))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #62772: origin
                    (not_at_b_p4)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #62772: origin
                    (not_at_b_p4)

                    ; #73236: origin
                    (at_b_p10)

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #57313: origin
                    (at_b_p11)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #62772: origin
                    (not_at_b_p4)

                    ; #79397: origin
                    (at_b_p4)

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #62772: origin
                    (not_at_b_p4)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #62772: origin
                    (not_at_b_p4)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #52438: origin
                    (at_b_p8)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #62772: origin
                    (not_at_b_p4)

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))

                    ; #79397: <==negation-removal== 62772 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #73236: origin
                    (at_b_p10)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #57313: origin
                    (at_b_p11)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #32733: origin
                    (at_b_p12)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #49579: origin
                    (at_b_p2)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #29037: origin
                    (at_b_p3)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #79397: origin
                    (at_b_p4)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #39395: origin
                    (at_b_p5)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #91302: origin
                    (at_b_p6)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #15128: origin
                    (not_at_b_p5)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #15128: origin
                    (not_at_b_p5)

                    ; #39395: <==negation-removal== 15128 (pos)
                    (not (at_b_p5))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #73236: origin
                    (at_b_p10)

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #57313: origin
                    (at_b_p11)

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #50075: origin
                    (not_at_b_p6)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #50075: origin
                    (not_at_b_p6)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #50075: origin
                    (not_at_b_p6)

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #79397: origin
                    (at_b_p4)

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #50075: origin
                    (not_at_b_p6)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #50075: origin
                    (not_at_b_p6)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #50075: origin
                    (not_at_b_p6)

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))

                    ; #91302: <==negation-removal== 50075 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #73236: origin
                    (at_b_p10)

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #57313: origin
                    (at_b_p11)

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #32733: origin
                    (at_b_p12)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #49579: origin
                    (at_b_p2)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #29037: origin
                    (at_b_p3)

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #79397: origin
                    (at_b_p4)

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #39395: origin
                    (at_b_p5)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #27133: origin
                    (not_at_b_p7)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #27133: origin
                    (not_at_b_p7)

                    ; #74890: <==negation-removal== 27133 (pos)
                    (not (at_b_p7))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #73236: origin
                    (at_b_p10)

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #57313: origin
                    (at_b_p11)

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #38566: origin
                    (not_at_b_p8)

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #49579: origin
                    (at_b_p2)

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #38566: origin
                    (not_at_b_p8)

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #79397: origin
                    (at_b_p4)

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #39395: origin
                    (at_b_p5)

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #91302: origin
                    (at_b_p6)

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #74890: origin
                    (at_b_p7)

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #38566: origin
                    (not_at_b_p8)

                    ; #52438: origin
                    (at_b_p8)

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #38566: origin
                    (not_at_b_p8)

                    ; #52438: <==negation-removal== 38566 (pos)
                    (not (at_b_p8))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #76920: origin
                    (not_at_b_p9)

                    ; #80210: origin
                    (at_b_p1)

                    ; #12060: <==negation-removal== 80210 (pos)
                    (not (not_at_b_p1))

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #73236: origin
                    (at_b_p10)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #79517: <==negation-removal== 73236 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #57313: origin
                    (at_b_p11)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #67804: <==negation-removal== 57313 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #32733: origin
                    (at_b_p12)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #51584: <==negation-removal== 32733 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #49579: origin
                    (at_b_p2)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #27207: <==negation-removal== 49579 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #29037: origin
                    (at_b_p3)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #85061: <==negation-removal== 29037 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #76920: origin
                    (not_at_b_p9)

                    ; #79397: origin
                    (at_b_p4)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #62772: <==negation-removal== 79397 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #39395: origin
                    (at_b_p5)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #15128: <==negation-removal== 39395 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #76920: origin
                    (not_at_b_p9)

                    ; #91302: origin
                    (at_b_p6)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #50075: <==negation-removal== 91302 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #74890: origin
                    (at_b_p7)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #27133: <==negation-removal== 74890 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #52438: origin
                    (at_b_p8)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #38566: <==negation-removal== 52438 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #12112: origin
                    (at_b_p9)

                    ; #76920: origin
                    (not_at_b_p9)

                    ; #12112: <==negation-removal== 76920 (pos)
                    (not (at_b_p9))

                    ; #76920: <==negation-removal== 12112 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #36683: origin
                    (at_c_p1)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #29117: origin
                    (at_c_p10)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #14335: origin
                    (not_at_c_p10)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #19246: origin
                    (at_c_p12)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #40267: origin
                    (at_c_p3)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #16945: origin
                    (at_c_p4)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #79461: origin
                    (at_c_p5)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #17734: origin
                    (at_c_p6)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #23492: origin
                    (at_c_p7)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #47646: origin
                    (at_c_p8)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #14335: origin
                    (not_at_c_p10)

                    ; #36673: origin
                    (at_c_p9)

                    ; #29117: <==negation-removal== 14335 (pos)
                    (not (at_c_p10))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #73087: origin
                    (at_c_p2)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #79461: origin
                    (at_c_p5)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #92471: origin
                    (not_at_c_p11)

                    ; #12123: <==negation-removal== 92471 (pos)
                    (not (at_c_p11))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #73087: origin
                    (at_c_p2)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #79461: origin
                    (at_c_p5)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #87586: origin
                    (not_at_c_p12)

                    ; #19246: <==negation-removal== 87586 (pos)
                    (not (at_c_p12))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #73087: origin
                    (at_c_p2)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #73763: origin
                    (not_at_c_p1)

                    ; #79461: origin
                    (at_c_p5)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #73763: origin
                    (not_at_c_p1)

                    ; #36683: <==negation-removal== 73763 (pos)
                    (not (at_c_p1))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #36683: origin
                    (at_c_p1)

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #29117: origin
                    (at_c_p10)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #17463: origin
                    (not_at_c_p2)

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #19246: origin
                    (at_c_p12)

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #40267: origin
                    (at_c_p3)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #17463: origin
                    (not_at_c_p2)

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #79461: origin
                    (at_c_p5)

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #17734: origin
                    (at_c_p6)

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #23492: origin
                    (at_c_p7)

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #47646: origin
                    (at_c_p8)

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #17463: origin
                    (not_at_c_p2)

                    ; #36673: origin
                    (at_c_p9)

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))

                    ; #73087: <==negation-removal== 17463 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #36683: origin
                    (at_c_p1)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: origin
                    (at_c_p3)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #79461: origin
                    (at_c_p5)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #34774: origin
                    (not_at_c_p3)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #47646: origin
                    (at_c_p8)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #34774: origin
                    (not_at_c_p3)

                    ; #36673: origin
                    (at_c_p9)

                    ; #40267: <==negation-removal== 34774 (pos)
                    (not (at_c_p3))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #48692: origin
                    (not_at_c_p4)

                    ; #73087: origin
                    (at_c_p2)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #48692: origin
                    (not_at_c_p4)

                    ; #79461: origin
                    (at_c_p5)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #48692: origin
                    (not_at_c_p4)

                    ; #16945: <==negation-removal== 48692 (pos)
                    (not (at_c_p4))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #73087: origin
                    (at_c_p2)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #79461: origin
                    (at_c_p5)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #85469: origin
                    (not_at_c_p5)

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))

                    ; #79461: <==negation-removal== 85469 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #56993: origin
                    (not_at_c_p6)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #56993: origin
                    (not_at_c_p6)

                    ; #79461: origin
                    (at_c_p5)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #56993: origin
                    (not_at_c_p6)

                    ; #17734: <==negation-removal== 56993 (pos)
                    (not (at_c_p6))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #67598: origin
                    (not_at_c_p7)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #67598: origin
                    (not_at_c_p7)

                    ; #79461: origin
                    (at_c_p5)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #67598: origin
                    (not_at_c_p7)

                    ; #23492: <==negation-removal== 67598 (pos)
                    (not (at_c_p7))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #73087: origin
                    (at_c_p2)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #79461: origin
                    (at_c_p5)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #86301: origin
                    (not_at_c_p8)

                    ; #47646: <==negation-removal== 86301 (pos)
                    (not (at_c_p8))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #36683: origin
                    (at_c_p1)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #73763: <==negation-removal== 36683 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #29117: origin
                    (at_c_p10)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #14335: <==negation-removal== 29117 (pos)
                    (not (not_at_c_p10))

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #12123: origin
                    (at_c_p11)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #92471: <==negation-removal== 12123 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #19246: origin
                    (at_c_p12)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #87586: <==negation-removal== 19246 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #56785: origin
                    (not_at_c_p9)

                    ; #73087: origin
                    (at_c_p2)

                    ; #17463: <==negation-removal== 73087 (pos)
                    (not (not_at_c_p2))

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #40267: origin
                    (at_c_p3)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #34774: <==negation-removal== 40267 (pos)
                    (not (not_at_c_p3))

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #16945: origin
                    (at_c_p4)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #48692: <==negation-removal== 16945 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #56785: origin
                    (not_at_c_p9)

                    ; #79461: origin
                    (at_c_p5)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #85469: <==negation-removal== 79461 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #17734: origin
                    (at_c_p6)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #56993: <==negation-removal== 17734 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #23492: origin
                    (at_c_p7)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #67598: <==negation-removal== 23492 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #47646: origin
                    (at_c_p8)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #86301: <==negation-removal== 47646 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #36673: origin
                    (at_c_p9)

                    ; #56785: origin
                    (not_at_c_p9)

                    ; #36673: <==negation-removal== 56785 (pos)
                    (not (at_c_p9))

                    ; #56785: <==negation-removal== 36673 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10))
        :effect (and
                    ; #71692: origin
                    (at_d_p1)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10))
        :effect (and
                    ; #67369: origin
                    (at_d_p11)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10))
        :effect (and
                    ; #74397: origin
                    (not_at_d_p10)

                    ; #88409: origin
                    (at_d_p2)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #74397: origin
                    (not_at_d_p10)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #74397: origin
                    (not_at_d_p10)

                    ; #83357: origin
                    (at_d_p9)

                    ; #29899: <==negation-removal== 74397 (pos)
                    (not (at_d_p10))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #59519: origin
                    (not_at_d_p11)

                    ; #71692: origin
                    (at_d_p1)

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #59519: origin
                    (not_at_d_p11)

                    ; #67369: origin
                    (at_d_p11)

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #59519: origin
                    (not_at_d_p11)

                    ; #88409: origin
                    (at_d_p2)

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_d_p11))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #59519: origin
                    (not_at_d_p11)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11))
        :effect (and
                    ; #59519: origin
                    (not_at_d_p11)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))

                    ; #67369: <==negation-removal== 59519 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12))
        :effect (and
                    ; #51322: origin
                    (not_at_d_p12)

                    ; #71692: origin
                    (at_d_p1)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #51322: origin
                    (not_at_d_p12)

                    ; #67369: origin
                    (at_d_p11)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12))
        :effect (and
                    ; #51322: origin
                    (not_at_d_p12)

                    ; #88409: origin
                    (at_d_p2)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #51322: origin
                    (not_at_d_p12)

                    ; #54016: origin
                    (at_d_p5)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_d_p12))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #51322: origin
                    (not_at_d_p12)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12))
        :effect (and
                    ; #51322: origin
                    (not_at_d_p12)

                    ; #83357: origin
                    (at_d_p9)

                    ; #14884: <==negation-removal== 51322 (pos)
                    (not (at_d_p12))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #60855: origin
                    (not_at_d_p1)

                    ; #71692: origin
                    (at_d_p1)

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (at_d_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #60855: origin
                    (not_at_d_p1)

                    ; #67369: origin
                    (at_d_p11)

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #60855: origin
                    (not_at_d_p1)

                    ; #88409: origin
                    (at_d_p2)

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #60855: origin
                    (not_at_d_p1)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #60855: origin
                    (not_at_d_p1)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))

                    ; #71692: <==negation-removal== 60855 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #71692: origin
                    (at_d_p1)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #67369: origin
                    (at_d_p11)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #72830: origin
                    (not_at_d_p2)

                    ; #88409: origin
                    (at_d_p2)

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #72830: origin
                    (not_at_d_p2)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #72830: origin
                    (not_at_d_p2)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))

                    ; #88409: <==negation-removal== 72830 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #71692: origin
                    (at_d_p1)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #29899: origin
                    (at_d_p10)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #67369: origin
                    (at_d_p11)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #23794: origin
                    (not_at_d_p3)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #88409: origin
                    (at_d_p2)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #37973: origin
                    (at_d_p3)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #46233: origin
                    (at_d_p4)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #54016: origin
                    (at_d_p5)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #23794: origin
                    (not_at_d_p3)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #34310: origin
                    (at_d_p7)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #23794: origin
                    (not_at_d_p3)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #23794: origin
                    (not_at_d_p3)

                    ; #83357: origin
                    (at_d_p9)

                    ; #37973: <==negation-removal== 23794 (pos)
                    (not (at_d_p3))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #62989: origin
                    (not_at_d_p4)

                    ; #71692: origin
                    (at_d_p1)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_d_p4))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_d_p4))
        :effect (and
                    ; #62989: origin
                    (not_at_d_p4)

                    ; #67369: origin
                    (at_d_p11)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_d_p4))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #62989: origin
                    (not_at_d_p4)

                    ; #88409: origin
                    (at_d_p2)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #62989: origin
                    (not_at_d_p4)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #62989: origin
                    (not_at_d_p4)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46233: <==negation-removal== 62989 (pos)
                    (not (at_d_p4))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #71692: origin
                    (at_d_p1)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #29899: origin
                    (at_d_p10)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #67369: origin
                    (at_d_p11)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #26828: origin
                    (not_at_d_p5)

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #88409: origin
                    (at_d_p2)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #37973: origin
                    (at_d_p3)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #46233: origin
                    (at_d_p4)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #54016: origin
                    (at_d_p5)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #26828: origin
                    (not_at_d_p5)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #34310: origin
                    (at_d_p7)

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #26828: origin
                    (not_at_d_p5)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #26828: origin
                    (not_at_d_p5)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))

                    ; #54016: <==negation-removal== 26828 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #71692: origin
                    (at_d_p1)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #67369: origin
                    (at_d_p11)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #76291: origin
                    (not_at_d_p6)

                    ; #88409: origin
                    (at_d_p2)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #76291: origin
                    (not_at_d_p6)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #76291: origin
                    (not_at_d_p6)

                    ; #83357: origin
                    (at_d_p9)

                    ; #14150: <==negation-removal== 76291 (pos)
                    (not (at_d_p6))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #71692: origin
                    (at_d_p1)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #67369: origin
                    (at_d_p11)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #72130: origin
                    (not_at_d_p7)

                    ; #88409: origin
                    (at_d_p2)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #54016: origin
                    (at_d_p5)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #72130: origin
                    (not_at_d_p7)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #72130: origin
                    (not_at_d_p7)

                    ; #83357: origin
                    (at_d_p9)

                    ; #34310: <==negation-removal== 72130 (pos)
                    (not (at_d_p7))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #71692: origin
                    (at_d_p1)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #29899: origin
                    (at_d_p10)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #67369: origin
                    (at_d_p11)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_d_p8))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #20974: origin
                    (not_at_d_p8)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #88409: origin
                    (at_d_p2)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #37973: origin
                    (at_d_p3)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #46233: origin
                    (at_d_p4)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #54016: origin
                    (at_d_p5)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #20974: origin
                    (not_at_d_p8)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #34310: origin
                    (at_d_p7)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #20974: origin
                    (not_at_d_p8)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #20974: origin
                    (not_at_d_p8)

                    ; #83357: origin
                    (at_d_p9)

                    ; #11094: <==negation-removal== 20974 (pos)
                    (not (at_d_p8))

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #46394: origin
                    (not_at_d_p9)

                    ; #71692: origin
                    (at_d_p1)

                    ; #60855: <==negation-removal== 71692 (pos)
                    (not (not_at_d_p1))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #29899: origin
                    (at_d_p10)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #74397: <==negation-removal== 29899 (pos)
                    (not (not_at_d_p10))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #46394: origin
                    (not_at_d_p9)

                    ; #67369: origin
                    (at_d_p11)

                    ; #59519: <==negation-removal== 67369 (pos)
                    (not (not_at_d_p11))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9))
        :effect (and
                    ; #14884: origin
                    (at_d_p12)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #51322: <==negation-removal== 14884 (pos)
                    (not (not_at_d_p12))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #46394: origin
                    (not_at_d_p9)

                    ; #88409: origin
                    (at_d_p2)

                    ; #72830: <==negation-removal== 88409 (pos)
                    (not (not_at_d_p2))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #37973: origin
                    (at_d_p3)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #23794: <==negation-removal== 37973 (pos)
                    (not (not_at_d_p3))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #46233: origin
                    (at_d_p4)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #62989: <==negation-removal== 46233 (pos)
                    (not (not_at_d_p4))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #46394: origin
                    (not_at_d_p9)

                    ; #54016: origin
                    (at_d_p5)

                    ; #26828: <==negation-removal== 54016 (pos)
                    (not (not_at_d_p5))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #14150: origin
                    (at_d_p6)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #76291: <==negation-removal== 14150 (pos)
                    (not (not_at_d_p6))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9))
        :effect (and
                    ; #34310: origin
                    (at_d_p7)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #72130: <==negation-removal== 34310 (pos)
                    (not (not_at_d_p7))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #11094: origin
                    (at_d_p8)

                    ; #46394: origin
                    (not_at_d_p9)

                    ; #20974: <==negation-removal== 11094 (pos)
                    (not (not_at_d_p8))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #46394: origin
                    (not_at_d_p9)

                    ; #83357: origin
                    (at_d_p9)

                    ; #46394: <==negation-removal== 83357 (pos)
                    (not (not_at_d_p9))

                    ; #83357: <==negation-removal== 46394 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12655: origin
                    (checked_p10)

                    ; #15874: <==commonly_known== 12655 (pos)
                    (Bc_checked_p10)

                    ; #17665: <==commonly_known== 41337 (neg)
                    (Pc_checked_p10)

                    ; #32672: <==commonly_known== 12655 (pos)
                    (Ba_checked_p10)

                    ; #33240: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #50410: <==commonly_known== 41337 (neg)
                    (Pa_checked_p10)

                    ; #52900: <==closure== 33240 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #54749: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #61528: <==commonly_known== 41337 (neg)
                    (Pd_checked_p10)

                    ; #61678: <==commonly_known== 12655 (pos)
                    (Bb_checked_p10)

                    ; #79060: <==closure== 54749 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #90742: <==commonly_known== 41337 (neg)
                    (Pb_checked_p10)

                    ; #91501: <==commonly_known== 12655 (pos)
                    (Bd_checked_p10)

                    ; #10733: <==negation-removal== 52900 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #20172: <==uncertain_firing== 33240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #27340: <==negation-removal== 91501 (pos)
                    (not (Pd_not_checked_p10))

                    ; #36995: <==uncertain_firing== 79060 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #38196: <==negation-removal== 61528 (pos)
                    (not (Bd_not_checked_p10))

                    ; #41337: <==negation-removal== 12655 (pos)
                    (not (not_checked_p10))

                    ; #57055: <==negation-removal== 15874 (pos)
                    (not (Pc_not_checked_p10))

                    ; #57620: <==negation-removal== 90742 (pos)
                    (not (Bb_not_checked_p10))

                    ; #63896: <==negation-removal== 79060 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #67954: <==negation-removal== 17665 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69960: <==negation-removal== 32672 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70959: <==negation-removal== 61678 (pos)
                    (not (Pb_not_checked_p10))

                    ; #71769: <==negation-removal== 54749 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #76803: <==negation-removal== 50410 (pos)
                    (not (Ba_not_checked_p10))

                    ; #79015: <==uncertain_firing== 52900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #79540: <==negation-removal== 33240 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #85207: <==uncertain_firing== 54749 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20486: <==commonly_known== 60593 (pos)
                    (Ba_checked_p11)

                    ; #24837: <==commonly_known== 60593 (pos)
                    (Bc_checked_p11)

                    ; #40028: <==commonly_known== 89941 (neg)
                    (Pb_checked_p11)

                    ; #46616: <==commonly_known== 89941 (neg)
                    (Pa_checked_p11)

                    ; #51072: <==commonly_known== 89941 (neg)
                    (Pd_checked_p11)

                    ; #54910: <==closure== 87713 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #59130: <==commonly_known== 89941 (neg)
                    (Pc_checked_p11)

                    ; #60593: origin
                    (checked_p11)

                    ; #61127: <==commonly_known== 60593 (pos)
                    (Bb_checked_p11)

                    ; #64804: <==closure== 81398 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #68022: <==commonly_known== 60593 (pos)
                    (Bd_checked_p11)

                    ; #81398: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #87713: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #14337: <==negation-removal== 20486 (pos)
                    (not (Pa_not_checked_p11))

                    ; #18657: <==negation-removal== 64804 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #24788: <==negation-removal== 87713 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #29834: <==negation-removal== 54910 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #61401: <==negation-removal== 61127 (pos)
                    (not (Pb_not_checked_p11))

                    ; #62451: <==uncertain_firing== 87713 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #66300: <==uncertain_firing== 81398 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #67274: <==uncertain_firing== 54910 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #67916: <==negation-removal== 51072 (pos)
                    (not (Bd_not_checked_p11))

                    ; #75128: <==negation-removal== 81398 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #77117: <==negation-removal== 68022 (pos)
                    (not (Pd_not_checked_p11))

                    ; #78384: <==uncertain_firing== 64804 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #81422: <==negation-removal== 59130 (pos)
                    (not (Bc_not_checked_p11))

                    ; #83889: <==negation-removal== 24837 (pos)
                    (not (Pc_not_checked_p11))

                    ; #87054: <==negation-removal== 46616 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88496: <==negation-removal== 40028 (pos)
                    (not (Bb_not_checked_p11))

                    ; #89941: <==negation-removal== 60593 (pos)
                    (not (not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12438: <==commonly_known== 84492 (pos)
                    (Bd_checked_p12)

                    ; #16175: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #19554: <==commonly_known== 28454 (neg)
                    (Pc_checked_p12)

                    ; #51848: <==commonly_known== 84492 (pos)
                    (Bc_checked_p12)

                    ; #54887: <==commonly_known== 28454 (neg)
                    (Pd_checked_p12)

                    ; #55361: <==closure== 83260 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #74638: <==commonly_known== 28454 (neg)
                    (Pb_checked_p12)

                    ; #81404: <==commonly_known== 84492 (pos)
                    (Ba_checked_p12)

                    ; #82998: <==closure== 16175 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #83260: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #84492: origin
                    (checked_p12)

                    ; #87233: <==commonly_known== 28454 (neg)
                    (Pa_checked_p12)

                    ; #92118: <==commonly_known== 84492 (pos)
                    (Bb_checked_p12)

                    ; #12069: <==negation-removal== 81404 (pos)
                    (not (Pa_not_checked_p12))

                    ; #16862: <==negation-removal== 92118 (pos)
                    (not (Pb_not_checked_p12))

                    ; #17287: <==negation-removal== 16175 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #21230: <==negation-removal== 51848 (pos)
                    (not (Pc_not_checked_p12))

                    ; #27636: <==negation-removal== 87233 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27683: <==negation-removal== 19554 (pos)
                    (not (Bc_not_checked_p12))

                    ; #28454: <==negation-removal== 84492 (pos)
                    (not (not_checked_p12))

                    ; #30934: <==uncertain_firing== 83260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #31975: <==negation-removal== 83260 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #33111: <==uncertain_firing== 16175 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #34301: <==negation-removal== 54887 (pos)
                    (not (Bd_not_checked_p12))

                    ; #34408: <==negation-removal== 55361 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #34511: <==negation-removal== 82998 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #40860: <==negation-removal== 12438 (pos)
                    (not (Pd_not_checked_p12))

                    ; #67408: <==uncertain_firing== 82998 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #76939: <==negation-removal== 74638 (pos)
                    (not (Bb_not_checked_p12))

                    ; #86801: <==uncertain_firing== 55361 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22308: origin
                    (checked_p1)

                    ; #27148: <==closure== 70898 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #32717: <==commonly_known== 31815 (neg)
                    (Pb_checked_p1)

                    ; #37589: <==commonly_known== 22308 (pos)
                    (Ba_checked_p1)

                    ; #47984: <==commonly_known== 22308 (pos)
                    (Bc_checked_p1)

                    ; #53111: <==commonly_known== 31815 (neg)
                    (Pc_checked_p1)

                    ; #56329: <==commonly_known== 31815 (neg)
                    (Pd_checked_p1)

                    ; #59500: <==commonly_known== 31815 (neg)
                    (Pa_checked_p1)

                    ; #59770: <==closure== 70845 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #70845: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #70898: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #81439: <==commonly_known== 22308 (pos)
                    (Bb_checked_p1)

                    ; #85589: <==commonly_known== 22308 (pos)
                    (Bd_checked_p1)

                    ; #12959: <==negation-removal== 32717 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13110: <==negation-removal== 59500 (pos)
                    (not (Ba_not_checked_p1))

                    ; #13962: <==negation-removal== 81439 (pos)
                    (not (Pb_not_checked_p1))

                    ; #16095: <==uncertain_firing== 70898 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #24725: <==negation-removal== 53111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26220: <==negation-removal== 85589 (pos)
                    (not (Pd_not_checked_p1))

                    ; #30308: <==negation-removal== 47984 (pos)
                    (not (Pc_not_checked_p1))

                    ; #30761: <==negation-removal== 27148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #31815: <==negation-removal== 22308 (pos)
                    (not (not_checked_p1))

                    ; #41608: <==negation-removal== 59770 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66200: <==negation-removal== 56329 (pos)
                    (not (Bd_not_checked_p1))

                    ; #74255: <==negation-removal== 70898 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #78657: <==uncertain_firing== 27148 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #82143: <==uncertain_firing== 70845 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #83239: <==negation-removal== 37589 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83786: <==negation-removal== 70845 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88116: <==uncertain_firing== 59770 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26246: <==commonly_known== 66299 (pos)
                    (Bc_checked_p2)

                    ; #30187: <==commonly_known== 46222 (neg)
                    (Pa_checked_p2)

                    ; #30782: <==closure== 44712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #30876: <==closure== 58102 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #39946: <==commonly_known== 46222 (neg)
                    (Pc_checked_p2)

                    ; #42805: <==commonly_known== 66299 (pos)
                    (Bb_checked_p2)

                    ; #44712: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #45882: <==commonly_known== 66299 (pos)
                    (Ba_checked_p2)

                    ; #48386: <==commonly_known== 46222 (neg)
                    (Pb_checked_p2)

                    ; #58102: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #59752: <==commonly_known== 66299 (pos)
                    (Bd_checked_p2)

                    ; #66299: origin
                    (checked_p2)

                    ; #76991: <==commonly_known== 46222 (neg)
                    (Pd_checked_p2)

                    ; #12216: <==negation-removal== 48386 (pos)
                    (not (Bb_not_checked_p2))

                    ; #16504: <==uncertain_firing== 30876 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #19705: <==negation-removal== 30876 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #21012: <==negation-removal== 39946 (pos)
                    (not (Bc_not_checked_p2))

                    ; #24619: <==negation-removal== 58102 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #27652: <==negation-removal== 45882 (pos)
                    (not (Pa_not_checked_p2))

                    ; #38370: <==uncertain_firing== 58102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46222: <==negation-removal== 66299 (pos)
                    (not (not_checked_p2))

                    ; #52901: <==uncertain_firing== 30782 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #65929: <==uncertain_firing== 44712 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #69763: <==negation-removal== 42805 (pos)
                    (not (Pb_not_checked_p2))

                    ; #70430: <==negation-removal== 44712 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #74248: <==negation-removal== 26246 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79458: <==negation-removal== 30187 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79642: <==negation-removal== 59752 (pos)
                    (not (Pd_not_checked_p2))

                    ; #80082: <==negation-removal== 30782 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83339: <==negation-removal== 76991 (pos)
                    (not (Bd_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11450: <==closure== 79695 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #12343: <==commonly_known== 18317 (pos)
                    (Bc_checked_p3)

                    ; #18232: <==commonly_known== 18317 (pos)
                    (Ba_checked_p3)

                    ; #18317: origin
                    (checked_p3)

                    ; #26097: <==commonly_known== 18317 (pos)
                    (Bb_checked_p3)

                    ; #41194: <==closure== 90122 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #57850: <==commonly_known== 30915 (neg)
                    (Pa_checked_p3)

                    ; #59796: <==commonly_known== 30915 (neg)
                    (Pb_checked_p3)

                    ; #64891: <==commonly_known== 30915 (neg)
                    (Pc_checked_p3)

                    ; #73186: <==commonly_known== 18317 (pos)
                    (Bd_checked_p3)

                    ; #79695: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #90122: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #90910: <==commonly_known== 30915 (neg)
                    (Pd_checked_p3)

                    ; #13084: <==negation-removal== 11450 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #14862: <==negation-removal== 64891 (pos)
                    (not (Bc_not_checked_p3))

                    ; #20678: <==uncertain_firing== 41194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #21158: <==negation-removal== 41194 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #25813: <==negation-removal== 90910 (pos)
                    (not (Bd_not_checked_p3))

                    ; #30884: <==negation-removal== 18232 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30915: <==negation-removal== 18317 (pos)
                    (not (not_checked_p3))

                    ; #40207: <==uncertain_firing== 11450 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42372: <==negation-removal== 73186 (pos)
                    (not (Pd_not_checked_p3))

                    ; #46420: <==uncertain_firing== 90122 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69775: <==negation-removal== 79695 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #76785: <==negation-removal== 59796 (pos)
                    (not (Bb_not_checked_p3))

                    ; #77507: <==negation-removal== 90122 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86392: <==negation-removal== 26097 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87599: <==uncertain_firing== 79695 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #89324: <==negation-removal== 57850 (pos)
                    (not (Ba_not_checked_p3))

                    ; #95563: <==negation-removal== 12343 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12395: origin
                    (checked_p4)

                    ; #12830: <==commonly_known== 20193 (neg)
                    (Pb_checked_p4)

                    ; #18154: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #19311: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #20196: <==commonly_known== 20193 (neg)
                    (Pc_checked_p4)

                    ; #35818: <==commonly_known== 12395 (pos)
                    (Ba_checked_p4)

                    ; #52737: <==closure== 18154 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #61763: <==commonly_known== 12395 (pos)
                    (Bb_checked_p4)

                    ; #67081: <==commonly_known== 20193 (neg)
                    (Pa_checked_p4)

                    ; #67312: <==commonly_known== 12395 (pos)
                    (Bd_checked_p4)

                    ; #73051: <==commonly_known== 12395 (pos)
                    (Bc_checked_p4)

                    ; #75618: <==closure== 19311 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #79680: <==commonly_known== 20193 (neg)
                    (Pd_checked_p4)

                    ; #10702: <==negation-removal== 18154 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #16694: <==uncertain_firing== 52737 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #20193: <==negation-removal== 12395 (pos)
                    (not (not_checked_p4))

                    ; #25944: <==negation-removal== 67312 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35583: <==negation-removal== 52737 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50684: <==uncertain_firing== 18154 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #54244: <==negation-removal== 73051 (pos)
                    (not (Pc_not_checked_p4))

                    ; #65026: <==uncertain_firing== 75618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #65347: <==negation-removal== 19311 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #66128: <==negation-removal== 12830 (pos)
                    (not (Bb_not_checked_p4))

                    ; #67642: <==negation-removal== 67081 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68209: <==negation-removal== 35818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71894: <==negation-removal== 20196 (pos)
                    (not (Bc_not_checked_p4))

                    ; #76822: <==negation-removal== 61763 (pos)
                    (not (Pb_not_checked_p4))

                    ; #86367: <==negation-removal== 79680 (pos)
                    (not (Bd_not_checked_p4))

                    ; #91637: <==uncertain_firing== 19311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #93510: <==negation-removal== 75618 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12420: <==commonly_known== 91323 (pos)
                    (Bb_checked_p5)

                    ; #19165: <==commonly_known== 17643 (neg)
                    (Pc_checked_p5)

                    ; #24791: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #34175: <==commonly_known== 91323 (pos)
                    (Ba_checked_p5)

                    ; #42413: <==commonly_known== 17643 (neg)
                    (Pb_checked_p5)

                    ; #71992: <==commonly_known== 91323 (pos)
                    (Bc_checked_p5)

                    ; #73933: <==closure== 24791 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #78975: <==commonly_known== 17643 (neg)
                    (Pd_checked_p5)

                    ; #80341: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #82848: <==closure== 80341 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #86771: <==commonly_known== 91323 (pos)
                    (Bd_checked_p5)

                    ; #91323: origin
                    (checked_p5)

                    ; #92190: <==commonly_known== 17643 (neg)
                    (Pa_checked_p5)

                    ; #10347: <==uncertain_firing== 80341 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #14489: <==negation-removal== 92190 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17643: <==negation-removal== 91323 (pos)
                    (not (not_checked_p5))

                    ; #22041: <==uncertain_firing== 24791 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #36144: <==negation-removal== 82848 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #38580: <==negation-removal== 34175 (pos)
                    (not (Pa_not_checked_p5))

                    ; #44652: <==negation-removal== 71992 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54038: <==negation-removal== 73933 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #54873: <==negation-removal== 42413 (pos)
                    (not (Bb_not_checked_p5))

                    ; #57117: <==uncertain_firing== 73933 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58000: <==negation-removal== 24791 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #58868: <==negation-removal== 19165 (pos)
                    (not (Bc_not_checked_p5))

                    ; #67280: <==negation-removal== 12420 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74839: <==negation-removal== 86771 (pos)
                    (not (Pd_not_checked_p5))

                    ; #75361: <==uncertain_firing== 82848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #77436: <==negation-removal== 78975 (pos)
                    (not (Bd_not_checked_p5))

                    ; #91980: <==negation-removal== 80341 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13516: <==commonly_known== 76878 (pos)
                    (Bc_checked_p6)

                    ; #27327: <==commonly_known== 86833 (neg)
                    (Pc_checked_p6)

                    ; #35536: <==closure== 77447 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #47012: <==commonly_known== 86833 (neg)
                    (Pb_checked_p6)

                    ; #52202: <==commonly_known== 86833 (neg)
                    (Pd_checked_p6)

                    ; #55654: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #58919: <==commonly_known== 86833 (neg)
                    (Pa_checked_p6)

                    ; #74910: <==commonly_known== 76878 (pos)
                    (Ba_checked_p6)

                    ; #76878: origin
                    (checked_p6)

                    ; #77447: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #82217: <==commonly_known== 76878 (pos)
                    (Bb_checked_p6)

                    ; #84640: <==commonly_known== 76878 (pos)
                    (Bd_checked_p6)

                    ; #84816: <==closure== 55654 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #13873: <==negation-removal== 82217 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21128: <==negation-removal== 13516 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22828: <==negation-removal== 74910 (pos)
                    (not (Pa_not_checked_p6))

                    ; #29612: <==uncertain_firing== 84816 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #33393: <==uncertain_firing== 77447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41170: <==uncertain_firing== 55654 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #45124: <==negation-removal== 27327 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46609: <==negation-removal== 35536 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #46650: <==negation-removal== 47012 (pos)
                    (not (Bb_not_checked_p6))

                    ; #50909: <==negation-removal== 55654 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #63381: <==negation-removal== 84640 (pos)
                    (not (Pd_not_checked_p6))

                    ; #64005: <==uncertain_firing== 35536 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #66912: <==negation-removal== 58919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #68754: <==negation-removal== 77447 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #76066: <==negation-removal== 52202 (pos)
                    (not (Bd_not_checked_p6))

                    ; #80479: <==negation-removal== 84816 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #86833: <==negation-removal== 76878 (pos)
                    (not (not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #29716: origin
                    (checked_p7)

                    ; #33354: <==commonly_known== 29716 (pos)
                    (Ba_checked_p7)

                    ; #38718: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #40022: <==commonly_known== 29716 (pos)
                    (Bb_checked_p7)

                    ; #44144: <==closure== 81618 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #59084: <==commonly_known== 55269 (neg)
                    (Pd_checked_p7)

                    ; #61991: <==commonly_known== 29716 (pos)
                    (Bd_checked_p7)

                    ; #62379: <==commonly_known== 55269 (neg)
                    (Pa_checked_p7)

                    ; #62934: <==closure== 38718 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #64563: <==commonly_known== 55269 (neg)
                    (Pb_checked_p7)

                    ; #80475: <==commonly_known== 55269 (neg)
                    (Pc_checked_p7)

                    ; #81618: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #89727: <==commonly_known== 29716 (pos)
                    (Bc_checked_p7)

                    ; #19904: <==negation-removal== 59084 (pos)
                    (not (Bd_not_checked_p7))

                    ; #26271: <==negation-removal== 33354 (pos)
                    (not (Pa_not_checked_p7))

                    ; #28990: <==uncertain_firing== 38718 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #31844: <==negation-removal== 44144 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #35891: <==negation-removal== 62379 (pos)
                    (not (Ba_not_checked_p7))

                    ; #38303: <==negation-removal== 61991 (pos)
                    (not (Pd_not_checked_p7))

                    ; #40713: <==uncertain_firing== 81618 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #48470: <==negation-removal== 80475 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55269: <==negation-removal== 29716 (pos)
                    (not (not_checked_p7))

                    ; #55294: <==negation-removal== 40022 (pos)
                    (not (Pb_not_checked_p7))

                    ; #55404: <==uncertain_firing== 62934 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #58049: <==negation-removal== 62934 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #74156: <==negation-removal== 64563 (pos)
                    (not (Bb_not_checked_p7))

                    ; #75271: <==negation-removal== 38718 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #80034: <==uncertain_firing== 44144 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #83621: <==negation-removal== 89727 (pos)
                    (not (Pc_not_checked_p7))

                    ; #92001: <==negation-removal== 81618 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16624: <==commonly_known== 64535 (pos)
                    (Bc_checked_p8)

                    ; #36259: <==commonly_known== 25681 (neg)
                    (Pa_checked_p8)

                    ; #38209: <==closure== 88677 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #38884: <==commonly_known== 64535 (pos)
                    (Ba_checked_p8)

                    ; #41253: <==commonly_known== 25681 (neg)
                    (Pd_checked_p8)

                    ; #52687: <==commonly_known== 64535 (pos)
                    (Bd_checked_p8)

                    ; #57445: <==commonly_known== 64535 (pos)
                    (Bb_checked_p8)

                    ; #62547: <==closure== 89658 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #63752: <==commonly_known== 25681 (neg)
                    (Pb_checked_p8)

                    ; #64535: origin
                    (checked_p8)

                    ; #81332: <==commonly_known== 25681 (neg)
                    (Pc_checked_p8)

                    ; #88677: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #89658: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #12109: <==negation-removal== 63752 (pos)
                    (not (Bb_not_checked_p8))

                    ; #12339: <==uncertain_firing== 38209 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #25681: <==negation-removal== 64535 (pos)
                    (not (not_checked_p8))

                    ; #26527: <==negation-removal== 38209 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #27326: <==uncertain_firing== 89658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #27496: <==negation-removal== 38884 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35615: <==uncertain_firing== 62547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #37101: <==negation-removal== 89658 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #40590: <==negation-removal== 57445 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44833: <==negation-removal== 41253 (pos)
                    (not (Bd_not_checked_p8))

                    ; #52729: <==negation-removal== 36259 (pos)
                    (not (Ba_not_checked_p8))

                    ; #57387: <==uncertain_firing== 88677 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #65512: <==negation-removal== 16624 (pos)
                    (not (Pc_not_checked_p8))

                    ; #80998: <==negation-removal== 88677 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #84481: <==negation-removal== 62547 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #88606: <==negation-removal== 81332 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90885: <==negation-removal== 52687 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10274: <==commonly_known== 10121 (neg)
                    (Pd_checked_p9)

                    ; #23836: <==commonly_known== 10121 (neg)
                    (Pc_checked_p9)

                    ; #31060: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #37596: <==commonly_known== 90762 (pos)
                    (Ba_checked_p9)

                    ; #52353: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #58453: <==commonly_known== 90762 (pos)
                    (Bc_checked_p9)

                    ; #70061: <==commonly_known== 10121 (neg)
                    (Pb_checked_p9)

                    ; #72116: <==commonly_known== 90762 (pos)
                    (Bd_checked_p9)

                    ; #76027: <==commonly_known== 90762 (pos)
                    (Bb_checked_p9)

                    ; #76969: <==commonly_known== 10121 (neg)
                    (Pa_checked_p9)

                    ; #80405: <==closure== 31060 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #90671: <==closure== 52353 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #90762: origin
                    (checked_p9)

                    ; #10121: <==negation-removal== 90762 (pos)
                    (not (not_checked_p9))

                    ; #15303: <==negation-removal== 70061 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16957: <==negation-removal== 37596 (pos)
                    (not (Pa_not_checked_p9))

                    ; #28252: <==uncertain_firing== 90671 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #32464: <==uncertain_firing== 31060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #49321: <==uncertain_firing== 80405 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #50548: <==negation-removal== 76027 (pos)
                    (not (Pb_not_checked_p9))

                    ; #53654: <==negation-removal== 80405 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #54948: <==negation-removal== 10274 (pos)
                    (not (Bd_not_checked_p9))

                    ; #65216: <==negation-removal== 76969 (pos)
                    (not (Ba_not_checked_p9))

                    ; #65229: <==negation-removal== 90671 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #73394: <==negation-removal== 72116 (pos)
                    (not (Pd_not_checked_p9))

                    ; #75310: <==negation-removal== 31060 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #77298: <==negation-removal== 23836 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81327: <==uncertain_firing== 52353 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #85273: <==negation-removal== 58453 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89883: <==negation-removal== 52353 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12655: origin
                    (checked_p10)

                    ; #15874: <==commonly_known== 12655 (pos)
                    (Bc_checked_p10)

                    ; #17665: <==commonly_known== 41337 (neg)
                    (Pc_checked_p10)

                    ; #29926: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #30603: <==closure== 55359 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #32672: <==commonly_known== 12655 (pos)
                    (Ba_checked_p10)

                    ; #50410: <==commonly_known== 41337 (neg)
                    (Pa_checked_p10)

                    ; #55359: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #59967: <==closure== 29926 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #61528: <==commonly_known== 41337 (neg)
                    (Pd_checked_p10)

                    ; #61678: <==commonly_known== 12655 (pos)
                    (Bb_checked_p10)

                    ; #90742: <==commonly_known== 41337 (neg)
                    (Pb_checked_p10)

                    ; #91501: <==commonly_known== 12655 (pos)
                    (Bd_checked_p10)

                    ; #27340: <==negation-removal== 91501 (pos)
                    (not (Pd_not_checked_p10))

                    ; #32563: <==uncertain_firing== 29926 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #38196: <==negation-removal== 61528 (pos)
                    (not (Bd_not_checked_p10))

                    ; #38370: <==uncertain_firing== 55359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #41337: <==negation-removal== 12655 (pos)
                    (not (not_checked_p10))

                    ; #57055: <==negation-removal== 15874 (pos)
                    (not (Pc_not_checked_p10))

                    ; #57620: <==negation-removal== 90742 (pos)
                    (not (Bb_not_checked_p10))

                    ; #61216: <==negation-removal== 55359 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #63273: <==negation-removal== 29926 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #67954: <==negation-removal== 17665 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69960: <==negation-removal== 32672 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70959: <==negation-removal== 61678 (pos)
                    (not (Pb_not_checked_p10))

                    ; #71430: <==uncertain_firing== 30603 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #72312: <==negation-removal== 59967 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #75096: <==negation-removal== 30603 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #76803: <==negation-removal== 50410 (pos)
                    (not (Ba_not_checked_p10))

                    ; #87923: <==uncertain_firing== 59967 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16928: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20486: <==commonly_known== 60593 (pos)
                    (Ba_checked_p11)

                    ; #24837: <==commonly_known== 60593 (pos)
                    (Bc_checked_p11)

                    ; #40028: <==commonly_known== 89941 (neg)
                    (Pb_checked_p11)

                    ; #46616: <==commonly_known== 89941 (neg)
                    (Pa_checked_p11)

                    ; #51072: <==commonly_known== 89941 (neg)
                    (Pd_checked_p11)

                    ; #59130: <==commonly_known== 89941 (neg)
                    (Pc_checked_p11)

                    ; #60593: origin
                    (checked_p11)

                    ; #61127: <==commonly_known== 60593 (pos)
                    (Bb_checked_p11)

                    ; #68022: <==commonly_known== 60593 (pos)
                    (Bd_checked_p11)

                    ; #74039: <==closure== 16928 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #87490: <==closure== 94629 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #94629: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #11454: <==uncertain_firing== 16928 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #14337: <==negation-removal== 20486 (pos)
                    (not (Pa_not_checked_p11))

                    ; #19676: <==negation-removal== 16928 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #31522: <==uncertain_firing== 74039 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #38700: <==negation-removal== 87490 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #42141: <==negation-removal== 94629 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #61401: <==negation-removal== 61127 (pos)
                    (not (Pb_not_checked_p11))

                    ; #67916: <==negation-removal== 51072 (pos)
                    (not (Bd_not_checked_p11))

                    ; #68791: <==negation-removal== 74039 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #69396: <==uncertain_firing== 94629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #77117: <==negation-removal== 68022 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81422: <==negation-removal== 59130 (pos)
                    (not (Bc_not_checked_p11))

                    ; #83297: <==uncertain_firing== 87490 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #83889: <==negation-removal== 24837 (pos)
                    (not (Pc_not_checked_p11))

                    ; #87054: <==negation-removal== 46616 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88496: <==negation-removal== 40028 (pos)
                    (not (Bb_not_checked_p11))

                    ; #89941: <==negation-removal== 60593 (pos)
                    (not (not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12438: <==commonly_known== 84492 (pos)
                    (Bd_checked_p12)

                    ; #19554: <==commonly_known== 28454 (neg)
                    (Pc_checked_p12)

                    ; #22892: <==closure== 80265 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #51848: <==commonly_known== 84492 (pos)
                    (Bc_checked_p12)

                    ; #54887: <==commonly_known== 28454 (neg)
                    (Pd_checked_p12)

                    ; #62764: <==closure== 81045 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #74638: <==commonly_known== 28454 (neg)
                    (Pb_checked_p12)

                    ; #80265: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #81045: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #81404: <==commonly_known== 84492 (pos)
                    (Ba_checked_p12)

                    ; #84492: origin
                    (checked_p12)

                    ; #87233: <==commonly_known== 28454 (neg)
                    (Pa_checked_p12)

                    ; #92118: <==commonly_known== 84492 (pos)
                    (Bb_checked_p12)

                    ; #11251: <==uncertain_firing== 62764 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #12069: <==negation-removal== 81404 (pos)
                    (not (Pa_not_checked_p12))

                    ; #16862: <==negation-removal== 92118 (pos)
                    (not (Pb_not_checked_p12))

                    ; #21230: <==negation-removal== 51848 (pos)
                    (not (Pc_not_checked_p12))

                    ; #27636: <==negation-removal== 87233 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27683: <==negation-removal== 19554 (pos)
                    (not (Bc_not_checked_p12))

                    ; #28029: <==uncertain_firing== 80265 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #28454: <==negation-removal== 84492 (pos)
                    (not (not_checked_p12))

                    ; #34301: <==negation-removal== 54887 (pos)
                    (not (Bd_not_checked_p12))

                    ; #40860: <==negation-removal== 12438 (pos)
                    (not (Pd_not_checked_p12))

                    ; #41036: <==negation-removal== 22892 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #54397: <==negation-removal== 80265 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #59586: <==negation-removal== 81045 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #63555: <==uncertain_firing== 22892 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #63847: <==uncertain_firing== 81045 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73099: <==negation-removal== 62764 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #76939: <==negation-removal== 74638 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #18248: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22308: origin
                    (checked_p1)

                    ; #32260: <==closure== 18248 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #32717: <==commonly_known== 31815 (neg)
                    (Pb_checked_p1)

                    ; #37589: <==commonly_known== 22308 (pos)
                    (Ba_checked_p1)

                    ; #47984: <==commonly_known== 22308 (pos)
                    (Bc_checked_p1)

                    ; #53111: <==commonly_known== 31815 (neg)
                    (Pc_checked_p1)

                    ; #56329: <==commonly_known== 31815 (neg)
                    (Pd_checked_p1)

                    ; #59500: <==commonly_known== 31815 (neg)
                    (Pa_checked_p1)

                    ; #80486: <==closure== 88222 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #81439: <==commonly_known== 22308 (pos)
                    (Bb_checked_p1)

                    ; #85589: <==commonly_known== 22308 (pos)
                    (Bd_checked_p1)

                    ; #88222: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #12959: <==negation-removal== 32717 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13110: <==negation-removal== 59500 (pos)
                    (not (Ba_not_checked_p1))

                    ; #13962: <==negation-removal== 81439 (pos)
                    (not (Pb_not_checked_p1))

                    ; #16224: <==uncertain_firing== 32260 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #24725: <==negation-removal== 53111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26220: <==negation-removal== 85589 (pos)
                    (not (Pd_not_checked_p1))

                    ; #26701: <==uncertain_firing== 80486 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #30308: <==negation-removal== 47984 (pos)
                    (not (Pc_not_checked_p1))

                    ; #31815: <==negation-removal== 22308 (pos)
                    (not (not_checked_p1))

                    ; #37661: <==negation-removal== 80486 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37972: <==negation-removal== 18248 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #43156: <==negation-removal== 32260 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #44664: <==uncertain_firing== 18248 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #48396: <==uncertain_firing== 88222 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #60256: <==negation-removal== 88222 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #66200: <==negation-removal== 56329 (pos)
                    (not (Bd_not_checked_p1))

                    ; #83239: <==negation-removal== 37589 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10413: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #17710: <==closure== 78990 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #26246: <==commonly_known== 66299 (pos)
                    (Bc_checked_p2)

                    ; #30187: <==commonly_known== 46222 (neg)
                    (Pa_checked_p2)

                    ; #39946: <==commonly_known== 46222 (neg)
                    (Pc_checked_p2)

                    ; #42805: <==commonly_known== 66299 (pos)
                    (Bb_checked_p2)

                    ; #45882: <==commonly_known== 66299 (pos)
                    (Ba_checked_p2)

                    ; #48386: <==commonly_known== 46222 (neg)
                    (Pb_checked_p2)

                    ; #59752: <==commonly_known== 66299 (pos)
                    (Bd_checked_p2)

                    ; #66299: origin
                    (checked_p2)

                    ; #76991: <==commonly_known== 46222 (neg)
                    (Pd_checked_p2)

                    ; #78990: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #89262: <==closure== 10413 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #11802: <==uncertain_firing== 10413 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #12216: <==negation-removal== 48386 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21012: <==negation-removal== 39946 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27652: <==negation-removal== 45882 (pos)
                    (not (Pa_not_checked_p2))

                    ; #36740: <==negation-removal== 17710 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #46222: <==negation-removal== 66299 (pos)
                    (not (not_checked_p2))

                    ; #58231: <==negation-removal== 10413 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #64611: <==negation-removal== 78990 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69763: <==negation-removal== 42805 (pos)
                    (not (Pb_not_checked_p2))

                    ; #72877: <==uncertain_firing== 89262 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #74248: <==negation-removal== 26246 (pos)
                    (not (Pc_not_checked_p2))

                    ; #76977: <==uncertain_firing== 78990 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #79458: <==negation-removal== 30187 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79642: <==negation-removal== 59752 (pos)
                    (not (Pd_not_checked_p2))

                    ; #80872: <==negation-removal== 89262 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83339: <==negation-removal== 76991 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86236: <==uncertain_firing== 17710 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12343: <==commonly_known== 18317 (pos)
                    (Bc_checked_p3)

                    ; #18232: <==commonly_known== 18317 (pos)
                    (Ba_checked_p3)

                    ; #18317: origin
                    (checked_p3)

                    ; #24356: <==closure== 65397 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #26097: <==commonly_known== 18317 (pos)
                    (Bb_checked_p3)

                    ; #31768: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #33148: <==closure== 31768 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #57850: <==commonly_known== 30915 (neg)
                    (Pa_checked_p3)

                    ; #59796: <==commonly_known== 30915 (neg)
                    (Pb_checked_p3)

                    ; #64891: <==commonly_known== 30915 (neg)
                    (Pc_checked_p3)

                    ; #65397: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #73186: <==commonly_known== 18317 (pos)
                    (Bd_checked_p3)

                    ; #90910: <==commonly_known== 30915 (neg)
                    (Pd_checked_p3)

                    ; #14862: <==negation-removal== 64891 (pos)
                    (not (Bc_not_checked_p3))

                    ; #15295: <==negation-removal== 33148 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25813: <==negation-removal== 90910 (pos)
                    (not (Bd_not_checked_p3))

                    ; #30884: <==negation-removal== 18232 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30915: <==negation-removal== 18317 (pos)
                    (not (not_checked_p3))

                    ; #42372: <==negation-removal== 73186 (pos)
                    (not (Pd_not_checked_p3))

                    ; #50813: <==uncertain_firing== 24356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51168: <==uncertain_firing== 65397 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #66573: <==uncertain_firing== 31768 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #67256: <==negation-removal== 31768 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #72339: <==negation-removal== 65397 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #76785: <==negation-removal== 59796 (pos)
                    (not (Bb_not_checked_p3))

                    ; #84776: <==negation-removal== 24356 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #86392: <==negation-removal== 26097 (pos)
                    (not (Pb_not_checked_p3))

                    ; #89324: <==negation-removal== 57850 (pos)
                    (not (Ba_not_checked_p3))

                    ; #89653: <==uncertain_firing== 33148 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #95563: <==negation-removal== 12343 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12395: origin
                    (checked_p4)

                    ; #12830: <==commonly_known== 20193 (neg)
                    (Pb_checked_p4)

                    ; #15185: <==closure== 44885 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #20196: <==commonly_known== 20193 (neg)
                    (Pc_checked_p4)

                    ; #35818: <==commonly_known== 12395 (pos)
                    (Ba_checked_p4)

                    ; #44885: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #57130: <==closure== 72665 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #61763: <==commonly_known== 12395 (pos)
                    (Bb_checked_p4)

                    ; #67081: <==commonly_known== 20193 (neg)
                    (Pa_checked_p4)

                    ; #67312: <==commonly_known== 12395 (pos)
                    (Bd_checked_p4)

                    ; #72665: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #73051: <==commonly_known== 12395 (pos)
                    (Bc_checked_p4)

                    ; #79680: <==commonly_known== 20193 (neg)
                    (Pd_checked_p4)

                    ; #20193: <==negation-removal== 12395 (pos)
                    (not (not_checked_p4))

                    ; #25944: <==negation-removal== 67312 (pos)
                    (not (Pd_not_checked_p4))

                    ; #35266: <==negation-removal== 72665 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39851: <==negation-removal== 15185 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #42358: <==negation-removal== 57130 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48805: <==uncertain_firing== 72665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #54244: <==negation-removal== 73051 (pos)
                    (not (Pc_not_checked_p4))

                    ; #59718: <==uncertain_firing== 15185 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #62312: <==negation-removal== 44885 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #66128: <==negation-removal== 12830 (pos)
                    (not (Bb_not_checked_p4))

                    ; #67642: <==negation-removal== 67081 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68209: <==negation-removal== 35818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71894: <==negation-removal== 20196 (pos)
                    (not (Bc_not_checked_p4))

                    ; #76822: <==negation-removal== 61763 (pos)
                    (not (Pb_not_checked_p4))

                    ; #86367: <==negation-removal== 79680 (pos)
                    (not (Bd_not_checked_p4))

                    ; #90610: <==uncertain_firing== 57130 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #90883: <==uncertain_firing== 44885 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12420: <==commonly_known== 91323 (pos)
                    (Bb_checked_p5)

                    ; #17004: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #19165: <==commonly_known== 17643 (neg)
                    (Pc_checked_p5)

                    ; #34175: <==commonly_known== 91323 (pos)
                    (Ba_checked_p5)

                    ; #42413: <==commonly_known== 17643 (neg)
                    (Pb_checked_p5)

                    ; #63531: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66108: <==closure== 17004 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #71992: <==commonly_known== 91323 (pos)
                    (Bc_checked_p5)

                    ; #78975: <==commonly_known== 17643 (neg)
                    (Pd_checked_p5)

                    ; #84974: <==closure== 63531 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #86771: <==commonly_known== 91323 (pos)
                    (Bd_checked_p5)

                    ; #91323: origin
                    (checked_p5)

                    ; #92190: <==commonly_known== 17643 (neg)
                    (Pa_checked_p5)

                    ; #12586: <==uncertain_firing== 63531 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #14489: <==negation-removal== 92190 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17643: <==negation-removal== 91323 (pos)
                    (not (not_checked_p5))

                    ; #37285: <==negation-removal== 84974 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #38580: <==negation-removal== 34175 (pos)
                    (not (Pa_not_checked_p5))

                    ; #44652: <==negation-removal== 71992 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54873: <==negation-removal== 42413 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55784: <==uncertain_firing== 17004 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #58868: <==negation-removal== 19165 (pos)
                    (not (Bc_not_checked_p5))

                    ; #67280: <==negation-removal== 12420 (pos)
                    (not (Pb_not_checked_p5))

                    ; #71922: <==negation-removal== 63531 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #74839: <==negation-removal== 86771 (pos)
                    (not (Pd_not_checked_p5))

                    ; #76125: <==negation-removal== 17004 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #76475: <==uncertain_firing== 84974 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #76694: <==negation-removal== 66108 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #77436: <==negation-removal== 78975 (pos)
                    (not (Bd_not_checked_p5))

                    ; #81921: <==uncertain_firing== 66108 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13516: <==commonly_known== 76878 (pos)
                    (Bc_checked_p6)

                    ; #27327: <==commonly_known== 86833 (neg)
                    (Pc_checked_p6)

                    ; #47012: <==commonly_known== 86833 (neg)
                    (Pb_checked_p6)

                    ; #52202: <==commonly_known== 86833 (neg)
                    (Pd_checked_p6)

                    ; #55421: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #58919: <==commonly_known== 86833 (neg)
                    (Pa_checked_p6)

                    ; #60565: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #67949: <==closure== 60565 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #74910: <==commonly_known== 76878 (pos)
                    (Ba_checked_p6)

                    ; #75702: <==closure== 55421 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #76878: origin
                    (checked_p6)

                    ; #82217: <==commonly_known== 76878 (pos)
                    (Bb_checked_p6)

                    ; #84640: <==commonly_known== 76878 (pos)
                    (Bd_checked_p6)

                    ; #10435: <==uncertain_firing== 60565 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #13873: <==negation-removal== 82217 (pos)
                    (not (Pb_not_checked_p6))

                    ; #19202: <==uncertain_firing== 55421 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #19333: <==negation-removal== 75702 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #21128: <==negation-removal== 13516 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22828: <==negation-removal== 74910 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42245: <==negation-removal== 60565 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #45124: <==negation-removal== 27327 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46650: <==negation-removal== 47012 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63381: <==negation-removal== 84640 (pos)
                    (not (Pd_not_checked_p6))

                    ; #66912: <==negation-removal== 58919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76066: <==negation-removal== 52202 (pos)
                    (not (Bd_not_checked_p6))

                    ; #77234: <==uncertain_firing== 67949 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #77457: <==uncertain_firing== 75702 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #86274: <==negation-removal== 67949 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #86833: <==negation-removal== 76878 (pos)
                    (not (not_checked_p6))

                    ; #87686: <==negation-removal== 55421 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #29716: origin
                    (checked_p7)

                    ; #33354: <==commonly_known== 29716 (pos)
                    (Ba_checked_p7)

                    ; #40022: <==commonly_known== 29716 (pos)
                    (Bb_checked_p7)

                    ; #59084: <==commonly_known== 55269 (neg)
                    (Pd_checked_p7)

                    ; #61991: <==commonly_known== 29716 (pos)
                    (Bd_checked_p7)

                    ; #62379: <==commonly_known== 55269 (neg)
                    (Pa_checked_p7)

                    ; #64563: <==commonly_known== 55269 (neg)
                    (Pb_checked_p7)

                    ; #80175: <==closure== 82596 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #80475: <==commonly_known== 55269 (neg)
                    (Pc_checked_p7)

                    ; #82596: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #84471: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #89727: <==commonly_known== 29716 (pos)
                    (Bc_checked_p7)

                    ; #91888: <==closure== 84471 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #14946: <==negation-removal== 91888 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #19904: <==negation-removal== 59084 (pos)
                    (not (Bd_not_checked_p7))

                    ; #26271: <==negation-removal== 33354 (pos)
                    (not (Pa_not_checked_p7))

                    ; #26338: <==negation-removal== 84471 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35630: <==negation-removal== 82596 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #35891: <==negation-removal== 62379 (pos)
                    (not (Ba_not_checked_p7))

                    ; #37143: <==uncertain_firing== 82596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38303: <==negation-removal== 61991 (pos)
                    (not (Pd_not_checked_p7))

                    ; #48470: <==negation-removal== 80475 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55269: <==negation-removal== 29716 (pos)
                    (not (not_checked_p7))

                    ; #55294: <==negation-removal== 40022 (pos)
                    (not (Pb_not_checked_p7))

                    ; #63649: <==uncertain_firing== 84471 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #73985: <==uncertain_firing== 80175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74156: <==negation-removal== 64563 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81121: <==negation-removal== 80175 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #83621: <==negation-removal== 89727 (pos)
                    (not (Pc_not_checked_p7))

                    ; #87435: <==uncertain_firing== 91888 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16624: <==commonly_known== 64535 (pos)
                    (Bc_checked_p8)

                    ; #25223: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #36259: <==commonly_known== 25681 (neg)
                    (Pa_checked_p8)

                    ; #38884: <==commonly_known== 64535 (pos)
                    (Ba_checked_p8)

                    ; #41253: <==commonly_known== 25681 (neg)
                    (Pd_checked_p8)

                    ; #52687: <==commonly_known== 64535 (pos)
                    (Bd_checked_p8)

                    ; #57445: <==commonly_known== 64535 (pos)
                    (Bb_checked_p8)

                    ; #63752: <==commonly_known== 25681 (neg)
                    (Pb_checked_p8)

                    ; #64535: origin
                    (checked_p8)

                    ; #75771: <==closure== 79354 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #79354: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #81332: <==commonly_known== 25681 (neg)
                    (Pc_checked_p8)

                    ; #83535: <==closure== 25223 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #12109: <==negation-removal== 63752 (pos)
                    (not (Bb_not_checked_p8))

                    ; #25681: <==negation-removal== 64535 (pos)
                    (not (not_checked_p8))

                    ; #27496: <==negation-removal== 38884 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32282: <==uncertain_firing== 83535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #39058: <==negation-removal== 79354 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #40563: <==negation-removal== 75771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #40590: <==negation-removal== 57445 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44833: <==negation-removal== 41253 (pos)
                    (not (Bd_not_checked_p8))

                    ; #52729: <==negation-removal== 36259 (pos)
                    (not (Ba_not_checked_p8))

                    ; #58685: <==uncertain_firing== 75771 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #63083: <==uncertain_firing== 25223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #65512: <==negation-removal== 16624 (pos)
                    (not (Pc_not_checked_p8))

                    ; #84664: <==negation-removal== 83535 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85496: <==uncertain_firing== 79354 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #88606: <==negation-removal== 81332 (pos)
                    (not (Bc_not_checked_p8))

                    ; #88878: <==negation-removal== 25223 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #90885: <==negation-removal== 52687 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10274: <==commonly_known== 10121 (neg)
                    (Pd_checked_p9)

                    ; #23836: <==commonly_known== 10121 (neg)
                    (Pc_checked_p9)

                    ; #32226: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #32666: <==closure== 49081 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #37596: <==commonly_known== 90762 (pos)
                    (Ba_checked_p9)

                    ; #47922: <==closure== 32226 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #49081: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #58453: <==commonly_known== 90762 (pos)
                    (Bc_checked_p9)

                    ; #70061: <==commonly_known== 10121 (neg)
                    (Pb_checked_p9)

                    ; #72116: <==commonly_known== 90762 (pos)
                    (Bd_checked_p9)

                    ; #76027: <==commonly_known== 90762 (pos)
                    (Bb_checked_p9)

                    ; #76969: <==commonly_known== 10121 (neg)
                    (Pa_checked_p9)

                    ; #90762: origin
                    (checked_p9)

                    ; #10121: <==negation-removal== 90762 (pos)
                    (not (not_checked_p9))

                    ; #13609: <==uncertain_firing== 49081 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #15303: <==negation-removal== 70061 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16957: <==negation-removal== 37596 (pos)
                    (not (Pa_not_checked_p9))

                    ; #22775: <==negation-removal== 32226 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #40701: <==uncertain_firing== 32226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #50548: <==negation-removal== 76027 (pos)
                    (not (Pb_not_checked_p9))

                    ; #53908: <==negation-removal== 32666 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #54948: <==negation-removal== 10274 (pos)
                    (not (Bd_not_checked_p9))

                    ; #65216: <==negation-removal== 76969 (pos)
                    (not (Ba_not_checked_p9))

                    ; #68971: <==negation-removal== 47922 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #70082: <==uncertain_firing== 47922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #73394: <==negation-removal== 72116 (pos)
                    (not (Pd_not_checked_p9))

                    ; #77298: <==negation-removal== 23836 (pos)
                    (not (Bc_not_checked_p9))

                    ; #84741: <==negation-removal== 49081 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #85273: <==negation-removal== 58453 (pos)
                    (not (Pc_not_checked_p9))

                    ; #98873: <==uncertain_firing== 32666 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12655: origin
                    (checked_p10)

                    ; #15874: <==commonly_known== 12655 (pos)
                    (Bc_checked_p10)

                    ; #17665: <==commonly_known== 41337 (neg)
                    (Pc_checked_p10)

                    ; #25511: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #32672: <==commonly_known== 12655 (pos)
                    (Ba_checked_p10)

                    ; #38319: <==closure== 25511 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #50410: <==commonly_known== 41337 (neg)
                    (Pa_checked_p10)

                    ; #61528: <==commonly_known== 41337 (neg)
                    (Pd_checked_p10)

                    ; #61678: <==commonly_known== 12655 (pos)
                    (Bb_checked_p10)

                    ; #67883: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #78539: <==closure== 67883 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #90742: <==commonly_known== 41337 (neg)
                    (Pb_checked_p10)

                    ; #91501: <==commonly_known== 12655 (pos)
                    (Bd_checked_p10)

                    ; #27340: <==negation-removal== 91501 (pos)
                    (not (Pd_not_checked_p10))

                    ; #38196: <==negation-removal== 61528 (pos)
                    (not (Bd_not_checked_p10))

                    ; #40097: <==uncertain_firing== 38319 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #41337: <==negation-removal== 12655 (pos)
                    (not (not_checked_p10))

                    ; #50317: <==uncertain_firing== 78539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #57055: <==negation-removal== 15874 (pos)
                    (not (Pc_not_checked_p10))

                    ; #57620: <==negation-removal== 90742 (pos)
                    (not (Bb_not_checked_p10))

                    ; #67954: <==negation-removal== 17665 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69960: <==negation-removal== 32672 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70959: <==negation-removal== 61678 (pos)
                    (not (Pb_not_checked_p10))

                    ; #71941: <==uncertain_firing== 25511 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #73368: <==uncertain_firing== 67883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #75125: <==negation-removal== 25511 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #76803: <==negation-removal== 50410 (pos)
                    (not (Ba_not_checked_p10))

                    ; #77503: <==negation-removal== 38319 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #78713: <==negation-removal== 78539 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #79065: <==negation-removal== 67883 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20486: <==commonly_known== 60593 (pos)
                    (Ba_checked_p11)

                    ; #24837: <==commonly_known== 60593 (pos)
                    (Bc_checked_p11)

                    ; #40028: <==commonly_known== 89941 (neg)
                    (Pb_checked_p11)

                    ; #41261: <==closure== 46023 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #46023: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #46616: <==commonly_known== 89941 (neg)
                    (Pa_checked_p11)

                    ; #51072: <==commonly_known== 89941 (neg)
                    (Pd_checked_p11)

                    ; #53648: <==closure== 89161 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #59130: <==commonly_known== 89941 (neg)
                    (Pc_checked_p11)

                    ; #60593: origin
                    (checked_p11)

                    ; #61127: <==commonly_known== 60593 (pos)
                    (Bb_checked_p11)

                    ; #68022: <==commonly_known== 60593 (pos)
                    (Bd_checked_p11)

                    ; #89161: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #14337: <==negation-removal== 20486 (pos)
                    (not (Pa_not_checked_p11))

                    ; #22779: <==negation-removal== 46023 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #30037: <==negation-removal== 53648 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #48352: <==negation-removal== 89161 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #61401: <==negation-removal== 61127 (pos)
                    (not (Pb_not_checked_p11))

                    ; #67916: <==negation-removal== 51072 (pos)
                    (not (Bd_not_checked_p11))

                    ; #68881: <==uncertain_firing== 53648 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #75469: <==uncertain_firing== 41261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #77117: <==negation-removal== 68022 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81422: <==negation-removal== 59130 (pos)
                    (not (Bc_not_checked_p11))

                    ; #83889: <==negation-removal== 24837 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84536: <==uncertain_firing== 46023 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #87054: <==negation-removal== 46616 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88496: <==negation-removal== 40028 (pos)
                    (not (Bb_not_checked_p11))

                    ; #89898: <==negation-removal== 41261 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #89941: <==negation-removal== 60593 (pos)
                    (not (not_checked_p11))

                    ; #90312: <==uncertain_firing== 89161 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12438: <==commonly_known== 84492 (pos)
                    (Bd_checked_p12)

                    ; #19554: <==commonly_known== 28454 (neg)
                    (Pc_checked_p12)

                    ; #28864: <==closure== 91055 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #51848: <==commonly_known== 84492 (pos)
                    (Bc_checked_p12)

                    ; #54887: <==commonly_known== 28454 (neg)
                    (Pd_checked_p12)

                    ; #70669: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #74638: <==commonly_known== 28454 (neg)
                    (Pb_checked_p12)

                    ; #81404: <==commonly_known== 84492 (pos)
                    (Ba_checked_p12)

                    ; #84182: <==closure== 70669 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #84492: origin
                    (checked_p12)

                    ; #87233: <==commonly_known== 28454 (neg)
                    (Pa_checked_p12)

                    ; #91055: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #92118: <==commonly_known== 84492 (pos)
                    (Bb_checked_p12)

                    ; #12069: <==negation-removal== 81404 (pos)
                    (not (Pa_not_checked_p12))

                    ; #16862: <==negation-removal== 92118 (pos)
                    (not (Pb_not_checked_p12))

                    ; #20073: <==uncertain_firing== 84182 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #20320: <==uncertain_firing== 70669 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #21230: <==negation-removal== 51848 (pos)
                    (not (Pc_not_checked_p12))

                    ; #27636: <==negation-removal== 87233 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27683: <==negation-removal== 19554 (pos)
                    (not (Bc_not_checked_p12))

                    ; #28454: <==negation-removal== 84492 (pos)
                    (not (not_checked_p12))

                    ; #33531: <==negation-removal== 70669 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #34301: <==negation-removal== 54887 (pos)
                    (not (Bd_not_checked_p12))

                    ; #40860: <==negation-removal== 12438 (pos)
                    (not (Pd_not_checked_p12))

                    ; #41869: <==uncertain_firing== 28864 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #70239: <==uncertain_firing== 91055 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #76939: <==negation-removal== 74638 (pos)
                    (not (Bb_not_checked_p12))

                    ; #78243: <==negation-removal== 91055 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #80525: <==negation-removal== 28864 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #86492: <==negation-removal== 84182 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #22308: origin
                    (checked_p1)

                    ; #22378: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #23331: <==closure== 22378 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #26166: <==closure== 66525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #32717: <==commonly_known== 31815 (neg)
                    (Pb_checked_p1)

                    ; #37589: <==commonly_known== 22308 (pos)
                    (Ba_checked_p1)

                    ; #47984: <==commonly_known== 22308 (pos)
                    (Bc_checked_p1)

                    ; #53111: <==commonly_known== 31815 (neg)
                    (Pc_checked_p1)

                    ; #56329: <==commonly_known== 31815 (neg)
                    (Pd_checked_p1)

                    ; #59500: <==commonly_known== 31815 (neg)
                    (Pa_checked_p1)

                    ; #66525: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #81439: <==commonly_known== 22308 (pos)
                    (Bb_checked_p1)

                    ; #85589: <==commonly_known== 22308 (pos)
                    (Bd_checked_p1)

                    ; #12959: <==negation-removal== 32717 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13110: <==negation-removal== 59500 (pos)
                    (not (Ba_not_checked_p1))

                    ; #13742: <==uncertain_firing== 66525 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #13962: <==negation-removal== 81439 (pos)
                    (not (Pb_not_checked_p1))

                    ; #23378: <==negation-removal== 26166 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #24725: <==negation-removal== 53111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26220: <==negation-removal== 85589 (pos)
                    (not (Pd_not_checked_p1))

                    ; #29780: <==negation-removal== 22378 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #30308: <==negation-removal== 47984 (pos)
                    (not (Pc_not_checked_p1))

                    ; #31815: <==negation-removal== 22308 (pos)
                    (not (not_checked_p1))

                    ; #33828: <==uncertain_firing== 26166 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #39525: <==negation-removal== 23331 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #47021: <==uncertain_firing== 22378 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #66200: <==negation-removal== 56329 (pos)
                    (not (Bd_not_checked_p1))

                    ; #74110: <==negation-removal== 66525 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #83239: <==negation-removal== 37589 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86491: <==uncertain_firing== 23331 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11858: <==closure== 71336 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #26246: <==commonly_known== 66299 (pos)
                    (Bc_checked_p2)

                    ; #26817: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #30187: <==commonly_known== 46222 (neg)
                    (Pa_checked_p2)

                    ; #39946: <==commonly_known== 46222 (neg)
                    (Pc_checked_p2)

                    ; #42805: <==commonly_known== 66299 (pos)
                    (Bb_checked_p2)

                    ; #45882: <==commonly_known== 66299 (pos)
                    (Ba_checked_p2)

                    ; #48386: <==commonly_known== 46222 (neg)
                    (Pb_checked_p2)

                    ; #59752: <==commonly_known== 66299 (pos)
                    (Bd_checked_p2)

                    ; #66299: origin
                    (checked_p2)

                    ; #71336: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #76991: <==commonly_known== 46222 (neg)
                    (Pd_checked_p2)

                    ; #82716: <==closure== 26817 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #12216: <==negation-removal== 48386 (pos)
                    (not (Bb_not_checked_p2))

                    ; #17599: <==negation-removal== 11858 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21012: <==negation-removal== 39946 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27652: <==negation-removal== 45882 (pos)
                    (not (Pa_not_checked_p2))

                    ; #28371: <==negation-removal== 26817 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #46222: <==negation-removal== 66299 (pos)
                    (not (not_checked_p2))

                    ; #46458: <==uncertain_firing== 11858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #47296: <==uncertain_firing== 26817 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #60606: <==negation-removal== 82716 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #63428: <==uncertain_firing== 82716 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #69763: <==negation-removal== 42805 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74248: <==negation-removal== 26246 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79458: <==negation-removal== 30187 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79642: <==negation-removal== 59752 (pos)
                    (not (Pd_not_checked_p2))

                    ; #79922: <==uncertain_firing== 71336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #83339: <==negation-removal== 76991 (pos)
                    (not (Bd_not_checked_p2))

                    ; #91935: <==negation-removal== 71336 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12343: <==commonly_known== 18317 (pos)
                    (Bc_checked_p3)

                    ; #18232: <==commonly_known== 18317 (pos)
                    (Ba_checked_p3)

                    ; #18317: origin
                    (checked_p3)

                    ; #21724: <==closure== 86494 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #26097: <==commonly_known== 18317 (pos)
                    (Bb_checked_p3)

                    ; #57850: <==commonly_known== 30915 (neg)
                    (Pa_checked_p3)

                    ; #59796: <==commonly_known== 30915 (neg)
                    (Pb_checked_p3)

                    ; #64891: <==commonly_known== 30915 (neg)
                    (Pc_checked_p3)

                    ; #73186: <==commonly_known== 18317 (pos)
                    (Bd_checked_p3)

                    ; #76683: <==closure== 97590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #86494: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #90910: <==commonly_known== 30915 (neg)
                    (Pd_checked_p3)

                    ; #97590: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #14264: <==negation-removal== 97590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #14862: <==negation-removal== 64891 (pos)
                    (not (Bc_not_checked_p3))

                    ; #19669: <==negation-removal== 76683 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #19913: <==negation-removal== 21724 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #25813: <==negation-removal== 90910 (pos)
                    (not (Bd_not_checked_p3))

                    ; #30884: <==negation-removal== 18232 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30915: <==negation-removal== 18317 (pos)
                    (not (not_checked_p3))

                    ; #35309: <==negation-removal== 86494 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35698: <==uncertain_firing== 21724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #42372: <==negation-removal== 73186 (pos)
                    (not (Pd_not_checked_p3))

                    ; #53056: <==uncertain_firing== 86494 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56743: <==uncertain_firing== 76683 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #63036: <==uncertain_firing== 97590 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #76785: <==negation-removal== 59796 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86392: <==negation-removal== 26097 (pos)
                    (not (Pb_not_checked_p3))

                    ; #89324: <==negation-removal== 57850 (pos)
                    (not (Ba_not_checked_p3))

                    ; #95563: <==negation-removal== 12343 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12395: origin
                    (checked_p4)

                    ; #12830: <==commonly_known== 20193 (neg)
                    (Pb_checked_p4)

                    ; #14394: <==closure== 58652 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #20196: <==commonly_known== 20193 (neg)
                    (Pc_checked_p4)

                    ; #35818: <==commonly_known== 12395 (pos)
                    (Ba_checked_p4)

                    ; #58652: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #60867: <==closure== 80327 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #61763: <==commonly_known== 12395 (pos)
                    (Bb_checked_p4)

                    ; #67081: <==commonly_known== 20193 (neg)
                    (Pa_checked_p4)

                    ; #67312: <==commonly_known== 12395 (pos)
                    (Bd_checked_p4)

                    ; #73051: <==commonly_known== 12395 (pos)
                    (Bc_checked_p4)

                    ; #79680: <==commonly_known== 20193 (neg)
                    (Pd_checked_p4)

                    ; #80327: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #20193: <==negation-removal== 12395 (pos)
                    (not (not_checked_p4))

                    ; #22905: <==negation-removal== 58652 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #25944: <==negation-removal== 67312 (pos)
                    (not (Pd_not_checked_p4))

                    ; #37240: <==negation-removal== 14394 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #46277: <==negation-removal== 60867 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53503: <==uncertain_firing== 80327 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #54244: <==negation-removal== 73051 (pos)
                    (not (Pc_not_checked_p4))

                    ; #59360: <==uncertain_firing== 14394 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #64156: <==uncertain_firing== 58652 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #65298: <==negation-removal== 80327 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #66128: <==negation-removal== 12830 (pos)
                    (not (Bb_not_checked_p4))

                    ; #67642: <==negation-removal== 67081 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68209: <==negation-removal== 35818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71894: <==negation-removal== 20196 (pos)
                    (not (Bc_not_checked_p4))

                    ; #76822: <==negation-removal== 61763 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85404: <==uncertain_firing== 60867 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86367: <==negation-removal== 79680 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12420: <==commonly_known== 91323 (pos)
                    (Bb_checked_p5)

                    ; #19165: <==commonly_known== 17643 (neg)
                    (Pc_checked_p5)

                    ; #30871: <==closure== 57743 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #34175: <==commonly_known== 91323 (pos)
                    (Ba_checked_p5)

                    ; #42413: <==commonly_known== 17643 (neg)
                    (Pb_checked_p5)

                    ; #57743: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71992: <==commonly_known== 91323 (pos)
                    (Bc_checked_p5)

                    ; #74915: <==closure== 94274 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #78975: <==commonly_known== 17643 (neg)
                    (Pd_checked_p5)

                    ; #86771: <==commonly_known== 91323 (pos)
                    (Bd_checked_p5)

                    ; #91323: origin
                    (checked_p5)

                    ; #92190: <==commonly_known== 17643 (neg)
                    (Pa_checked_p5)

                    ; #94274: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #14489: <==negation-removal== 92190 (pos)
                    (not (Ba_not_checked_p5))

                    ; #15493: <==uncertain_firing== 30871 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #17643: <==negation-removal== 91323 (pos)
                    (not (not_checked_p5))

                    ; #19690: <==negation-removal== 74915 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #21510: <==uncertain_firing== 57743 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #35474: <==negation-removal== 30871 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #38580: <==negation-removal== 34175 (pos)
                    (not (Pa_not_checked_p5))

                    ; #44652: <==negation-removal== 71992 (pos)
                    (not (Pc_not_checked_p5))

                    ; #46374: <==uncertain_firing== 94274 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #54873: <==negation-removal== 42413 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58143: <==negation-removal== 94274 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #58868: <==negation-removal== 19165 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59672: <==uncertain_firing== 74915 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62420: <==negation-removal== 57743 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #67280: <==negation-removal== 12420 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74839: <==negation-removal== 86771 (pos)
                    (not (Pd_not_checked_p5))

                    ; #77436: <==negation-removal== 78975 (pos)
                    (not (Bd_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13516: <==commonly_known== 76878 (pos)
                    (Bc_checked_p6)

                    ; #15030: <==closure== 64777 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #21656: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #27327: <==commonly_known== 86833 (neg)
                    (Pc_checked_p6)

                    ; #36193: <==closure== 21656 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #47012: <==commonly_known== 86833 (neg)
                    (Pb_checked_p6)

                    ; #52202: <==commonly_known== 86833 (neg)
                    (Pd_checked_p6)

                    ; #58919: <==commonly_known== 86833 (neg)
                    (Pa_checked_p6)

                    ; #64777: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74910: <==commonly_known== 76878 (pos)
                    (Ba_checked_p6)

                    ; #76878: origin
                    (checked_p6)

                    ; #82217: <==commonly_known== 76878 (pos)
                    (Bb_checked_p6)

                    ; #84640: <==commonly_known== 76878 (pos)
                    (Bd_checked_p6)

                    ; #13873: <==negation-removal== 82217 (pos)
                    (not (Pb_not_checked_p6))

                    ; #19783: <==uncertain_firing== 15030 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #21128: <==negation-removal== 13516 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22828: <==negation-removal== 74910 (pos)
                    (not (Pa_not_checked_p6))

                    ; #23486: <==negation-removal== 15030 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #39294: <==uncertain_firing== 21656 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43721: <==uncertain_firing== 36193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #45124: <==negation-removal== 27327 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46650: <==negation-removal== 47012 (pos)
                    (not (Bb_not_checked_p6))

                    ; #63381: <==negation-removal== 84640 (pos)
                    (not (Pd_not_checked_p6))

                    ; #64089: <==negation-removal== 64777 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #66912: <==negation-removal== 58919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #76066: <==negation-removal== 52202 (pos)
                    (not (Bd_not_checked_p6))

                    ; #78589: <==uncertain_firing== 64777 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #79438: <==negation-removal== 36193 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86833: <==negation-removal== 76878 (pos)
                    (not (not_checked_p6))

                    ; #90471: <==negation-removal== 21656 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16286: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #29005: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #29716: origin
                    (checked_p7)

                    ; #33082: <==closure== 29005 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #33354: <==commonly_known== 29716 (pos)
                    (Ba_checked_p7)

                    ; #40022: <==commonly_known== 29716 (pos)
                    (Bb_checked_p7)

                    ; #59084: <==commonly_known== 55269 (neg)
                    (Pd_checked_p7)

                    ; #61991: <==commonly_known== 29716 (pos)
                    (Bd_checked_p7)

                    ; #62379: <==commonly_known== 55269 (neg)
                    (Pa_checked_p7)

                    ; #64563: <==commonly_known== 55269 (neg)
                    (Pb_checked_p7)

                    ; #80475: <==commonly_known== 55269 (neg)
                    (Pc_checked_p7)

                    ; #80644: <==closure== 16286 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #89727: <==commonly_known== 29716 (pos)
                    (Bc_checked_p7)

                    ; #10294: <==negation-removal== 33082 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #19904: <==negation-removal== 59084 (pos)
                    (not (Bd_not_checked_p7))

                    ; #21376: <==negation-removal== 16286 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #26271: <==negation-removal== 33354 (pos)
                    (not (Pa_not_checked_p7))

                    ; #28775: <==uncertain_firing== 80644 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #30616: <==uncertain_firing== 16286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35891: <==negation-removal== 62379 (pos)
                    (not (Ba_not_checked_p7))

                    ; #38303: <==negation-removal== 61991 (pos)
                    (not (Pd_not_checked_p7))

                    ; #48470: <==negation-removal== 80475 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49285: <==uncertain_firing== 33082 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #49874: <==uncertain_firing== 29005 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #55269: <==negation-removal== 29716 (pos)
                    (not (not_checked_p7))

                    ; #55294: <==negation-removal== 40022 (pos)
                    (not (Pb_not_checked_p7))

                    ; #60095: <==negation-removal== 80644 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #74156: <==negation-removal== 64563 (pos)
                    (not (Bb_not_checked_p7))

                    ; #83621: <==negation-removal== 89727 (pos)
                    (not (Pc_not_checked_p7))

                    ; #84666: <==negation-removal== 29005 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16624: <==commonly_known== 64535 (pos)
                    (Bc_checked_p8)

                    ; #34349: <==closure== 59636 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #36259: <==commonly_known== 25681 (neg)
                    (Pa_checked_p8)

                    ; #38884: <==commonly_known== 64535 (pos)
                    (Ba_checked_p8)

                    ; #41253: <==commonly_known== 25681 (neg)
                    (Pd_checked_p8)

                    ; #52687: <==commonly_known== 64535 (pos)
                    (Bd_checked_p8)

                    ; #54543: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #57445: <==commonly_known== 64535 (pos)
                    (Bb_checked_p8)

                    ; #59636: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #63752: <==commonly_known== 25681 (neg)
                    (Pb_checked_p8)

                    ; #64535: origin
                    (checked_p8)

                    ; #80246: <==closure== 54543 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #81332: <==commonly_known== 25681 (neg)
                    (Pc_checked_p8)

                    ; #12109: <==negation-removal== 63752 (pos)
                    (not (Bb_not_checked_p8))

                    ; #17639: <==negation-removal== 34349 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #18677: <==uncertain_firing== 59636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #25681: <==negation-removal== 64535 (pos)
                    (not (not_checked_p8))

                    ; #27496: <==negation-removal== 38884 (pos)
                    (not (Pa_not_checked_p8))

                    ; #32859: <==negation-removal== 80246 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #40590: <==negation-removal== 57445 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44833: <==negation-removal== 41253 (pos)
                    (not (Bd_not_checked_p8))

                    ; #52729: <==negation-removal== 36259 (pos)
                    (not (Ba_not_checked_p8))

                    ; #53433: <==negation-removal== 54543 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #55805: <==uncertain_firing== 54543 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #65512: <==negation-removal== 16624 (pos)
                    (not (Pc_not_checked_p8))

                    ; #69298: <==uncertain_firing== 34349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #70141: <==negation-removal== 59636 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #81499: <==uncertain_firing== 80246 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #88606: <==negation-removal== 81332 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90885: <==negation-removal== 52687 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10274: <==commonly_known== 10121 (neg)
                    (Pd_checked_p9)

                    ; #23836: <==commonly_known== 10121 (neg)
                    (Pc_checked_p9)

                    ; #37596: <==commonly_known== 90762 (pos)
                    (Ba_checked_p9)

                    ; #43314: <==closure== 85612 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #58453: <==commonly_known== 90762 (pos)
                    (Bc_checked_p9)

                    ; #66713: <==closure== 91626 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #70061: <==commonly_known== 10121 (neg)
                    (Pb_checked_p9)

                    ; #72116: <==commonly_known== 90762 (pos)
                    (Bd_checked_p9)

                    ; #76027: <==commonly_known== 90762 (pos)
                    (Bb_checked_p9)

                    ; #76969: <==commonly_known== 10121 (neg)
                    (Pa_checked_p9)

                    ; #85612: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #90762: origin
                    (checked_p9)

                    ; #91626: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #10121: <==negation-removal== 90762 (pos)
                    (not (not_checked_p9))

                    ; #15303: <==negation-removal== 70061 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16957: <==negation-removal== 37596 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26329: <==negation-removal== 66713 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #29831: <==negation-removal== 91626 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #30445: <==uncertain_firing== 43314 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #44595: <==uncertain_firing== 91626 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48622: <==negation-removal== 85612 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #50548: <==negation-removal== 76027 (pos)
                    (not (Pb_not_checked_p9))

                    ; #54569: <==negation-removal== 43314 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #54820: <==uncertain_firing== 66713 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #54948: <==negation-removal== 10274 (pos)
                    (not (Bd_not_checked_p9))

                    ; #63893: <==uncertain_firing== 85612 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #65216: <==negation-removal== 76969 (pos)
                    (not (Ba_not_checked_p9))

                    ; #73394: <==negation-removal== 72116 (pos)
                    (not (Pd_not_checked_p9))

                    ; #77298: <==negation-removal== 23836 (pos)
                    (not (Bc_not_checked_p9))

                    ; #85273: <==negation-removal== 58453 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #12330: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #12655: origin
                    (checked_p10)

                    ; #15874: <==commonly_known== 12655 (pos)
                    (Bc_checked_p10)

                    ; #17665: <==commonly_known== 41337 (neg)
                    (Pc_checked_p10)

                    ; #21408: <==closure== 12330 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #21657: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #32672: <==commonly_known== 12655 (pos)
                    (Ba_checked_p10)

                    ; #50410: <==commonly_known== 41337 (neg)
                    (Pa_checked_p10)

                    ; #61528: <==commonly_known== 41337 (neg)
                    (Pd_checked_p10)

                    ; #61678: <==commonly_known== 12655 (pos)
                    (Bb_checked_p10)

                    ; #75587: <==closure== 21657 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #90742: <==commonly_known== 41337 (neg)
                    (Pb_checked_p10)

                    ; #91501: <==commonly_known== 12655 (pos)
                    (Bd_checked_p10)

                    ; #12480: <==negation-removal== 21657 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #21286: <==uncertain_firing== 21657 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #26040: <==negation-removal== 75587 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #27340: <==negation-removal== 91501 (pos)
                    (not (Pd_not_checked_p10))

                    ; #35095: <==uncertain_firing== 21408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #37679: <==uncertain_firing== 75587 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #38196: <==negation-removal== 61528 (pos)
                    (not (Bd_not_checked_p10))

                    ; #41337: <==negation-removal== 12655 (pos)
                    (not (not_checked_p10))

                    ; #57055: <==negation-removal== 15874 (pos)
                    (not (Pc_not_checked_p10))

                    ; #57620: <==negation-removal== 90742 (pos)
                    (not (Bb_not_checked_p10))

                    ; #58808: <==uncertain_firing== 12330 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #60428: <==negation-removal== 12330 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #67954: <==negation-removal== 17665 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69960: <==negation-removal== 32672 (pos)
                    (not (Pa_not_checked_p10))

                    ; #70959: <==negation-removal== 61678 (pos)
                    (not (Pb_not_checked_p10))

                    ; #76803: <==negation-removal== 50410 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89516: <==negation-removal== 21408 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #19477: <==closure== 29824 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #20486: <==commonly_known== 60593 (pos)
                    (Ba_checked_p11)

                    ; #22091: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #24837: <==commonly_known== 60593 (pos)
                    (Bc_checked_p11)

                    ; #29824: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #33084: <==closure== 22091 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #40028: <==commonly_known== 89941 (neg)
                    (Pb_checked_p11)

                    ; #46616: <==commonly_known== 89941 (neg)
                    (Pa_checked_p11)

                    ; #51072: <==commonly_known== 89941 (neg)
                    (Pd_checked_p11)

                    ; #59130: <==commonly_known== 89941 (neg)
                    (Pc_checked_p11)

                    ; #60593: origin
                    (checked_p11)

                    ; #61127: <==commonly_known== 60593 (pos)
                    (Bb_checked_p11)

                    ; #68022: <==commonly_known== 60593 (pos)
                    (Bd_checked_p11)

                    ; #11160: <==uncertain_firing== 33084 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #14337: <==negation-removal== 20486 (pos)
                    (not (Pa_not_checked_p11))

                    ; #17198: <==uncertain_firing== 29824 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #18284: <==uncertain_firing== 19477 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #36784: <==negation-removal== 19477 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #37936: <==uncertain_firing== 22091 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #42474: <==negation-removal== 29824 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #52580: <==negation-removal== 22091 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #61401: <==negation-removal== 61127 (pos)
                    (not (Pb_not_checked_p11))

                    ; #67916: <==negation-removal== 51072 (pos)
                    (not (Bd_not_checked_p11))

                    ; #77117: <==negation-removal== 68022 (pos)
                    (not (Pd_not_checked_p11))

                    ; #81422: <==negation-removal== 59130 (pos)
                    (not (Bc_not_checked_p11))

                    ; #83889: <==negation-removal== 24837 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84114: <==negation-removal== 33084 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #87054: <==negation-removal== 46616 (pos)
                    (not (Ba_not_checked_p11))

                    ; #88496: <==negation-removal== 40028 (pos)
                    (not (Bb_not_checked_p11))

                    ; #89941: <==negation-removal== 60593 (pos)
                    (not (not_checked_p11))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12438: <==commonly_known== 84492 (pos)
                    (Bd_checked_p12)

                    ; #19554: <==commonly_known== 28454 (neg)
                    (Pc_checked_p12)

                    ; #33257: <==closure== 72874 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #51848: <==commonly_known== 84492 (pos)
                    (Bc_checked_p12)

                    ; #54887: <==commonly_known== 28454 (neg)
                    (Pd_checked_p12)

                    ; #68202: <==closure== 73985 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #72874: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #73985: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #74638: <==commonly_known== 28454 (neg)
                    (Pb_checked_p12)

                    ; #81404: <==commonly_known== 84492 (pos)
                    (Ba_checked_p12)

                    ; #84492: origin
                    (checked_p12)

                    ; #87233: <==commonly_known== 28454 (neg)
                    (Pa_checked_p12)

                    ; #92118: <==commonly_known== 84492 (pos)
                    (Bb_checked_p12)

                    ; #12069: <==negation-removal== 81404 (pos)
                    (not (Pa_not_checked_p12))

                    ; #16862: <==negation-removal== 92118 (pos)
                    (not (Pb_not_checked_p12))

                    ; #21230: <==negation-removal== 51848 (pos)
                    (not (Pc_not_checked_p12))

                    ; #22003: <==uncertain_firing== 73985 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #24693: <==negation-removal== 33257 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #27636: <==negation-removal== 87233 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27683: <==negation-removal== 19554 (pos)
                    (not (Bc_not_checked_p12))

                    ; #28454: <==negation-removal== 84492 (pos)
                    (not (not_checked_p12))

                    ; #32844: <==uncertain_firing== 33257 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #34301: <==negation-removal== 54887 (pos)
                    (not (Bd_not_checked_p12))

                    ; #39359: <==negation-removal== 72874 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #40860: <==negation-removal== 12438 (pos)
                    (not (Pd_not_checked_p12))

                    ; #47381: <==uncertain_firing== 72874 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #50659: <==negation-removal== 73985 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #67021: <==uncertain_firing== 68202 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #75322: <==negation-removal== 68202 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #76939: <==negation-removal== 74638 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14578: <==closure== 39283 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #22308: origin
                    (checked_p1)

                    ; #29396: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #32717: <==commonly_known== 31815 (neg)
                    (Pb_checked_p1)

                    ; #37589: <==commonly_known== 22308 (pos)
                    (Ba_checked_p1)

                    ; #39283: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #47984: <==commonly_known== 22308 (pos)
                    (Bc_checked_p1)

                    ; #53111: <==commonly_known== 31815 (neg)
                    (Pc_checked_p1)

                    ; #56329: <==commonly_known== 31815 (neg)
                    (Pd_checked_p1)

                    ; #59500: <==commonly_known== 31815 (neg)
                    (Pa_checked_p1)

                    ; #81439: <==commonly_known== 22308 (pos)
                    (Bb_checked_p1)

                    ; #81997: <==closure== 29396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #85589: <==commonly_known== 22308 (pos)
                    (Bd_checked_p1)

                    ; #12959: <==negation-removal== 32717 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13110: <==negation-removal== 59500 (pos)
                    (not (Ba_not_checked_p1))

                    ; #13962: <==negation-removal== 81439 (pos)
                    (not (Pb_not_checked_p1))

                    ; #18217: <==negation-removal== 29396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #24725: <==negation-removal== 53111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #26005: <==negation-removal== 39283 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #26220: <==negation-removal== 85589 (pos)
                    (not (Pd_not_checked_p1))

                    ; #30308: <==negation-removal== 47984 (pos)
                    (not (Pc_not_checked_p1))

                    ; #31815: <==negation-removal== 22308 (pos)
                    (not (not_checked_p1))

                    ; #33070: <==uncertain_firing== 39283 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #44537: <==uncertain_firing== 81997 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #58297: <==uncertain_firing== 14578 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #61035: <==negation-removal== 14578 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #64366: <==negation-removal== 81997 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #66200: <==negation-removal== 56329 (pos)
                    (not (Bd_not_checked_p1))

                    ; #79161: <==uncertain_firing== 29396 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #83239: <==negation-removal== 37589 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #26246: <==commonly_known== 66299 (pos)
                    (Bc_checked_p2)

                    ; #30187: <==commonly_known== 46222 (neg)
                    (Pa_checked_p2)

                    ; #39946: <==commonly_known== 46222 (neg)
                    (Pc_checked_p2)

                    ; #42805: <==commonly_known== 66299 (pos)
                    (Bb_checked_p2)

                    ; #45882: <==commonly_known== 66299 (pos)
                    (Ba_checked_p2)

                    ; #48386: <==commonly_known== 46222 (neg)
                    (Pb_checked_p2)

                    ; #59752: <==commonly_known== 66299 (pos)
                    (Bd_checked_p2)

                    ; #62648: <==closure== 90842 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #66299: origin
                    (checked_p2)

                    ; #76991: <==commonly_known== 46222 (neg)
                    (Pd_checked_p2)

                    ; #79287: <==closure== 83614 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #83614: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #90842: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #10258: <==uncertain_firing== 62648 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #10497: <==uncertain_firing== 79287 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #12216: <==negation-removal== 48386 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21012: <==negation-removal== 39946 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27652: <==negation-removal== 45882 (pos)
                    (not (Pa_not_checked_p2))

                    ; #27679: <==uncertain_firing== 90842 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #46222: <==negation-removal== 66299 (pos)
                    (not (not_checked_p2))

                    ; #49470: <==negation-removal== 90842 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #52786: <==uncertain_firing== 83614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59926: <==negation-removal== 62648 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #69763: <==negation-removal== 42805 (pos)
                    (not (Pb_not_checked_p2))

                    ; #74248: <==negation-removal== 26246 (pos)
                    (not (Pc_not_checked_p2))

                    ; #79458: <==negation-removal== 30187 (pos)
                    (not (Ba_not_checked_p2))

                    ; #79642: <==negation-removal== 59752 (pos)
                    (not (Pd_not_checked_p2))

                    ; #83339: <==negation-removal== 76991 (pos)
                    (not (Bd_not_checked_p2))

                    ; #86755: <==negation-removal== 79287 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89812: <==negation-removal== 83614 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11236: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #11622: <==closure== 22640 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #12343: <==commonly_known== 18317 (pos)
                    (Bc_checked_p3)

                    ; #18232: <==commonly_known== 18317 (pos)
                    (Ba_checked_p3)

                    ; #18317: origin
                    (checked_p3)

                    ; #22640: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #26097: <==commonly_known== 18317 (pos)
                    (Bb_checked_p3)

                    ; #40825: <==closure== 11236 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #57850: <==commonly_known== 30915 (neg)
                    (Pa_checked_p3)

                    ; #59796: <==commonly_known== 30915 (neg)
                    (Pb_checked_p3)

                    ; #64891: <==commonly_known== 30915 (neg)
                    (Pc_checked_p3)

                    ; #73186: <==commonly_known== 18317 (pos)
                    (Bd_checked_p3)

                    ; #90910: <==commonly_known== 30915 (neg)
                    (Pd_checked_p3)

                    ; #14862: <==negation-removal== 64891 (pos)
                    (not (Bc_not_checked_p3))

                    ; #25813: <==negation-removal== 90910 (pos)
                    (not (Bd_not_checked_p3))

                    ; #29838: <==uncertain_firing== 11236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #30884: <==negation-removal== 18232 (pos)
                    (not (Pa_not_checked_p3))

                    ; #30915: <==negation-removal== 18317 (pos)
                    (not (not_checked_p3))

                    ; #42372: <==negation-removal== 73186 (pos)
                    (not (Pd_not_checked_p3))

                    ; #43594: <==negation-removal== 11622 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #51301: <==negation-removal== 11236 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #63117: <==uncertain_firing== 22640 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #76785: <==negation-removal== 59796 (pos)
                    (not (Bb_not_checked_p3))

                    ; #83997: <==uncertain_firing== 11622 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #86392: <==negation-removal== 26097 (pos)
                    (not (Pb_not_checked_p3))

                    ; #88766: <==negation-removal== 22640 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #89324: <==negation-removal== 57850 (pos)
                    (not (Ba_not_checked_p3))

                    ; #89759: <==uncertain_firing== 40825 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #90372: <==negation-removal== 40825 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #95563: <==negation-removal== 12343 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12395: origin
                    (checked_p4)

                    ; #12830: <==commonly_known== 20193 (neg)
                    (Pb_checked_p4)

                    ; #20196: <==commonly_known== 20193 (neg)
                    (Pc_checked_p4)

                    ; #24080: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #31040: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #35818: <==commonly_known== 12395 (pos)
                    (Ba_checked_p4)

                    ; #45540: <==closure== 24080 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #61763: <==commonly_known== 12395 (pos)
                    (Bb_checked_p4)

                    ; #67081: <==commonly_known== 20193 (neg)
                    (Pa_checked_p4)

                    ; #67312: <==commonly_known== 12395 (pos)
                    (Bd_checked_p4)

                    ; #69863: <==closure== 31040 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #73051: <==commonly_known== 12395 (pos)
                    (Bc_checked_p4)

                    ; #79680: <==commonly_known== 20193 (neg)
                    (Pd_checked_p4)

                    ; #10110: <==negation-removal== 31040 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #20193: <==negation-removal== 12395 (pos)
                    (not (not_checked_p4))

                    ; #25944: <==negation-removal== 67312 (pos)
                    (not (Pd_not_checked_p4))

                    ; #31091: <==uncertain_firing== 69863 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #34029: <==uncertain_firing== 31040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #54244: <==negation-removal== 73051 (pos)
                    (not (Pc_not_checked_p4))

                    ; #66128: <==negation-removal== 12830 (pos)
                    (not (Bb_not_checked_p4))

                    ; #67401: <==negation-removal== 69863 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67642: <==negation-removal== 67081 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68209: <==negation-removal== 35818 (pos)
                    (not (Pa_not_checked_p4))

                    ; #70065: <==uncertain_firing== 45540 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #71894: <==negation-removal== 20196 (pos)
                    (not (Bc_not_checked_p4))

                    ; #74913: <==negation-removal== 45540 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #75649: <==uncertain_firing== 24080 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #76822: <==negation-removal== 61763 (pos)
                    (not (Pb_not_checked_p4))

                    ; #78674: <==negation-removal== 24080 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #86367: <==negation-removal== 79680 (pos)
                    (not (Bd_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12420: <==commonly_known== 91323 (pos)
                    (Bb_checked_p5)

                    ; #12647: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #19165: <==commonly_known== 17643 (neg)
                    (Pc_checked_p5)

                    ; #28728: <==closure== 35014 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #34175: <==commonly_known== 91323 (pos)
                    (Ba_checked_p5)

                    ; #35014: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #42413: <==commonly_known== 17643 (neg)
                    (Pb_checked_p5)

                    ; #66481: <==closure== 12647 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #71992: <==commonly_known== 91323 (pos)
                    (Bc_checked_p5)

                    ; #78975: <==commonly_known== 17643 (neg)
                    (Pd_checked_p5)

                    ; #86771: <==commonly_known== 91323 (pos)
                    (Bd_checked_p5)

                    ; #91323: origin
                    (checked_p5)

                    ; #92190: <==commonly_known== 17643 (neg)
                    (Pa_checked_p5)

                    ; #13639: <==uncertain_firing== 35014 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #14199: <==negation-removal== 12647 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #14489: <==negation-removal== 92190 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17643: <==negation-removal== 91323 (pos)
                    (not (not_checked_p5))

                    ; #38580: <==negation-removal== 34175 (pos)
                    (not (Pa_not_checked_p5))

                    ; #44652: <==negation-removal== 71992 (pos)
                    (not (Pc_not_checked_p5))

                    ; #50563: <==negation-removal== 66481 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #54873: <==negation-removal== 42413 (pos)
                    (not (Bb_not_checked_p5))

                    ; #55313: <==uncertain_firing== 66481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58868: <==negation-removal== 19165 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59546: <==uncertain_firing== 28728 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #67280: <==negation-removal== 12420 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73946: <==uncertain_firing== 12647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #74839: <==negation-removal== 86771 (pos)
                    (not (Pd_not_checked_p5))

                    ; #77436: <==negation-removal== 78975 (pos)
                    (not (Bd_not_checked_p5))

                    ; #78620: <==negation-removal== 35014 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #78842: <==negation-removal== 28728 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13516: <==commonly_known== 76878 (pos)
                    (Bc_checked_p6)

                    ; #27327: <==commonly_known== 86833 (neg)
                    (Pc_checked_p6)

                    ; #29418: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #30914: <==closure== 81217 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #47012: <==commonly_known== 86833 (neg)
                    (Pb_checked_p6)

                    ; #52202: <==commonly_known== 86833 (neg)
                    (Pd_checked_p6)

                    ; #58919: <==commonly_known== 86833 (neg)
                    (Pa_checked_p6)

                    ; #63319: <==closure== 29418 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #74910: <==commonly_known== 76878 (pos)
                    (Ba_checked_p6)

                    ; #76878: origin
                    (checked_p6)

                    ; #81217: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #82217: <==commonly_known== 76878 (pos)
                    (Bb_checked_p6)

                    ; #84640: <==commonly_known== 76878 (pos)
                    (Bd_checked_p6)

                    ; #13873: <==negation-removal== 82217 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21128: <==negation-removal== 13516 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22828: <==negation-removal== 74910 (pos)
                    (not (Pa_not_checked_p6))

                    ; #31538: <==negation-removal== 81217 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #39642: <==negation-removal== 30914 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #45124: <==negation-removal== 27327 (pos)
                    (not (Bc_not_checked_p6))

                    ; #46650: <==negation-removal== 47012 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55327: <==uncertain_firing== 30914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #61523: <==negation-removal== 29418 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #63381: <==negation-removal== 84640 (pos)
                    (not (Pd_not_checked_p6))

                    ; #66912: <==negation-removal== 58919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70671: <==uncertain_firing== 81217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #76066: <==negation-removal== 52202 (pos)
                    (not (Bd_not_checked_p6))

                    ; #76435: <==negation-removal== 63319 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #77056: <==uncertain_firing== 63319 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #84430: <==uncertain_firing== 29418 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #86833: <==negation-removal== 76878 (pos)
                    (not (not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11196: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #21190: <==closure== 66836 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #29716: origin
                    (checked_p7)

                    ; #33354: <==commonly_known== 29716 (pos)
                    (Ba_checked_p7)

                    ; #40022: <==commonly_known== 29716 (pos)
                    (Bb_checked_p7)

                    ; #59084: <==commonly_known== 55269 (neg)
                    (Pd_checked_p7)

                    ; #61991: <==commonly_known== 29716 (pos)
                    (Bd_checked_p7)

                    ; #62379: <==commonly_known== 55269 (neg)
                    (Pa_checked_p7)

                    ; #64563: <==commonly_known== 55269 (neg)
                    (Pb_checked_p7)

                    ; #66836: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #72276: <==closure== 11196 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #80475: <==commonly_known== 55269 (neg)
                    (Pc_checked_p7)

                    ; #89727: <==commonly_known== 29716 (pos)
                    (Bc_checked_p7)

                    ; #19904: <==negation-removal== 59084 (pos)
                    (not (Bd_not_checked_p7))

                    ; #24731: <==negation-removal== 72276 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #26271: <==negation-removal== 33354 (pos)
                    (not (Pa_not_checked_p7))

                    ; #27729: <==negation-removal== 11196 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #30438: <==uncertain_firing== 11196 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #32382: <==negation-removal== 66836 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #35891: <==negation-removal== 62379 (pos)
                    (not (Ba_not_checked_p7))

                    ; #38303: <==negation-removal== 61991 (pos)
                    (not (Pd_not_checked_p7))

                    ; #41402: <==negation-removal== 21190 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #48470: <==negation-removal== 80475 (pos)
                    (not (Bc_not_checked_p7))

                    ; #55269: <==negation-removal== 29716 (pos)
                    (not (not_checked_p7))

                    ; #55294: <==negation-removal== 40022 (pos)
                    (not (Pb_not_checked_p7))

                    ; #65950: <==uncertain_firing== 72276 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #74156: <==negation-removal== 64563 (pos)
                    (not (Bb_not_checked_p7))

                    ; #79373: <==uncertain_firing== 21190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #83621: <==negation-removal== 89727 (pos)
                    (not (Pc_not_checked_p7))

                    ; #91404: <==uncertain_firing== 66836 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16624: <==commonly_known== 64535 (pos)
                    (Bc_checked_p8)

                    ; #36259: <==commonly_known== 25681 (neg)
                    (Pa_checked_p8)

                    ; #38884: <==commonly_known== 64535 (pos)
                    (Ba_checked_p8)

                    ; #40462: <==closure== 78445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #41253: <==commonly_known== 25681 (neg)
                    (Pd_checked_p8)

                    ; #52687: <==commonly_known== 64535 (pos)
                    (Bd_checked_p8)

                    ; #57445: <==commonly_known== 64535 (pos)
                    (Bb_checked_p8)

                    ; #63752: <==commonly_known== 25681 (neg)
                    (Pb_checked_p8)

                    ; #63880: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #64535: origin
                    (checked_p8)

                    ; #67410: <==closure== 63880 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #78445: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #81332: <==commonly_known== 25681 (neg)
                    (Pc_checked_p8)

                    ; #12109: <==negation-removal== 63752 (pos)
                    (not (Bb_not_checked_p8))

                    ; #13403: <==negation-removal== 63880 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #18059: <==negation-removal== 78445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #23898: <==uncertain_firing== 78445 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #25681: <==negation-removal== 64535 (pos)
                    (not (not_checked_p8))

                    ; #27496: <==negation-removal== 38884 (pos)
                    (not (Pa_not_checked_p8))

                    ; #40590: <==negation-removal== 57445 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44833: <==negation-removal== 41253 (pos)
                    (not (Bd_not_checked_p8))

                    ; #48775: <==uncertain_firing== 67410 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #52729: <==negation-removal== 36259 (pos)
                    (not (Ba_not_checked_p8))

                    ; #55911: <==negation-removal== 40462 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #65512: <==negation-removal== 16624 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67692: <==uncertain_firing== 40462 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #79911: <==uncertain_firing== 63880 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #80579: <==negation-removal== 67410 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #88606: <==negation-removal== 81332 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90885: <==negation-removal== 52687 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10274: <==commonly_known== 10121 (neg)
                    (Pd_checked_p9)

                    ; #23836: <==commonly_known== 10121 (neg)
                    (Pc_checked_p9)

                    ; #33212: <==closure== 70666 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #37596: <==commonly_known== 90762 (pos)
                    (Ba_checked_p9)

                    ; #40205: <==closure== 74322 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #58453: <==commonly_known== 90762 (pos)
                    (Bc_checked_p9)

                    ; #70061: <==commonly_known== 10121 (neg)
                    (Pb_checked_p9)

                    ; #70666: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #72116: <==commonly_known== 90762 (pos)
                    (Bd_checked_p9)

                    ; #74322: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #76027: <==commonly_known== 90762 (pos)
                    (Bb_checked_p9)

                    ; #76969: <==commonly_known== 10121 (neg)
                    (Pa_checked_p9)

                    ; #90762: origin
                    (checked_p9)

                    ; #10121: <==negation-removal== 90762 (pos)
                    (not (not_checked_p9))

                    ; #15303: <==negation-removal== 70061 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16957: <==negation-removal== 37596 (pos)
                    (not (Pa_not_checked_p9))

                    ; #20524: <==negation-removal== 74322 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #21405: <==uncertain_firing== 33212 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #31889: <==uncertain_firing== 40205 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #33851: <==uncertain_firing== 74322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #43324: <==negation-removal== 70666 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #50548: <==negation-removal== 76027 (pos)
                    (not (Pb_not_checked_p9))

                    ; #54948: <==negation-removal== 10274 (pos)
                    (not (Bd_not_checked_p9))

                    ; #65216: <==negation-removal== 76969 (pos)
                    (not (Ba_not_checked_p9))

                    ; #73394: <==negation-removal== 72116 (pos)
                    (not (Pd_not_checked_p9))

                    ; #77298: <==negation-removal== 23836 (pos)
                    (not (Bc_not_checked_p9))

                    ; #79143: <==negation-removal== 33212 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82209: <==negation-removal== 40205 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #85273: <==negation-removal== 58453 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87954: <==uncertain_firing== 70666 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))))

)