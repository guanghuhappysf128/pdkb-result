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
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #13717: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #26846: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #29373: <==closure== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31135: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #64589: <==closure== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #76435: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #81263: <==closure== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86776: <==closure== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #10342: <==uncertain_firing== 13717 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #11153: <==uncertain_firing== 81263 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #21932: <==negation-removal== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #22888: <==negation-removal== 64589 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #24005: <==negation-removal== 29373 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #28849: <==negation-removal== 81263 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #39409: <==uncertain_firing== 86776 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #41430: <==uncertain_firing== 26846 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #47380: <==uncertain_firing== 76435 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #48326: <==uncertain_firing== 31135 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #50314: <==negation-removal== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #51431: <==negation-removal== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #60517: <==uncertain_firing== 64589 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #62964: <==negation-removal== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #63392: <==uncertain_firing== 29373 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #67980: <==negation-removal== 86776 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #13717: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #26846: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #29373: <==closure== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31135: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #64589: <==closure== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #76435: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #81263: <==closure== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86776: <==closure== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #10342: <==uncertain_firing== 13717 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #11153: <==uncertain_firing== 81263 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #21932: <==negation-removal== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #22888: <==negation-removal== 64589 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #24005: <==negation-removal== 29373 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #28849: <==negation-removal== 81263 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #39409: <==uncertain_firing== 86776 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #41430: <==uncertain_firing== 26846 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #47380: <==uncertain_firing== 76435 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #48326: <==uncertain_firing== 31135 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #50314: <==negation-removal== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #51431: <==negation-removal== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #60517: <==uncertain_firing== 64589 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #62964: <==negation-removal== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #63392: <==uncertain_firing== 29373 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #67980: <==negation-removal== 86776 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #13717: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #26846: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #29373: <==closure== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31135: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #64589: <==closure== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #76435: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #81263: <==closure== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86776: <==closure== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #10342: <==uncertain_firing== 13717 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #11153: <==uncertain_firing== 81263 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #21932: <==negation-removal== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #22888: <==negation-removal== 64589 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #24005: <==negation-removal== 29373 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #28849: <==negation-removal== 81263 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #39409: <==uncertain_firing== 86776 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #41430: <==uncertain_firing== 26846 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #47380: <==uncertain_firing== 76435 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #48326: <==uncertain_firing== 31135 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #50314: <==negation-removal== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #51431: <==negation-removal== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #60517: <==uncertain_firing== 64589 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #62964: <==negation-removal== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #63392: <==uncertain_firing== 29373 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #67980: <==negation-removal== 86776 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #13717: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #26846: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #29373: <==closure== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #31135: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #64589: <==closure== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #76435: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #81263: <==closure== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86776: <==closure== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #10342: <==uncertain_firing== 13717 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #11153: <==uncertain_firing== 81263 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #21932: <==negation-removal== 13717 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #22888: <==negation-removal== 64589 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #24005: <==negation-removal== 29373 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #28849: <==negation-removal== 81263 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #39409: <==uncertain_firing== 86776 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #41430: <==uncertain_firing== 26846 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #47380: <==uncertain_firing== 76435 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #48326: <==uncertain_firing== 31135 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #50314: <==negation-removal== 76435 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #51431: <==negation-removal== 31135 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #60517: <==uncertain_firing== 64589 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #62964: <==negation-removal== 26846 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #63392: <==uncertain_firing== 29373 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #67980: <==negation-removal== 86776 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #22305: <==closure== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #23005: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #36114: <==closure== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #37599: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #37635: <==closure== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #41972: <==closure== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #86508: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89565: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #40229: <==negation-removal== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #44950: <==uncertain_firing== 36114 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #50567: <==negation-removal== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #54808: <==uncertain_firing== 89565 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #55951: <==negation-removal== 37635 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #61041: <==negation-removal== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #63422: <==negation-removal== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #67297: <==uncertain_firing== 37635 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #70141: <==uncertain_firing== 41972 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #72876: <==negation-removal== 36114 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #73020: <==negation-removal== 41972 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73703: <==uncertain_firing== 86508 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #79747: <==uncertain_firing== 22305 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #80085: <==uncertain_firing== 37599 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #89823: <==negation-removal== 22305 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #91913: <==uncertain_firing== 23005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #22305: <==closure== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #23005: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #36114: <==closure== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #37599: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #37635: <==closure== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #41972: <==closure== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #86508: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89565: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #40229: <==negation-removal== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #44950: <==uncertain_firing== 36114 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #50567: <==negation-removal== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #54808: <==uncertain_firing== 89565 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #55951: <==negation-removal== 37635 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #61041: <==negation-removal== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #63422: <==negation-removal== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #67297: <==uncertain_firing== 37635 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #70141: <==uncertain_firing== 41972 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #72876: <==negation-removal== 36114 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #73020: <==negation-removal== 41972 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73703: <==uncertain_firing== 86508 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #79747: <==uncertain_firing== 22305 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #80085: <==uncertain_firing== 37599 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #89823: <==negation-removal== 22305 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #91913: <==uncertain_firing== 23005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #22305: <==closure== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #23005: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #36114: <==closure== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #37599: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #37635: <==closure== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #41972: <==closure== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #86508: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89565: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #40229: <==negation-removal== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #44950: <==uncertain_firing== 36114 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #50567: <==negation-removal== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #54808: <==uncertain_firing== 89565 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #55951: <==negation-removal== 37635 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #61041: <==negation-removal== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #63422: <==negation-removal== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #67297: <==uncertain_firing== 37635 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #70141: <==uncertain_firing== 41972 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #72876: <==negation-removal== 36114 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #73020: <==negation-removal== 41972 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73703: <==uncertain_firing== 86508 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #79747: <==uncertain_firing== 22305 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #80085: <==uncertain_firing== 37599 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #89823: <==negation-removal== 22305 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #91913: <==uncertain_firing== 23005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #22305: <==closure== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #23005: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #36114: <==closure== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #37599: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #37635: <==closure== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #41972: <==closure== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #86508: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #89565: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #40229: <==negation-removal== 89565 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #44950: <==uncertain_firing== 36114 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #50567: <==negation-removal== 37599 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #54808: <==uncertain_firing== 89565 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #55951: <==negation-removal== 37635 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #61041: <==negation-removal== 86508 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #63422: <==negation-removal== 23005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #67297: <==uncertain_firing== 37635 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #70141: <==uncertain_firing== 41972 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #72876: <==negation-removal== 36114 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #73020: <==negation-removal== 41972 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73703: <==uncertain_firing== 86508 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #79747: <==uncertain_firing== 22305 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #80085: <==uncertain_firing== 37599 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #89823: <==negation-removal== 22305 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #91913: <==uncertain_firing== 23005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #10238: <==closure== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #12786: <==closure== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #32126: <==closure== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #69904: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #71299: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #80578: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #87381: <==closure== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #98557: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #14368: <==negation-removal== 10238 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #24733: <==negation-removal== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #24777: <==uncertain_firing== 71299 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #26462: <==negation-removal== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #27969: <==uncertain_firing== 10238 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43884: <==uncertain_firing== 12786 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #44100: <==negation-removal== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52477: <==negation-removal== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #68602: <==negation-removal== 87381 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68895: <==negation-removal== 32126 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #72386: <==uncertain_firing== 32126 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #73032: <==uncertain_firing== 80578 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73111: <==uncertain_firing== 87381 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #75673: <==negation-removal== 12786 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #79359: <==uncertain_firing== 69904 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #83603: <==uncertain_firing== 98557 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #10238: <==closure== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #12786: <==closure== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #32126: <==closure== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #69904: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #71299: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #80578: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #87381: <==closure== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #98557: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #14368: <==negation-removal== 10238 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #24733: <==negation-removal== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #24777: <==uncertain_firing== 71299 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #26462: <==negation-removal== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #27969: <==uncertain_firing== 10238 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43884: <==uncertain_firing== 12786 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #44100: <==negation-removal== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52477: <==negation-removal== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #68602: <==negation-removal== 87381 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68895: <==negation-removal== 32126 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #72386: <==uncertain_firing== 32126 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #73032: <==uncertain_firing== 80578 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73111: <==uncertain_firing== 87381 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #75673: <==negation-removal== 12786 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #79359: <==uncertain_firing== 69904 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #83603: <==uncertain_firing== 98557 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #10238: <==closure== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #12786: <==closure== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #32126: <==closure== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #69904: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #71299: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #80578: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #87381: <==closure== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #98557: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #14368: <==negation-removal== 10238 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #24733: <==negation-removal== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #24777: <==uncertain_firing== 71299 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #26462: <==negation-removal== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #27969: <==uncertain_firing== 10238 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43884: <==uncertain_firing== 12786 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #44100: <==negation-removal== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52477: <==negation-removal== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #68602: <==negation-removal== 87381 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68895: <==negation-removal== 32126 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #72386: <==uncertain_firing== 32126 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #73032: <==uncertain_firing== 80578 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73111: <==uncertain_firing== 87381 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #75673: <==negation-removal== 12786 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #79359: <==uncertain_firing== 69904 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #83603: <==uncertain_firing== 98557 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #10238: <==closure== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #12786: <==closure== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #32126: <==closure== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #69904: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #71299: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #80578: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #87381: <==closure== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #98557: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #14368: <==negation-removal== 10238 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #24733: <==negation-removal== 71299 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #24777: <==uncertain_firing== 71299 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #26462: <==negation-removal== 69904 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #27969: <==uncertain_firing== 10238 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #43884: <==uncertain_firing== 12786 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #44100: <==negation-removal== 98557 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #52477: <==negation-removal== 80578 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #68602: <==negation-removal== 87381 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #68895: <==negation-removal== 32126 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #72386: <==uncertain_firing== 32126 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #73032: <==uncertain_firing== 80578 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #73111: <==uncertain_firing== 87381 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #75673: <==negation-removal== 12786 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #79359: <==uncertain_firing== 69904 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #83603: <==uncertain_firing== 98557 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #19751: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22067: <==closure== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30922: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #34131: <==closure== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #53960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #67001: <==closure== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #79078: <==closure== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #80749: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14129: <==negation-removal== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15138: <==negation-removal== 34131 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #17601: <==negation-removal== 79078 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #26000: <==negation-removal== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #28597: <==uncertain_firing== 79078 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #28994: <==negation-removal== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #54849: <==negation-removal== 22067 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #57777: <==negation-removal== 67001 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61989: <==uncertain_firing== 19751 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #64383: <==uncertain_firing== 34131 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #75094: <==uncertain_firing== 53960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #77123: <==negation-removal== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #80709: <==uncertain_firing== 22067 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86027: <==uncertain_firing== 80749 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86973: <==uncertain_firing== 67001 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91443: <==uncertain_firing== 30922 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #19751: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22067: <==closure== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30922: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #34131: <==closure== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #53960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #67001: <==closure== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #79078: <==closure== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #80749: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14129: <==negation-removal== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15138: <==negation-removal== 34131 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #17601: <==negation-removal== 79078 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #26000: <==negation-removal== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #28597: <==uncertain_firing== 79078 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #28994: <==negation-removal== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #54849: <==negation-removal== 22067 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #57777: <==negation-removal== 67001 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61989: <==uncertain_firing== 19751 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #64383: <==uncertain_firing== 34131 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #75094: <==uncertain_firing== 53960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #77123: <==negation-removal== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #80709: <==uncertain_firing== 22067 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86027: <==uncertain_firing== 80749 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86973: <==uncertain_firing== 67001 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91443: <==uncertain_firing== 30922 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #19751: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22067: <==closure== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30922: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #34131: <==closure== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #53960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #67001: <==closure== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #79078: <==closure== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #80749: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14129: <==negation-removal== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15138: <==negation-removal== 34131 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #17601: <==negation-removal== 79078 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #26000: <==negation-removal== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #28597: <==uncertain_firing== 79078 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #28994: <==negation-removal== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #54849: <==negation-removal== 22067 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #57777: <==negation-removal== 67001 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61989: <==uncertain_firing== 19751 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #64383: <==uncertain_firing== 34131 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #75094: <==uncertain_firing== 53960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #77123: <==negation-removal== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #80709: <==uncertain_firing== 22067 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86027: <==uncertain_firing== 80749 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86973: <==uncertain_firing== 67001 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91443: <==uncertain_firing== 30922 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #19751: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #22067: <==closure== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #30922: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #34131: <==closure== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #53960: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #67001: <==closure== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #79078: <==closure== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #80749: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14129: <==negation-removal== 53960 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #15138: <==negation-removal== 34131 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #17601: <==negation-removal== 79078 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #26000: <==negation-removal== 19751 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #28597: <==uncertain_firing== 79078 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #28994: <==negation-removal== 80749 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #54849: <==negation-removal== 22067 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #57777: <==negation-removal== 67001 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61989: <==uncertain_firing== 19751 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #64383: <==uncertain_firing== 34131 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #75094: <==uncertain_firing== 53960 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #77123: <==negation-removal== 30922 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #80709: <==uncertain_firing== 22067 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #86027: <==uncertain_firing== 80749 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #86973: <==uncertain_firing== 67001 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91443: <==uncertain_firing== 30922 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #20180: <==closure== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #45186: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59696: <==closure== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73885: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73898: <==closure== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #81920: <==closure== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89461: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91219: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #16566: <==uncertain_firing== 91219 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #16739: <==uncertain_firing== 20180 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #18325: <==negation-removal== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #23075: <==negation-removal== 73898 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #32409: <==negation-removal== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37523: <==negation-removal== 20180 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #38587: <==uncertain_firing== 59696 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #49608: <==uncertain_firing== 73885 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #55790: <==negation-removal== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #72181: <==uncertain_firing== 73898 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #74497: <==negation-removal== 81920 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74810: <==uncertain_firing== 45186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78103: <==negation-removal== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #81504: <==uncertain_firing== 89461 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #82840: <==negation-removal== 59696 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #92038: <==uncertain_firing== 81920 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #20180: <==closure== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #45186: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59696: <==closure== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73885: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73898: <==closure== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #81920: <==closure== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89461: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91219: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #16566: <==uncertain_firing== 91219 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #16739: <==uncertain_firing== 20180 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #18325: <==negation-removal== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #23075: <==negation-removal== 73898 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #32409: <==negation-removal== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37523: <==negation-removal== 20180 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #38587: <==uncertain_firing== 59696 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #49608: <==uncertain_firing== 73885 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #55790: <==negation-removal== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #72181: <==uncertain_firing== 73898 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #74497: <==negation-removal== 81920 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74810: <==uncertain_firing== 45186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78103: <==negation-removal== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #81504: <==uncertain_firing== 89461 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #82840: <==negation-removal== 59696 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #92038: <==uncertain_firing== 81920 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #20180: <==closure== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #45186: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59696: <==closure== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73885: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73898: <==closure== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #81920: <==closure== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89461: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91219: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #16566: <==uncertain_firing== 91219 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #16739: <==uncertain_firing== 20180 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #18325: <==negation-removal== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #23075: <==negation-removal== 73898 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #32409: <==negation-removal== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37523: <==negation-removal== 20180 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #38587: <==uncertain_firing== 59696 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #49608: <==uncertain_firing== 73885 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #55790: <==negation-removal== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #72181: <==uncertain_firing== 73898 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #74497: <==negation-removal== 81920 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74810: <==uncertain_firing== 45186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78103: <==negation-removal== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #81504: <==uncertain_firing== 89461 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #82840: <==negation-removal== 59696 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #92038: <==uncertain_firing== 81920 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #20180: <==closure== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #45186: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #59696: <==closure== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73885: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73898: <==closure== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #81920: <==closure== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #89461: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #91219: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #16566: <==uncertain_firing== 91219 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #16739: <==uncertain_firing== 20180 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #18325: <==negation-removal== 89461 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #23075: <==negation-removal== 73898 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #32409: <==negation-removal== 91219 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #37523: <==negation-removal== 20180 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #38587: <==uncertain_firing== 59696 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #49608: <==uncertain_firing== 73885 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #55790: <==negation-removal== 45186 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #72181: <==uncertain_firing== 73898 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #74497: <==negation-removal== 81920 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #74810: <==uncertain_firing== 45186 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #78103: <==negation-removal== 73885 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #81504: <==uncertain_firing== 89461 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #82840: <==negation-removal== 59696 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #92038: <==uncertain_firing== 81920 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #12944: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #29030: <==closure== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31671: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #51947: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #58083: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73390: <==closure== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #75160: <==closure== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82590: <==closure== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #13803: <==uncertain_firing== 12944 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #18922: <==uncertain_firing== 29030 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42932: <==uncertain_firing== 31671 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #44021: <==negation-removal== 75160 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #45280: <==uncertain_firing== 58083 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46626: <==negation-removal== 29030 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55580: <==uncertain_firing== 51947 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59989: <==negation-removal== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #61307: <==uncertain_firing== 82590 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61812: <==negation-removal== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66200: <==negation-removal== 73390 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67161: <==negation-removal== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68587: <==negation-removal== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #68886: <==uncertain_firing== 75160 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #69050: <==uncertain_firing== 73390 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72993: <==negation-removal== 82590 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12944: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #29030: <==closure== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31671: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #51947: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #58083: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73390: <==closure== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #75160: <==closure== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82590: <==closure== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #13803: <==uncertain_firing== 12944 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #18922: <==uncertain_firing== 29030 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42932: <==uncertain_firing== 31671 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #44021: <==negation-removal== 75160 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #45280: <==uncertain_firing== 58083 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46626: <==negation-removal== 29030 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55580: <==uncertain_firing== 51947 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59989: <==negation-removal== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #61307: <==uncertain_firing== 82590 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61812: <==negation-removal== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66200: <==negation-removal== 73390 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67161: <==negation-removal== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68587: <==negation-removal== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #68886: <==uncertain_firing== 75160 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #69050: <==uncertain_firing== 73390 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72993: <==negation-removal== 82590 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12944: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #29030: <==closure== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31671: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #51947: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #58083: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73390: <==closure== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #75160: <==closure== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82590: <==closure== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #13803: <==uncertain_firing== 12944 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #18922: <==uncertain_firing== 29030 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42932: <==uncertain_firing== 31671 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #44021: <==negation-removal== 75160 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #45280: <==uncertain_firing== 58083 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46626: <==negation-removal== 29030 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55580: <==uncertain_firing== 51947 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59989: <==negation-removal== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #61307: <==uncertain_firing== 82590 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61812: <==negation-removal== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66200: <==negation-removal== 73390 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67161: <==negation-removal== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68587: <==negation-removal== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #68886: <==uncertain_firing== 75160 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #69050: <==uncertain_firing== 73390 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72993: <==negation-removal== 82590 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #12944: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #29030: <==closure== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #31671: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #51947: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #58083: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #73390: <==closure== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #75160: <==closure== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #82590: <==closure== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #13803: <==uncertain_firing== 12944 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #18922: <==uncertain_firing== 29030 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #42932: <==uncertain_firing== 31671 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #44021: <==negation-removal== 75160 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #45280: <==uncertain_firing== 58083 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #46626: <==negation-removal== 29030 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #55580: <==uncertain_firing== 51947 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59989: <==negation-removal== 58083 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #61307: <==uncertain_firing== 82590 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #61812: <==negation-removal== 51947 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #66200: <==negation-removal== 73390 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #67161: <==negation-removal== 12944 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #68587: <==negation-removal== 31671 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #68886: <==uncertain_firing== 75160 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #69050: <==uncertain_firing== 73390 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72993: <==negation-removal== 82590 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #11772: <==closure== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23627: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #23992: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30678: <==closure== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #38413: <==closure== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #41286: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50207: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #68219: <==closure== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #17998: <==uncertain_firing== 23627 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #18890: <==negation-removal== 11772 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #22497: <==negation-removal== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #35423: <==uncertain_firing== 11772 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #40050: <==uncertain_firing== 68219 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #42446: <==negation-removal== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #44494: <==uncertain_firing== 38413 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #46771: <==negation-removal== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #49711: <==negation-removal== 30678 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50945: <==negation-removal== 68219 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #52466: <==uncertain_firing== 23992 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #54366: <==uncertain_firing== 41286 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54541: <==negation-removal== 38413 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #58670: <==negation-removal== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80708: <==uncertain_firing== 30678 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85249: <==uncertain_firing== 50207 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #11772: <==closure== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23627: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #23992: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30678: <==closure== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #38413: <==closure== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #41286: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50207: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #68219: <==closure== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #17998: <==uncertain_firing== 23627 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #18890: <==negation-removal== 11772 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #22497: <==negation-removal== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #35423: <==uncertain_firing== 11772 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #40050: <==uncertain_firing== 68219 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #42446: <==negation-removal== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #44494: <==uncertain_firing== 38413 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #46771: <==negation-removal== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #49711: <==negation-removal== 30678 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50945: <==negation-removal== 68219 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #52466: <==uncertain_firing== 23992 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #54366: <==uncertain_firing== 41286 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54541: <==negation-removal== 38413 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #58670: <==negation-removal== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80708: <==uncertain_firing== 30678 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85249: <==uncertain_firing== 50207 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11772: <==closure== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23627: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #23992: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30678: <==closure== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #38413: <==closure== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #41286: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50207: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #68219: <==closure== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #17998: <==uncertain_firing== 23627 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #18890: <==negation-removal== 11772 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #22497: <==negation-removal== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #35423: <==uncertain_firing== 11772 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #40050: <==uncertain_firing== 68219 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #42446: <==negation-removal== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #44494: <==uncertain_firing== 38413 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #46771: <==negation-removal== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #49711: <==negation-removal== 30678 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50945: <==negation-removal== 68219 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #52466: <==uncertain_firing== 23992 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #54366: <==uncertain_firing== 41286 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54541: <==negation-removal== 38413 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #58670: <==negation-removal== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80708: <==uncertain_firing== 30678 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85249: <==uncertain_firing== 50207 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #11772: <==closure== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #23627: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #23992: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30678: <==closure== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #38413: <==closure== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #41286: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #50207: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #68219: <==closure== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #17998: <==uncertain_firing== 23627 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #18890: <==negation-removal== 11772 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #22497: <==negation-removal== 23627 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #35423: <==uncertain_firing== 11772 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #40050: <==uncertain_firing== 68219 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #42446: <==negation-removal== 41286 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #44494: <==uncertain_firing== 38413 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #46771: <==negation-removal== 50207 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #49711: <==negation-removal== 30678 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50945: <==negation-removal== 68219 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #52466: <==uncertain_firing== 23992 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #54366: <==uncertain_firing== 41286 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54541: <==negation-removal== 38413 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #58670: <==negation-removal== 23992 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80708: <==uncertain_firing== 30678 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85249: <==uncertain_firing== 50207 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #12757: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #17950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #19300: <==closure== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #25076: <==closure== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #33686: <==closure== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #43982: <==closure== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #77356: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82666: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10236: <==negation-removal== 43982 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #12642: <==uncertain_firing== 43982 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #15747: <==uncertain_firing== 17950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20058: <==negation-removal== 25076 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31572: <==uncertain_firing== 33686 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #36325: <==uncertain_firing== 12757 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #47093: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #47964: <==negation-removal== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #48027: <==uncertain_firing== 19300 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66958: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69521: <==negation-removal== 33686 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #69686: <==uncertain_firing== 25076 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #77807: <==negation-removal== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82564: <==negation-removal== 19300 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85485: <==uncertain_firing== 82666 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #99782: <==negation-removal== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #12757: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #17950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #19300: <==closure== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #25076: <==closure== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #33686: <==closure== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #43982: <==closure== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #77356: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82666: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10236: <==negation-removal== 43982 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #12642: <==uncertain_firing== 43982 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #15747: <==uncertain_firing== 17950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20058: <==negation-removal== 25076 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31572: <==uncertain_firing== 33686 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #36325: <==uncertain_firing== 12757 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #47093: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #47964: <==negation-removal== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #48027: <==uncertain_firing== 19300 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66958: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69521: <==negation-removal== 33686 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #69686: <==uncertain_firing== 25076 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #77807: <==negation-removal== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82564: <==negation-removal== 19300 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85485: <==uncertain_firing== 82666 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #99782: <==negation-removal== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #12757: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #17950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #19300: <==closure== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #25076: <==closure== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #33686: <==closure== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #43982: <==closure== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #77356: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82666: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10236: <==negation-removal== 43982 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #12642: <==uncertain_firing== 43982 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #15747: <==uncertain_firing== 17950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20058: <==negation-removal== 25076 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31572: <==uncertain_firing== 33686 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #36325: <==uncertain_firing== 12757 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #47093: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #47964: <==negation-removal== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #48027: <==uncertain_firing== 19300 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66958: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69521: <==negation-removal== 33686 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #69686: <==uncertain_firing== 25076 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #77807: <==negation-removal== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82564: <==negation-removal== 19300 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85485: <==uncertain_firing== 82666 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #99782: <==negation-removal== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #12757: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #17950: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #19300: <==closure== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #25076: <==closure== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #33686: <==closure== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #43982: <==closure== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #77356: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82666: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #10236: <==negation-removal== 43982 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #12642: <==uncertain_firing== 43982 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #15747: <==uncertain_firing== 17950 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20058: <==negation-removal== 25076 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31572: <==uncertain_firing== 33686 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #36325: <==uncertain_firing== 12757 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #47093: <==uncertain_firing== 77356 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #47964: <==negation-removal== 12757 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #48027: <==uncertain_firing== 19300 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66958: <==negation-removal== 77356 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #69521: <==negation-removal== 33686 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #69686: <==uncertain_firing== 25076 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #77807: <==negation-removal== 82666 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #82564: <==negation-removal== 19300 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #85485: <==uncertain_firing== 82666 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #99782: <==negation-removal== 17950 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #25035: <==closure== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25638: <==closure== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34085: <==closure== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #35285: <==closure== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62340: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74168: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76428: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #87497: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14429: <==uncertain_firing== 25035 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #17488: <==negation-removal== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #19659: <==negation-removal== 34085 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #20754: <==uncertain_firing== 62340 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #21911: <==uncertain_firing== 87497 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28071: <==uncertain_firing== 34085 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #28740: <==uncertain_firing== 35285 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #37025: <==negation-removal== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40635: <==negation-removal== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #58912: <==uncertain_firing== 74168 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #63877: <==uncertain_firing== 76428 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #66372: <==uncertain_firing== 25638 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78569: <==negation-removal== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84346: <==negation-removal== 35285 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #87941: <==negation-removal== 25035 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #88030: <==negation-removal== 25638 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #25035: <==closure== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25638: <==closure== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34085: <==closure== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #35285: <==closure== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62340: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74168: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76428: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #87497: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14429: <==uncertain_firing== 25035 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #17488: <==negation-removal== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #19659: <==negation-removal== 34085 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #20754: <==uncertain_firing== 62340 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #21911: <==uncertain_firing== 87497 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28071: <==uncertain_firing== 34085 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #28740: <==uncertain_firing== 35285 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #37025: <==negation-removal== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40635: <==negation-removal== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #58912: <==uncertain_firing== 74168 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #63877: <==uncertain_firing== 76428 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #66372: <==uncertain_firing== 25638 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78569: <==negation-removal== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84346: <==negation-removal== 35285 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #87941: <==negation-removal== 25035 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #88030: <==negation-removal== 25638 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #25035: <==closure== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25638: <==closure== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34085: <==closure== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #35285: <==closure== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62340: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74168: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76428: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #87497: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14429: <==uncertain_firing== 25035 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #17488: <==negation-removal== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #19659: <==negation-removal== 34085 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #20754: <==uncertain_firing== 62340 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #21911: <==uncertain_firing== 87497 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28071: <==uncertain_firing== 34085 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #28740: <==uncertain_firing== 35285 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #37025: <==negation-removal== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40635: <==negation-removal== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #58912: <==uncertain_firing== 74168 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #63877: <==uncertain_firing== 76428 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #66372: <==uncertain_firing== 25638 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78569: <==negation-removal== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84346: <==negation-removal== 35285 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #87941: <==negation-removal== 25035 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #88030: <==negation-removal== 25638 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #25035: <==closure== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25638: <==closure== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #34085: <==closure== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #35285: <==closure== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62340: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #74168: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #76428: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #87497: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14429: <==uncertain_firing== 25035 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #17488: <==negation-removal== 76428 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #19659: <==negation-removal== 34085 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #20754: <==uncertain_firing== 62340 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #21911: <==uncertain_firing== 87497 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #28071: <==uncertain_firing== 34085 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #28740: <==uncertain_firing== 35285 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #37025: <==negation-removal== 87497 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #40635: <==negation-removal== 74168 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #58912: <==uncertain_firing== 74168 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #63877: <==uncertain_firing== 76428 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #66372: <==uncertain_firing== 25638 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78569: <==negation-removal== 62340 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #84346: <==negation-removal== 35285 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #87941: <==negation-removal== 25035 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #88030: <==negation-removal== 25638 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #13732: <==closure== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #32328: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #56546: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #61864: <==closure== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #62308: <==closure== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #63694: <==closure== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #76817: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #80868: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18347: <==uncertain_firing== 32328 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #31645: <==negation-removal== 62308 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #40546: <==uncertain_firing== 62308 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #40934: <==negation-removal== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #44388: <==uncertain_firing== 56546 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #46689: <==uncertain_firing== 63694 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #53558: <==uncertain_firing== 13732 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #54274: <==uncertain_firing== 76817 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56689: <==negation-removal== 61864 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #59175: <==uncertain_firing== 61864 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #60245: <==negation-removal== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #65227: <==negation-removal== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74540: <==negation-removal== 13732 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81431: <==uncertain_firing== 80868 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #88215: <==negation-removal== 63694 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #90571: <==negation-removal== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #13732: <==closure== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #32328: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #56546: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #61864: <==closure== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #62308: <==closure== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #63694: <==closure== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #76817: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #80868: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18347: <==uncertain_firing== 32328 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #31645: <==negation-removal== 62308 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #40546: <==uncertain_firing== 62308 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #40934: <==negation-removal== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #44388: <==uncertain_firing== 56546 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #46689: <==uncertain_firing== 63694 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #53558: <==uncertain_firing== 13732 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #54274: <==uncertain_firing== 76817 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56689: <==negation-removal== 61864 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #59175: <==uncertain_firing== 61864 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #60245: <==negation-removal== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #65227: <==negation-removal== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74540: <==negation-removal== 13732 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81431: <==uncertain_firing== 80868 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #88215: <==negation-removal== 63694 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #90571: <==negation-removal== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #13732: <==closure== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #32328: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #56546: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #61864: <==closure== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #62308: <==closure== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #63694: <==closure== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #76817: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #80868: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18347: <==uncertain_firing== 32328 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #31645: <==negation-removal== 62308 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #40546: <==uncertain_firing== 62308 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #40934: <==negation-removal== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #44388: <==uncertain_firing== 56546 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #46689: <==uncertain_firing== 63694 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #53558: <==uncertain_firing== 13732 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #54274: <==uncertain_firing== 76817 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56689: <==negation-removal== 61864 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #59175: <==uncertain_firing== 61864 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #60245: <==negation-removal== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #65227: <==negation-removal== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74540: <==negation-removal== 13732 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81431: <==uncertain_firing== 80868 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #88215: <==negation-removal== 63694 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #90571: <==negation-removal== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #13732: <==closure== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #32328: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #56546: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #61864: <==closure== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #62308: <==closure== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #63694: <==closure== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #76817: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #80868: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #18347: <==uncertain_firing== 32328 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #31645: <==negation-removal== 62308 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #40546: <==uncertain_firing== 62308 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #40934: <==negation-removal== 32328 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #44388: <==uncertain_firing== 56546 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #46689: <==uncertain_firing== 63694 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #53558: <==uncertain_firing== 13732 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #54274: <==uncertain_firing== 76817 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56689: <==negation-removal== 61864 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #59175: <==uncertain_firing== 61864 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #60245: <==negation-removal== 56546 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #65227: <==negation-removal== 80868 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74540: <==negation-removal== 13732 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #81431: <==uncertain_firing== 80868 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #88215: <==negation-removal== 63694 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #90571: <==negation-removal== 76817 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #28163: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48896: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #64191: <==closure== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65772: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82848: <==closure== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #84391: <==closure== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #95967: <==closure== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18036: <==negation-removal== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18375: <==uncertain_firing== 64191 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #20226: <==negation-removal== 84391 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #26855: <==negation-removal== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #29382: <==negation-removal== 82848 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #29963: <==uncertain_firing== 95967 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36792: <==negation-removal== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37057: <==uncertain_firing== 48896 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #44817: <==uncertain_firing== 82848 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #51933: <==uncertain_firing== 65772 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #66198: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #66837: <==negation-removal== 64191 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74738: <==negation-removal== 95967 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #86936: <==negation-removal== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88666: <==uncertain_firing== 84391 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #88765: <==uncertain_firing== 28163 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #28163: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48896: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #64191: <==closure== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65772: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82848: <==closure== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #84391: <==closure== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #95967: <==closure== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18036: <==negation-removal== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18375: <==uncertain_firing== 64191 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #20226: <==negation-removal== 84391 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #26855: <==negation-removal== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #29382: <==negation-removal== 82848 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #29963: <==uncertain_firing== 95967 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36792: <==negation-removal== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37057: <==uncertain_firing== 48896 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #44817: <==uncertain_firing== 82848 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #51933: <==uncertain_firing== 65772 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #66198: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #66837: <==negation-removal== 64191 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74738: <==negation-removal== 95967 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #86936: <==negation-removal== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88666: <==uncertain_firing== 84391 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #88765: <==uncertain_firing== 28163 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #28163: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48896: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #64191: <==closure== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65772: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82848: <==closure== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #84391: <==closure== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #95967: <==closure== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18036: <==negation-removal== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18375: <==uncertain_firing== 64191 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #20226: <==negation-removal== 84391 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #26855: <==negation-removal== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #29382: <==negation-removal== 82848 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #29963: <==uncertain_firing== 95967 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36792: <==negation-removal== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37057: <==uncertain_firing== 48896 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #44817: <==uncertain_firing== 82848 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #51933: <==uncertain_firing== 65772 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #66198: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #66837: <==negation-removal== 64191 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74738: <==negation-removal== 95967 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #86936: <==negation-removal== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88666: <==uncertain_firing== 84391 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #88765: <==uncertain_firing== 28163 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #25660: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #28163: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #48896: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #64191: <==closure== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #65772: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82848: <==closure== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #84391: <==closure== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #95967: <==closure== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #18036: <==negation-removal== 28163 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18375: <==uncertain_firing== 64191 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #20226: <==negation-removal== 84391 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #26855: <==negation-removal== 65772 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #29382: <==negation-removal== 82848 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #29963: <==uncertain_firing== 95967 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #36792: <==negation-removal== 25660 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37057: <==uncertain_firing== 48896 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #44817: <==uncertain_firing== 82848 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #51933: <==uncertain_firing== 65772 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #66198: <==uncertain_firing== 25660 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #66837: <==negation-removal== 64191 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #74738: <==negation-removal== 95967 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #86936: <==negation-removal== 48896 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88666: <==uncertain_firing== 84391 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #88765: <==uncertain_firing== 28163 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #22377: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28491: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36417: <==closure== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #42324: <==closure== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #50012: <==closure== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #60953: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #71903: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88326: <==closure== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #11523: <==uncertain_firing== 22377 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13826: <==uncertain_firing== 71903 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #14828: <==uncertain_firing== 50012 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #22432: <==negation-removal== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34704: <==uncertain_firing== 42324 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36840: <==uncertain_firing== 36417 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43141: <==negation-removal== 42324 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #48666: <==negation-removal== 50012 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #50789: <==uncertain_firing== 88326 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #53048: <==negation-removal== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54297: <==uncertain_firing== 60953 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56716: <==negation-removal== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59703: <==uncertain_firing== 28491 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60926: <==negation-removal== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 88326 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85984: <==negation-removal== 36417 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #22377: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28491: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36417: <==closure== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #42324: <==closure== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #50012: <==closure== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #60953: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #71903: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88326: <==closure== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #11523: <==uncertain_firing== 22377 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13826: <==uncertain_firing== 71903 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #14828: <==uncertain_firing== 50012 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #22432: <==negation-removal== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34704: <==uncertain_firing== 42324 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36840: <==uncertain_firing== 36417 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43141: <==negation-removal== 42324 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #48666: <==negation-removal== 50012 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #50789: <==uncertain_firing== 88326 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #53048: <==negation-removal== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54297: <==uncertain_firing== 60953 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56716: <==negation-removal== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59703: <==uncertain_firing== 28491 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60926: <==negation-removal== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 88326 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85984: <==negation-removal== 36417 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #22377: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28491: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36417: <==closure== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #42324: <==closure== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #50012: <==closure== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #60953: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #71903: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88326: <==closure== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #11523: <==uncertain_firing== 22377 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13826: <==uncertain_firing== 71903 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #14828: <==uncertain_firing== 50012 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #22432: <==negation-removal== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34704: <==uncertain_firing== 42324 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36840: <==uncertain_firing== 36417 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43141: <==negation-removal== 42324 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #48666: <==negation-removal== 50012 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #50789: <==uncertain_firing== 88326 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #53048: <==negation-removal== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54297: <==uncertain_firing== 60953 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56716: <==negation-removal== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59703: <==uncertain_firing== 28491 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60926: <==negation-removal== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 88326 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85984: <==negation-removal== 36417 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #22377: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28491: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #36417: <==closure== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #42324: <==closure== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #50012: <==closure== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #60953: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #71903: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88326: <==closure== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #11523: <==uncertain_firing== 22377 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13826: <==uncertain_firing== 71903 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #14828: <==uncertain_firing== 50012 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #22432: <==negation-removal== 28491 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #34704: <==uncertain_firing== 42324 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36840: <==uncertain_firing== 36417 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43141: <==negation-removal== 42324 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #48666: <==negation-removal== 50012 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #50789: <==uncertain_firing== 88326 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #53048: <==negation-removal== 22377 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #54297: <==uncertain_firing== 60953 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56716: <==negation-removal== 60953 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59703: <==uncertain_firing== 28491 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60926: <==negation-removal== 71903 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67692: <==negation-removal== 88326 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #85984: <==negation-removal== 36417 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #19202: <==closure== 68372 (pos)
                    (Pa_survivorat_s_p10)

                    ; #25107: origin
                    (Bc_survivorat_s_p10)

                    ; #26856: <==closure== 34397 (pos)
                    (Pb_survivorat_s_p10)

                    ; #34274: <==closure== 70780 (pos)
                    (Pd_survivorat_s_p10)

                    ; #34397: origin
                    (Bb_survivorat_s_p10)

                    ; #68372: origin
                    (Ba_survivorat_s_p10)

                    ; #70780: origin
                    (Bd_survivorat_s_p10)

                    ; #82655: <==closure== 25107 (pos)
                    (Pc_survivorat_s_p10)

                    ; #13019: <==negation-removal== 82655 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #20679: <==negation-removal== 70780 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #30851: <==negation-removal== 68372 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #38841: <==negation-removal== 34274 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #45885: <==negation-removal== 19202 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #47710: <==negation-removal== 25107 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #54576: <==negation-removal== 34397 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75937: <==negation-removal== 26856 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #19202: <==closure== 68372 (pos)
                    (Pa_survivorat_s_p10)

                    ; #25107: origin
                    (Bc_survivorat_s_p10)

                    ; #26856: <==closure== 34397 (pos)
                    (Pb_survivorat_s_p10)

                    ; #34274: <==closure== 70780 (pos)
                    (Pd_survivorat_s_p10)

                    ; #34397: origin
                    (Bb_survivorat_s_p10)

                    ; #68372: origin
                    (Ba_survivorat_s_p10)

                    ; #70780: origin
                    (Bd_survivorat_s_p10)

                    ; #82655: <==closure== 25107 (pos)
                    (Pc_survivorat_s_p10)

                    ; #13019: <==negation-removal== 82655 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #20679: <==negation-removal== 70780 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #30851: <==negation-removal== 68372 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #38841: <==negation-removal== 34274 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #45885: <==negation-removal== 19202 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #47710: <==negation-removal== 25107 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #54576: <==negation-removal== 34397 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75937: <==negation-removal== 26856 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #19202: <==closure== 68372 (pos)
                    (Pa_survivorat_s_p10)

                    ; #25107: origin
                    (Bc_survivorat_s_p10)

                    ; #26856: <==closure== 34397 (pos)
                    (Pb_survivorat_s_p10)

                    ; #34274: <==closure== 70780 (pos)
                    (Pd_survivorat_s_p10)

                    ; #34397: origin
                    (Bb_survivorat_s_p10)

                    ; #68372: origin
                    (Ba_survivorat_s_p10)

                    ; #70780: origin
                    (Bd_survivorat_s_p10)

                    ; #82655: <==closure== 25107 (pos)
                    (Pc_survivorat_s_p10)

                    ; #13019: <==negation-removal== 82655 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #20679: <==negation-removal== 70780 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #30851: <==negation-removal== 68372 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #38841: <==negation-removal== 34274 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #45885: <==negation-removal== 19202 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #47710: <==negation-removal== 25107 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #54576: <==negation-removal== 34397 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75937: <==negation-removal== 26856 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #19202: <==closure== 68372 (pos)
                    (Pa_survivorat_s_p10)

                    ; #25107: origin
                    (Bc_survivorat_s_p10)

                    ; #26856: <==closure== 34397 (pos)
                    (Pb_survivorat_s_p10)

                    ; #34274: <==closure== 70780 (pos)
                    (Pd_survivorat_s_p10)

                    ; #34397: origin
                    (Bb_survivorat_s_p10)

                    ; #68372: origin
                    (Ba_survivorat_s_p10)

                    ; #70780: origin
                    (Bd_survivorat_s_p10)

                    ; #82655: <==closure== 25107 (pos)
                    (Pc_survivorat_s_p10)

                    ; #13019: <==negation-removal== 82655 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #20679: <==negation-removal== 70780 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #30851: <==negation-removal== 68372 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #38841: <==negation-removal== 34274 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #45885: <==negation-removal== 19202 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #47710: <==negation-removal== 25107 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #54576: <==negation-removal== 34397 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75937: <==negation-removal== 26856 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #13922: <==closure== 45276 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45276: origin
                    (Bb_survivorat_s_p11)

                    ; #64281: origin
                    (Bc_survivorat_s_p11)

                    ; #70738: <==closure== 64281 (pos)
                    (Pc_survivorat_s_p11)

                    ; #75773: origin
                    (Bd_survivorat_s_p11)

                    ; #77191: <==closure== 85031 (pos)
                    (Pa_survivorat_s_p11)

                    ; #82039: <==closure== 75773 (pos)
                    (Pd_survivorat_s_p11)

                    ; #85031: origin
                    (Ba_survivorat_s_p11)

                    ; #21307: <==negation-removal== 13922 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #25945: <==negation-removal== 75773 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27795: <==negation-removal== 77191 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #33818: <==negation-removal== 64281 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #42166: <==negation-removal== 82039 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #46705: <==negation-removal== 70738 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74814: <==negation-removal== 85031 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84196: <==negation-removal== 45276 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #13922: <==closure== 45276 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45276: origin
                    (Bb_survivorat_s_p11)

                    ; #64281: origin
                    (Bc_survivorat_s_p11)

                    ; #70738: <==closure== 64281 (pos)
                    (Pc_survivorat_s_p11)

                    ; #75773: origin
                    (Bd_survivorat_s_p11)

                    ; #77191: <==closure== 85031 (pos)
                    (Pa_survivorat_s_p11)

                    ; #82039: <==closure== 75773 (pos)
                    (Pd_survivorat_s_p11)

                    ; #85031: origin
                    (Ba_survivorat_s_p11)

                    ; #21307: <==negation-removal== 13922 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #25945: <==negation-removal== 75773 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27795: <==negation-removal== 77191 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #33818: <==negation-removal== 64281 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #42166: <==negation-removal== 82039 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #46705: <==negation-removal== 70738 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74814: <==negation-removal== 85031 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84196: <==negation-removal== 45276 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #13922: <==closure== 45276 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45276: origin
                    (Bb_survivorat_s_p11)

                    ; #64281: origin
                    (Bc_survivorat_s_p11)

                    ; #70738: <==closure== 64281 (pos)
                    (Pc_survivorat_s_p11)

                    ; #75773: origin
                    (Bd_survivorat_s_p11)

                    ; #77191: <==closure== 85031 (pos)
                    (Pa_survivorat_s_p11)

                    ; #82039: <==closure== 75773 (pos)
                    (Pd_survivorat_s_p11)

                    ; #85031: origin
                    (Ba_survivorat_s_p11)

                    ; #21307: <==negation-removal== 13922 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #25945: <==negation-removal== 75773 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27795: <==negation-removal== 77191 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #33818: <==negation-removal== 64281 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #42166: <==negation-removal== 82039 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #46705: <==negation-removal== 70738 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74814: <==negation-removal== 85031 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84196: <==negation-removal== 45276 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (at_d_p11)
                           (Bd_survivorat_s_p11))
        :effect (and
                    ; #13922: <==closure== 45276 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45276: origin
                    (Bb_survivorat_s_p11)

                    ; #64281: origin
                    (Bc_survivorat_s_p11)

                    ; #70738: <==closure== 64281 (pos)
                    (Pc_survivorat_s_p11)

                    ; #75773: origin
                    (Bd_survivorat_s_p11)

                    ; #77191: <==closure== 85031 (pos)
                    (Pa_survivorat_s_p11)

                    ; #82039: <==closure== 75773 (pos)
                    (Pd_survivorat_s_p11)

                    ; #85031: origin
                    (Ba_survivorat_s_p11)

                    ; #21307: <==negation-removal== 13922 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #25945: <==negation-removal== 75773 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27795: <==negation-removal== 77191 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #33818: <==negation-removal== 64281 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #42166: <==negation-removal== 82039 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #46705: <==negation-removal== 70738 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #74814: <==negation-removal== 85031 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #84196: <==negation-removal== 45276 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #13081: origin
                    (Bd_survivorat_s_p12)

                    ; #19040: origin
                    (Ba_survivorat_s_p12)

                    ; #27835: <==closure== 19040 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30140: origin
                    (Bb_survivorat_s_p12)

                    ; #69514: <==closure== 87586 (pos)
                    (Pc_survivorat_s_p12)

                    ; #77866: <==closure== 13081 (pos)
                    (Pd_survivorat_s_p12)

                    ; #83323: <==closure== 30140 (pos)
                    (Pb_survivorat_s_p12)

                    ; #87586: origin
                    (Bc_survivorat_s_p12)

                    ; #19265: <==negation-removal== 77866 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #36075: <==negation-removal== 19040 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47041: <==negation-removal== 69514 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #50601: <==negation-removal== 87586 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81237: <==negation-removal== 13081 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #84105: <==negation-removal== 27835 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85046: <==negation-removal== 83323 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #87911: <==negation-removal== 30140 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #13081: origin
                    (Bd_survivorat_s_p12)

                    ; #19040: origin
                    (Ba_survivorat_s_p12)

                    ; #27835: <==closure== 19040 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30140: origin
                    (Bb_survivorat_s_p12)

                    ; #69514: <==closure== 87586 (pos)
                    (Pc_survivorat_s_p12)

                    ; #77866: <==closure== 13081 (pos)
                    (Pd_survivorat_s_p12)

                    ; #83323: <==closure== 30140 (pos)
                    (Pb_survivorat_s_p12)

                    ; #87586: origin
                    (Bc_survivorat_s_p12)

                    ; #19265: <==negation-removal== 77866 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #36075: <==negation-removal== 19040 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47041: <==negation-removal== 69514 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #50601: <==negation-removal== 87586 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81237: <==negation-removal== 13081 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #84105: <==negation-removal== 27835 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85046: <==negation-removal== 83323 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #87911: <==negation-removal== 30140 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #13081: origin
                    (Bd_survivorat_s_p12)

                    ; #19040: origin
                    (Ba_survivorat_s_p12)

                    ; #27835: <==closure== 19040 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30140: origin
                    (Bb_survivorat_s_p12)

                    ; #69514: <==closure== 87586 (pos)
                    (Pc_survivorat_s_p12)

                    ; #77866: <==closure== 13081 (pos)
                    (Pd_survivorat_s_p12)

                    ; #83323: <==closure== 30140 (pos)
                    (Pb_survivorat_s_p12)

                    ; #87586: origin
                    (Bc_survivorat_s_p12)

                    ; #19265: <==negation-removal== 77866 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #36075: <==negation-removal== 19040 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47041: <==negation-removal== 69514 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #50601: <==negation-removal== 87586 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81237: <==negation-removal== 13081 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #84105: <==negation-removal== 27835 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85046: <==negation-removal== 83323 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #87911: <==negation-removal== 30140 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #13081: origin
                    (Bd_survivorat_s_p12)

                    ; #19040: origin
                    (Ba_survivorat_s_p12)

                    ; #27835: <==closure== 19040 (pos)
                    (Pa_survivorat_s_p12)

                    ; #30140: origin
                    (Bb_survivorat_s_p12)

                    ; #69514: <==closure== 87586 (pos)
                    (Pc_survivorat_s_p12)

                    ; #77866: <==closure== 13081 (pos)
                    (Pd_survivorat_s_p12)

                    ; #83323: <==closure== 30140 (pos)
                    (Pb_survivorat_s_p12)

                    ; #87586: origin
                    (Bc_survivorat_s_p12)

                    ; #19265: <==negation-removal== 77866 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #36075: <==negation-removal== 19040 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47041: <==negation-removal== 69514 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #50601: <==negation-removal== 87586 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81237: <==negation-removal== 13081 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #84105: <==negation-removal== 27835 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85046: <==negation-removal== 83323 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #87911: <==negation-removal== 30140 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #10323: origin
                    (Bd_survivorat_s_p1)

                    ; #15181: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21155: origin
                    (Bc_survivorat_s_p1)

                    ; #69612: <==closure== 10323 (pos)
                    (Pd_survivorat_s_p1)

                    ; #73304: <==closure== 85340 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78986: <==closure== 94005 (pos)
                    (Pb_survivorat_s_p1)

                    ; #85340: origin
                    (Ba_survivorat_s_p1)

                    ; #94005: origin
                    (Bb_survivorat_s_p1)

                    ; #13391: <==negation-removal== 94005 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #18899: <==negation-removal== 85340 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #48265: <==negation-removal== 69612 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #48374: <==negation-removal== 15181 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54706: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67910: <==negation-removal== 73304 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78732: <==negation-removal== 10323 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #90466: <==negation-removal== 78986 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10323: origin
                    (Bd_survivorat_s_p1)

                    ; #15181: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21155: origin
                    (Bc_survivorat_s_p1)

                    ; #69612: <==closure== 10323 (pos)
                    (Pd_survivorat_s_p1)

                    ; #73304: <==closure== 85340 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78986: <==closure== 94005 (pos)
                    (Pb_survivorat_s_p1)

                    ; #85340: origin
                    (Ba_survivorat_s_p1)

                    ; #94005: origin
                    (Bb_survivorat_s_p1)

                    ; #13391: <==negation-removal== 94005 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #18899: <==negation-removal== 85340 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #48265: <==negation-removal== 69612 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #48374: <==negation-removal== 15181 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54706: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67910: <==negation-removal== 73304 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78732: <==negation-removal== 10323 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #90466: <==negation-removal== 78986 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10323: origin
                    (Bd_survivorat_s_p1)

                    ; #15181: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21155: origin
                    (Bc_survivorat_s_p1)

                    ; #69612: <==closure== 10323 (pos)
                    (Pd_survivorat_s_p1)

                    ; #73304: <==closure== 85340 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78986: <==closure== 94005 (pos)
                    (Pb_survivorat_s_p1)

                    ; #85340: origin
                    (Ba_survivorat_s_p1)

                    ; #94005: origin
                    (Bb_survivorat_s_p1)

                    ; #13391: <==negation-removal== 94005 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #18899: <==negation-removal== 85340 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #48265: <==negation-removal== 69612 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #48374: <==negation-removal== 15181 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54706: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67910: <==negation-removal== 73304 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78732: <==negation-removal== 10323 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #90466: <==negation-removal== 78986 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (at_d_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #10323: origin
                    (Bd_survivorat_s_p1)

                    ; #15181: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p1)

                    ; #21155: origin
                    (Bc_survivorat_s_p1)

                    ; #69612: <==closure== 10323 (pos)
                    (Pd_survivorat_s_p1)

                    ; #73304: <==closure== 85340 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78986: <==closure== 94005 (pos)
                    (Pb_survivorat_s_p1)

                    ; #85340: origin
                    (Ba_survivorat_s_p1)

                    ; #94005: origin
                    (Bb_survivorat_s_p1)

                    ; #13391: <==negation-removal== 94005 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #18899: <==negation-removal== 85340 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #48265: <==negation-removal== 69612 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #48374: <==negation-removal== 15181 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #54706: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #67910: <==negation-removal== 73304 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78732: <==negation-removal== 10323 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #90466: <==negation-removal== 78986 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #21540: origin
                    (Bc_survivorat_s_p2)

                    ; #22311: <==closure== 71184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #45408: origin
                    (Ba_survivorat_s_p2)

                    ; #52609: <==closure== 45408 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71076: origin
                    (Bb_survivorat_s_p2)

                    ; #71184: origin
                    (Bd_survivorat_s_p2)

                    ; #81732: <==closure== 21540 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82585: <==closure== 71076 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24868: <==negation-removal== 52609 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27258: <==negation-removal== 22311 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #34319: <==negation-removal== 82585 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39709: <==negation-removal== 71184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41658: <==negation-removal== 81732 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41773: <==negation-removal== 21540 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73798: <==negation-removal== 45408 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87962: <==negation-removal== 71076 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #21540: origin
                    (Bc_survivorat_s_p2)

                    ; #22311: <==closure== 71184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #45408: origin
                    (Ba_survivorat_s_p2)

                    ; #52609: <==closure== 45408 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71076: origin
                    (Bb_survivorat_s_p2)

                    ; #71184: origin
                    (Bd_survivorat_s_p2)

                    ; #81732: <==closure== 21540 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82585: <==closure== 71076 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24868: <==negation-removal== 52609 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27258: <==negation-removal== 22311 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #34319: <==negation-removal== 82585 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39709: <==negation-removal== 71184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41658: <==negation-removal== 81732 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41773: <==negation-removal== 21540 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73798: <==negation-removal== 45408 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87962: <==negation-removal== 71076 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #21540: origin
                    (Bc_survivorat_s_p2)

                    ; #22311: <==closure== 71184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #45408: origin
                    (Ba_survivorat_s_p2)

                    ; #52609: <==closure== 45408 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71076: origin
                    (Bb_survivorat_s_p2)

                    ; #71184: origin
                    (Bd_survivorat_s_p2)

                    ; #81732: <==closure== 21540 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82585: <==closure== 71076 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24868: <==negation-removal== 52609 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27258: <==negation-removal== 22311 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #34319: <==negation-removal== 82585 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39709: <==negation-removal== 71184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41658: <==negation-removal== 81732 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41773: <==negation-removal== 21540 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73798: <==negation-removal== 45408 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87962: <==negation-removal== 71076 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #21540: origin
                    (Bc_survivorat_s_p2)

                    ; #22311: <==closure== 71184 (pos)
                    (Pd_survivorat_s_p2)

                    ; #45408: origin
                    (Ba_survivorat_s_p2)

                    ; #52609: <==closure== 45408 (pos)
                    (Pa_survivorat_s_p2)

                    ; #71076: origin
                    (Bb_survivorat_s_p2)

                    ; #71184: origin
                    (Bd_survivorat_s_p2)

                    ; #81732: <==closure== 21540 (pos)
                    (Pc_survivorat_s_p2)

                    ; #82585: <==closure== 71076 (pos)
                    (Pb_survivorat_s_p2)

                    ; #24868: <==negation-removal== 52609 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27258: <==negation-removal== 22311 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #34319: <==negation-removal== 82585 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39709: <==negation-removal== 71184 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #41658: <==negation-removal== 81732 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #41773: <==negation-removal== 21540 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73798: <==negation-removal== 45408 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #87962: <==negation-removal== 71076 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #17131: <==closure== 25654 (pos)
                    (Pb_survivorat_s_p3)

                    ; #23978: <==closure== 69920 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25654: origin
                    (Bb_survivorat_s_p3)

                    ; #34217: <==closure== 51800 (pos)
                    (Pd_survivorat_s_p3)

                    ; #51408: <==closure== 71601 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51800: origin
                    (Bd_survivorat_s_p3)

                    ; #69920: origin
                    (Bc_survivorat_s_p3)

                    ; #71601: origin
                    (Ba_survivorat_s_p3)

                    ; #10679: <==negation-removal== 25654 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #19942: <==negation-removal== 34217 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #25628: <==negation-removal== 71601 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30051: <==negation-removal== 69920 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #58850: <==negation-removal== 51408 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76046: <==negation-removal== 23978 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79763: <==negation-removal== 51800 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #85324: <==negation-removal== 17131 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #17131: <==closure== 25654 (pos)
                    (Pb_survivorat_s_p3)

                    ; #23978: <==closure== 69920 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25654: origin
                    (Bb_survivorat_s_p3)

                    ; #34217: <==closure== 51800 (pos)
                    (Pd_survivorat_s_p3)

                    ; #51408: <==closure== 71601 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51800: origin
                    (Bd_survivorat_s_p3)

                    ; #69920: origin
                    (Bc_survivorat_s_p3)

                    ; #71601: origin
                    (Ba_survivorat_s_p3)

                    ; #10679: <==negation-removal== 25654 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #19942: <==negation-removal== 34217 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #25628: <==negation-removal== 71601 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30051: <==negation-removal== 69920 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #58850: <==negation-removal== 51408 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76046: <==negation-removal== 23978 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79763: <==negation-removal== 51800 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #85324: <==negation-removal== 17131 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #17131: <==closure== 25654 (pos)
                    (Pb_survivorat_s_p3)

                    ; #23978: <==closure== 69920 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25654: origin
                    (Bb_survivorat_s_p3)

                    ; #34217: <==closure== 51800 (pos)
                    (Pd_survivorat_s_p3)

                    ; #51408: <==closure== 71601 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51800: origin
                    (Bd_survivorat_s_p3)

                    ; #69920: origin
                    (Bc_survivorat_s_p3)

                    ; #71601: origin
                    (Ba_survivorat_s_p3)

                    ; #10679: <==negation-removal== 25654 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #19942: <==negation-removal== 34217 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #25628: <==negation-removal== 71601 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30051: <==negation-removal== 69920 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #58850: <==negation-removal== 51408 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76046: <==negation-removal== 23978 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79763: <==negation-removal== 51800 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #85324: <==negation-removal== 17131 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (at_d_p3))
        :effect (and
                    ; #17131: <==closure== 25654 (pos)
                    (Pb_survivorat_s_p3)

                    ; #23978: <==closure== 69920 (pos)
                    (Pc_survivorat_s_p3)

                    ; #25654: origin
                    (Bb_survivorat_s_p3)

                    ; #34217: <==closure== 51800 (pos)
                    (Pd_survivorat_s_p3)

                    ; #51408: <==closure== 71601 (pos)
                    (Pa_survivorat_s_p3)

                    ; #51800: origin
                    (Bd_survivorat_s_p3)

                    ; #69920: origin
                    (Bc_survivorat_s_p3)

                    ; #71601: origin
                    (Ba_survivorat_s_p3)

                    ; #10679: <==negation-removal== 25654 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #19942: <==negation-removal== 34217 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #25628: <==negation-removal== 71601 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #30051: <==negation-removal== 69920 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #58850: <==negation-removal== 51408 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #76046: <==negation-removal== 23978 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #79763: <==negation-removal== 51800 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #85324: <==negation-removal== 17131 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #23041: <==closure== 26382 (pos)
                    (Pc_survivorat_s_p4)

                    ; #26382: origin
                    (Bc_survivorat_s_p4)

                    ; #29693: origin
                    (Ba_survivorat_s_p4)

                    ; #43648: origin
                    (Bb_survivorat_s_p4)

                    ; #48818: <==closure== 59148 (pos)
                    (Pd_survivorat_s_p4)

                    ; #59148: origin
                    (Bd_survivorat_s_p4)

                    ; #73297: <==closure== 43648 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86830: <==closure== 29693 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56395: <==negation-removal== 48818 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #57050: <==negation-removal== 23041 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59228: <==negation-removal== 29693 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65200: <==negation-removal== 43648 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #74352: <==negation-removal== 59148 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #84199: <==negation-removal== 86830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87250: <==negation-removal== 73297 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #94225: <==negation-removal== 26382 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #23041: <==closure== 26382 (pos)
                    (Pc_survivorat_s_p4)

                    ; #26382: origin
                    (Bc_survivorat_s_p4)

                    ; #29693: origin
                    (Ba_survivorat_s_p4)

                    ; #43648: origin
                    (Bb_survivorat_s_p4)

                    ; #48818: <==closure== 59148 (pos)
                    (Pd_survivorat_s_p4)

                    ; #59148: origin
                    (Bd_survivorat_s_p4)

                    ; #73297: <==closure== 43648 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86830: <==closure== 29693 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56395: <==negation-removal== 48818 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #57050: <==negation-removal== 23041 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59228: <==negation-removal== 29693 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65200: <==negation-removal== 43648 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #74352: <==negation-removal== 59148 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #84199: <==negation-removal== 86830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87250: <==negation-removal== 73297 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #94225: <==negation-removal== 26382 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #23041: <==closure== 26382 (pos)
                    (Pc_survivorat_s_p4)

                    ; #26382: origin
                    (Bc_survivorat_s_p4)

                    ; #29693: origin
                    (Ba_survivorat_s_p4)

                    ; #43648: origin
                    (Bb_survivorat_s_p4)

                    ; #48818: <==closure== 59148 (pos)
                    (Pd_survivorat_s_p4)

                    ; #59148: origin
                    (Bd_survivorat_s_p4)

                    ; #73297: <==closure== 43648 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86830: <==closure== 29693 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56395: <==negation-removal== 48818 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #57050: <==negation-removal== 23041 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59228: <==negation-removal== 29693 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65200: <==negation-removal== 43648 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #74352: <==negation-removal== 59148 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #84199: <==negation-removal== 86830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87250: <==negation-removal== 73297 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #94225: <==negation-removal== 26382 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #23041: <==closure== 26382 (pos)
                    (Pc_survivorat_s_p4)

                    ; #26382: origin
                    (Bc_survivorat_s_p4)

                    ; #29693: origin
                    (Ba_survivorat_s_p4)

                    ; #43648: origin
                    (Bb_survivorat_s_p4)

                    ; #48818: <==closure== 59148 (pos)
                    (Pd_survivorat_s_p4)

                    ; #59148: origin
                    (Bd_survivorat_s_p4)

                    ; #73297: <==closure== 43648 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86830: <==closure== 29693 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56395: <==negation-removal== 48818 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #57050: <==negation-removal== 23041 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #59228: <==negation-removal== 29693 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #65200: <==negation-removal== 43648 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #74352: <==negation-removal== 59148 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #84199: <==negation-removal== 86830 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87250: <==negation-removal== 73297 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #94225: <==negation-removal== 26382 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #11581: origin
                    (Bc_survivorat_s_p5)

                    ; #20285: <==closure== 35581 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26432: <==closure== 72557 (pos)
                    (Pb_survivorat_s_p5)

                    ; #28611: <==closure== 11581 (pos)
                    (Pc_survivorat_s_p5)

                    ; #35581: origin
                    (Ba_survivorat_s_p5)

                    ; #72557: origin
                    (Bb_survivorat_s_p5)

                    ; #84889: origin
                    (Bd_survivorat_s_p5)

                    ; #90009: <==closure== 84889 (pos)
                    (Pd_survivorat_s_p5)

                    ; #20120: <==negation-removal== 20285 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #28380: <==negation-removal== 26432 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #31263: <==negation-removal== 72557 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #31988: <==negation-removal== 84889 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #32946: <==negation-removal== 11581 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #52561: <==negation-removal== 90009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #55685: <==negation-removal== 28611 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #71801: <==negation-removal== 35581 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #11581: origin
                    (Bc_survivorat_s_p5)

                    ; #20285: <==closure== 35581 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26432: <==closure== 72557 (pos)
                    (Pb_survivorat_s_p5)

                    ; #28611: <==closure== 11581 (pos)
                    (Pc_survivorat_s_p5)

                    ; #35581: origin
                    (Ba_survivorat_s_p5)

                    ; #72557: origin
                    (Bb_survivorat_s_p5)

                    ; #84889: origin
                    (Bd_survivorat_s_p5)

                    ; #90009: <==closure== 84889 (pos)
                    (Pd_survivorat_s_p5)

                    ; #20120: <==negation-removal== 20285 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #28380: <==negation-removal== 26432 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #31263: <==negation-removal== 72557 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #31988: <==negation-removal== 84889 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #32946: <==negation-removal== 11581 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #52561: <==negation-removal== 90009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #55685: <==negation-removal== 28611 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #71801: <==negation-removal== 35581 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #11581: origin
                    (Bc_survivorat_s_p5)

                    ; #20285: <==closure== 35581 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26432: <==closure== 72557 (pos)
                    (Pb_survivorat_s_p5)

                    ; #28611: <==closure== 11581 (pos)
                    (Pc_survivorat_s_p5)

                    ; #35581: origin
                    (Ba_survivorat_s_p5)

                    ; #72557: origin
                    (Bb_survivorat_s_p5)

                    ; #84889: origin
                    (Bd_survivorat_s_p5)

                    ; #90009: <==closure== 84889 (pos)
                    (Pd_survivorat_s_p5)

                    ; #20120: <==negation-removal== 20285 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #28380: <==negation-removal== 26432 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #31263: <==negation-removal== 72557 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #31988: <==negation-removal== 84889 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #32946: <==negation-removal== 11581 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #52561: <==negation-removal== 90009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #55685: <==negation-removal== 28611 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #71801: <==negation-removal== 35581 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #11581: origin
                    (Bc_survivorat_s_p5)

                    ; #20285: <==closure== 35581 (pos)
                    (Pa_survivorat_s_p5)

                    ; #26432: <==closure== 72557 (pos)
                    (Pb_survivorat_s_p5)

                    ; #28611: <==closure== 11581 (pos)
                    (Pc_survivorat_s_p5)

                    ; #35581: origin
                    (Ba_survivorat_s_p5)

                    ; #72557: origin
                    (Bb_survivorat_s_p5)

                    ; #84889: origin
                    (Bd_survivorat_s_p5)

                    ; #90009: <==closure== 84889 (pos)
                    (Pd_survivorat_s_p5)

                    ; #20120: <==negation-removal== 20285 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #28380: <==negation-removal== 26432 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #31263: <==negation-removal== 72557 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #31988: <==negation-removal== 84889 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #32946: <==negation-removal== 11581 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #52561: <==negation-removal== 90009 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #55685: <==negation-removal== 28611 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #71801: <==negation-removal== 35581 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #17475: origin
                    (Ba_survivorat_s_p6)

                    ; #29940: origin
                    (Bc_survivorat_s_p6)

                    ; #30179: origin
                    (Bd_survivorat_s_p6)

                    ; #45214: <==closure== 17475 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53023: <==closure== 64910 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55530: <==closure== 30179 (pos)
                    (Pd_survivorat_s_p6)

                    ; #64910: origin
                    (Bb_survivorat_s_p6)

                    ; #66672: <==closure== 29940 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17236: <==negation-removal== 55530 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41317: <==negation-removal== 30179 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #50752: <==negation-removal== 17475 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54274: <==negation-removal== 66672 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56953: <==negation-removal== 29940 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #66330: <==negation-removal== 64910 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67154: <==negation-removal== 45214 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72252: <==negation-removal== 53023 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #17475: origin
                    (Ba_survivorat_s_p6)

                    ; #29940: origin
                    (Bc_survivorat_s_p6)

                    ; #30179: origin
                    (Bd_survivorat_s_p6)

                    ; #45214: <==closure== 17475 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53023: <==closure== 64910 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55530: <==closure== 30179 (pos)
                    (Pd_survivorat_s_p6)

                    ; #64910: origin
                    (Bb_survivorat_s_p6)

                    ; #66672: <==closure== 29940 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17236: <==negation-removal== 55530 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41317: <==negation-removal== 30179 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #50752: <==negation-removal== 17475 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54274: <==negation-removal== 66672 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56953: <==negation-removal== 29940 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #66330: <==negation-removal== 64910 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67154: <==negation-removal== 45214 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72252: <==negation-removal== 53023 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #17475: origin
                    (Ba_survivorat_s_p6)

                    ; #29940: origin
                    (Bc_survivorat_s_p6)

                    ; #30179: origin
                    (Bd_survivorat_s_p6)

                    ; #45214: <==closure== 17475 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53023: <==closure== 64910 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55530: <==closure== 30179 (pos)
                    (Pd_survivorat_s_p6)

                    ; #64910: origin
                    (Bb_survivorat_s_p6)

                    ; #66672: <==closure== 29940 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17236: <==negation-removal== 55530 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41317: <==negation-removal== 30179 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #50752: <==negation-removal== 17475 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54274: <==negation-removal== 66672 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56953: <==negation-removal== 29940 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #66330: <==negation-removal== 64910 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67154: <==negation-removal== 45214 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72252: <==negation-removal== 53023 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #17475: origin
                    (Ba_survivorat_s_p6)

                    ; #29940: origin
                    (Bc_survivorat_s_p6)

                    ; #30179: origin
                    (Bd_survivorat_s_p6)

                    ; #45214: <==closure== 17475 (pos)
                    (Pa_survivorat_s_p6)

                    ; #53023: <==closure== 64910 (pos)
                    (Pb_survivorat_s_p6)

                    ; #55530: <==closure== 30179 (pos)
                    (Pd_survivorat_s_p6)

                    ; #64910: origin
                    (Bb_survivorat_s_p6)

                    ; #66672: <==closure== 29940 (pos)
                    (Pc_survivorat_s_p6)

                    ; #17236: <==negation-removal== 55530 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #41317: <==negation-removal== 30179 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #50752: <==negation-removal== 17475 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #54274: <==negation-removal== 66672 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #56953: <==negation-removal== 29940 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #66330: <==negation-removal== 64910 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #67154: <==negation-removal== 45214 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72252: <==negation-removal== 53023 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #29656: origin
                    (Bc_survivorat_s_p7)

                    ; #34398: origin
                    (Ba_survivorat_s_p7)

                    ; #52029: <==closure== 29656 (pos)
                    (Pc_survivorat_s_p7)

                    ; #57436: <==closure== 74406 (pos)
                    (Pd_survivorat_s_p7)

                    ; #61670: <==closure== 77484 (pos)
                    (Pb_survivorat_s_p7)

                    ; #74406: origin
                    (Bd_survivorat_s_p7)

                    ; #77484: origin
                    (Bb_survivorat_s_p7)

                    ; #98947: <==closure== 34398 (pos)
                    (Pa_survivorat_s_p7)

                    ; #28669: <==negation-removal== 57436 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #46879: <==negation-removal== 61670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54943: <==negation-removal== 52029 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68762: <==negation-removal== 34398 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72537: <==negation-removal== 74406 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #82289: <==negation-removal== 29656 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82778: <==negation-removal== 98947 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91099: <==negation-removal== 77484 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #29656: origin
                    (Bc_survivorat_s_p7)

                    ; #34398: origin
                    (Ba_survivorat_s_p7)

                    ; #52029: <==closure== 29656 (pos)
                    (Pc_survivorat_s_p7)

                    ; #57436: <==closure== 74406 (pos)
                    (Pd_survivorat_s_p7)

                    ; #61670: <==closure== 77484 (pos)
                    (Pb_survivorat_s_p7)

                    ; #74406: origin
                    (Bd_survivorat_s_p7)

                    ; #77484: origin
                    (Bb_survivorat_s_p7)

                    ; #98947: <==closure== 34398 (pos)
                    (Pa_survivorat_s_p7)

                    ; #28669: <==negation-removal== 57436 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #46879: <==negation-removal== 61670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54943: <==negation-removal== 52029 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68762: <==negation-removal== 34398 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72537: <==negation-removal== 74406 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #82289: <==negation-removal== 29656 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82778: <==negation-removal== 98947 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91099: <==negation-removal== 77484 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #29656: origin
                    (Bc_survivorat_s_p7)

                    ; #34398: origin
                    (Ba_survivorat_s_p7)

                    ; #52029: <==closure== 29656 (pos)
                    (Pc_survivorat_s_p7)

                    ; #57436: <==closure== 74406 (pos)
                    (Pd_survivorat_s_p7)

                    ; #61670: <==closure== 77484 (pos)
                    (Pb_survivorat_s_p7)

                    ; #74406: origin
                    (Bd_survivorat_s_p7)

                    ; #77484: origin
                    (Bb_survivorat_s_p7)

                    ; #98947: <==closure== 34398 (pos)
                    (Pa_survivorat_s_p7)

                    ; #28669: <==negation-removal== 57436 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #46879: <==negation-removal== 61670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54943: <==negation-removal== 52029 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68762: <==negation-removal== 34398 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72537: <==negation-removal== 74406 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #82289: <==negation-removal== 29656 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82778: <==negation-removal== 98947 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91099: <==negation-removal== 77484 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #29656: origin
                    (Bc_survivorat_s_p7)

                    ; #34398: origin
                    (Ba_survivorat_s_p7)

                    ; #52029: <==closure== 29656 (pos)
                    (Pc_survivorat_s_p7)

                    ; #57436: <==closure== 74406 (pos)
                    (Pd_survivorat_s_p7)

                    ; #61670: <==closure== 77484 (pos)
                    (Pb_survivorat_s_p7)

                    ; #74406: origin
                    (Bd_survivorat_s_p7)

                    ; #77484: origin
                    (Bb_survivorat_s_p7)

                    ; #98947: <==closure== 34398 (pos)
                    (Pa_survivorat_s_p7)

                    ; #28669: <==negation-removal== 57436 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #46879: <==negation-removal== 61670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #54943: <==negation-removal== 52029 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #68762: <==negation-removal== 34398 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #72537: <==negation-removal== 74406 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #82289: <==negation-removal== 29656 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82778: <==negation-removal== 98947 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #91099: <==negation-removal== 77484 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #18157: <==closure== 23646 (pos)
                    (Pd_survivorat_s_p8)

                    ; #23646: origin
                    (Bd_survivorat_s_p8)

                    ; #50586: <==closure== 93024 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66535: <==closure== 71509 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69341: <==closure== 90486 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71509: origin
                    (Ba_survivorat_s_p8)

                    ; #90486: origin
                    (Bc_survivorat_s_p8)

                    ; #93024: origin
                    (Bb_survivorat_s_p8)

                    ; #25891: <==negation-removal== 93024 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #56749: <==negation-removal== 50586 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #67794: <==negation-removal== 90486 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #74813: <==negation-removal== 69341 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #80674: <==negation-removal== 66535 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80741: <==negation-removal== 18157 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90826: <==negation-removal== 71509 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #91848: <==negation-removal== 23646 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #18157: <==closure== 23646 (pos)
                    (Pd_survivorat_s_p8)

                    ; #23646: origin
                    (Bd_survivorat_s_p8)

                    ; #50586: <==closure== 93024 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66535: <==closure== 71509 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69341: <==closure== 90486 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71509: origin
                    (Ba_survivorat_s_p8)

                    ; #90486: origin
                    (Bc_survivorat_s_p8)

                    ; #93024: origin
                    (Bb_survivorat_s_p8)

                    ; #25891: <==negation-removal== 93024 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #56749: <==negation-removal== 50586 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #67794: <==negation-removal== 90486 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #74813: <==negation-removal== 69341 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #80674: <==negation-removal== 66535 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80741: <==negation-removal== 18157 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90826: <==negation-removal== 71509 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #91848: <==negation-removal== 23646 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #18157: <==closure== 23646 (pos)
                    (Pd_survivorat_s_p8)

                    ; #23646: origin
                    (Bd_survivorat_s_p8)

                    ; #50586: <==closure== 93024 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66535: <==closure== 71509 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69341: <==closure== 90486 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71509: origin
                    (Ba_survivorat_s_p8)

                    ; #90486: origin
                    (Bc_survivorat_s_p8)

                    ; #93024: origin
                    (Bb_survivorat_s_p8)

                    ; #25891: <==negation-removal== 93024 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #56749: <==negation-removal== 50586 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #67794: <==negation-removal== 90486 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #74813: <==negation-removal== 69341 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #80674: <==negation-removal== 66535 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80741: <==negation-removal== 18157 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90826: <==negation-removal== 71509 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #91848: <==negation-removal== 23646 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #18157: <==closure== 23646 (pos)
                    (Pd_survivorat_s_p8)

                    ; #23646: origin
                    (Bd_survivorat_s_p8)

                    ; #50586: <==closure== 93024 (pos)
                    (Pb_survivorat_s_p8)

                    ; #66535: <==closure== 71509 (pos)
                    (Pa_survivorat_s_p8)

                    ; #69341: <==closure== 90486 (pos)
                    (Pc_survivorat_s_p8)

                    ; #71509: origin
                    (Ba_survivorat_s_p8)

                    ; #90486: origin
                    (Bc_survivorat_s_p8)

                    ; #93024: origin
                    (Bb_survivorat_s_p8)

                    ; #25891: <==negation-removal== 93024 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #56749: <==negation-removal== 50586 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #67794: <==negation-removal== 90486 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #74813: <==negation-removal== 69341 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #80674: <==negation-removal== 66535 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #80741: <==negation-removal== 18157 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #90826: <==negation-removal== 71509 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #91848: <==negation-removal== 23646 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #20776: <==closure== 62831 (pos)
                    (Pd_survivorat_s_p9)

                    ; #27475: origin
                    (Bc_survivorat_s_p9)

                    ; #48222: <==closure== 79994 (pos)
                    (Pb_survivorat_s_p9)

                    ; #53921: <==closure== 27475 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58145: <==closure== 82979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #62831: origin
                    (Bd_survivorat_s_p9)

                    ; #79994: origin
                    (Bb_survivorat_s_p9)

                    ; #82979: origin
                    (Ba_survivorat_s_p9)

                    ; #27041: <==negation-removal== 62831 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #30850: <==negation-removal== 82979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #45228: <==negation-removal== 20776 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47913: <==negation-removal== 79994 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63569: <==negation-removal== 48222 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72613: <==negation-removal== 27475 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #79777: <==negation-removal== 58145 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #88480: <==negation-removal== 53921 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #20776: <==closure== 62831 (pos)
                    (Pd_survivorat_s_p9)

                    ; #27475: origin
                    (Bc_survivorat_s_p9)

                    ; #48222: <==closure== 79994 (pos)
                    (Pb_survivorat_s_p9)

                    ; #53921: <==closure== 27475 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58145: <==closure== 82979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #62831: origin
                    (Bd_survivorat_s_p9)

                    ; #79994: origin
                    (Bb_survivorat_s_p9)

                    ; #82979: origin
                    (Ba_survivorat_s_p9)

                    ; #27041: <==negation-removal== 62831 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #30850: <==negation-removal== 82979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #45228: <==negation-removal== 20776 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47913: <==negation-removal== 79994 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63569: <==negation-removal== 48222 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72613: <==negation-removal== 27475 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #79777: <==negation-removal== 58145 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #88480: <==negation-removal== 53921 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #20776: <==closure== 62831 (pos)
                    (Pd_survivorat_s_p9)

                    ; #27475: origin
                    (Bc_survivorat_s_p9)

                    ; #48222: <==closure== 79994 (pos)
                    (Pb_survivorat_s_p9)

                    ; #53921: <==closure== 27475 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58145: <==closure== 82979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #62831: origin
                    (Bd_survivorat_s_p9)

                    ; #79994: origin
                    (Bb_survivorat_s_p9)

                    ; #82979: origin
                    (Ba_survivorat_s_p9)

                    ; #27041: <==negation-removal== 62831 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #30850: <==negation-removal== 82979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #45228: <==negation-removal== 20776 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47913: <==negation-removal== 79994 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63569: <==negation-removal== 48222 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72613: <==negation-removal== 27475 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #79777: <==negation-removal== 58145 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #88480: <==negation-removal== 53921 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #20776: <==closure== 62831 (pos)
                    (Pd_survivorat_s_p9)

                    ; #27475: origin
                    (Bc_survivorat_s_p9)

                    ; #48222: <==closure== 79994 (pos)
                    (Pb_survivorat_s_p9)

                    ; #53921: <==closure== 27475 (pos)
                    (Pc_survivorat_s_p9)

                    ; #58145: <==closure== 82979 (pos)
                    (Pa_survivorat_s_p9)

                    ; #62831: origin
                    (Bd_survivorat_s_p9)

                    ; #79994: origin
                    (Bb_survivorat_s_p9)

                    ; #82979: origin
                    (Ba_survivorat_s_p9)

                    ; #27041: <==negation-removal== 62831 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #30850: <==negation-removal== 82979 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #45228: <==negation-removal== 20776 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #47913: <==negation-removal== 79994 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63569: <==negation-removal== 48222 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #72613: <==negation-removal== 27475 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #79777: <==negation-removal== 58145 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #88480: <==negation-removal== 53921 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #60454: origin
                    (at_a_p1)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #37125: origin
                    (at_a_p11)

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #30880: origin
                    (not_at_a_p10)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #39075: origin
                    (at_a_p3)

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #30880: origin
                    (not_at_a_p10)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #38550: origin
                    (at_a_p5)

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #44086: origin
                    (at_a_p7)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #64172: origin
                    (at_a_p8)

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #30880: origin
                    (not_at_a_p10)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #73409: <==negation-removal== 30880 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #60454: origin
                    (at_a_p1)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #62028: origin
                    (not_at_a_p11)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #62028: origin
                    (not_at_a_p11)

                    ; #91379: origin
                    (at_a_p12)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #62028: origin
                    (not_at_a_p11)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #62028: origin
                    (not_at_a_p11)

                    ; #64172: origin
                    (at_a_p8)

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #57920: origin
                    (at_a_p9)

                    ; #62028: origin
                    (not_at_a_p11)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #37125: <==negation-removal== 62028 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #60454: origin
                    (at_a_p1)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #44628: origin
                    (not_at_a_p12)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #64172: origin
                    (at_a_p8)

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #44628: origin
                    (not_at_a_p12)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #91379: <==negation-removal== 44628 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #60454: origin
                    (at_a_p1)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #48273: origin
                    (not_at_a_p1)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #64172: origin
                    (at_a_p8)

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #48273: origin
                    (not_at_a_p1)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #60454: <==negation-removal== 48273 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #60454: origin
                    (at_a_p1)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #73409: origin
                    (at_a_p10)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #91379: origin
                    (at_a_p12)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #55007: origin
                    (not_at_a_p2)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #64172: origin
                    (at_a_p8)

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #55007: origin
                    (not_at_a_p2)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #23203: <==negation-removal== 55007 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #60454: origin
                    (at_a_p1)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #69707: origin
                    (not_at_a_p3)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #69707: origin
                    (not_at_a_p3)

                    ; #91379: origin
                    (at_a_p12)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #69707: origin
                    (not_at_a_p3)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #64172: origin
                    (at_a_p8)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #57920: origin
                    (at_a_p9)

                    ; #69707: origin
                    (not_at_a_p3)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #39075: <==negation-removal== 69707 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #60454: origin
                    (at_a_p1)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #73409: origin
                    (at_a_p10)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #91379: origin
                    (at_a_p12)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #79443: origin
                    (at_a_p6)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #50687: origin
                    (not_at_a_p4)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #64172: origin
                    (at_a_p8)

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #50687: origin
                    (not_at_a_p4)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #11781: <==negation-removal== 50687 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #60454: origin
                    (at_a_p1)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #73409: origin
                    (at_a_p10)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #74956: origin
                    (not_at_a_p5)

                    ; #91379: origin
                    (at_a_p12)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #74956: origin
                    (not_at_a_p5)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #64172: origin
                    (at_a_p8)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #57920: origin
                    (at_a_p9)

                    ; #74956: origin
                    (not_at_a_p5)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #38550: <==negation-removal== 74956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #60454: origin
                    (at_a_p1)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #37125: origin
                    (at_a_p11)

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #23203: origin
                    (at_a_p2)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #39075: origin
                    (at_a_p3)

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #19893: origin
                    (not_at_a_p6)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #38550: origin
                    (at_a_p5)

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #44086: origin
                    (at_a_p7)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #64172: origin
                    (at_a_p8)

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #19893: origin
                    (not_at_a_p6)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #79443: <==negation-removal== 19893 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #60454: origin
                    (at_a_p1)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #44086: origin
                    (at_a_p7)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #64172: origin
                    (at_a_p8)

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #39687: origin
                    (not_at_a_p7)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #44086: <==negation-removal== 39687 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #60454: origin
                    (at_a_p1)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #73409: origin
                    (at_a_p10)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #37125: origin
                    (at_a_p11)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #88701: origin
                    (not_at_a_p8)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #23203: origin
                    (at_a_p2)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #39075: origin
                    (at_a_p3)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #11781: origin
                    (at_a_p4)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #38550: origin
                    (at_a_p5)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #79443: origin
                    (at_a_p6)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #44086: origin
                    (at_a_p7)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #64172: origin
                    (at_a_p8)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #57920: origin
                    (at_a_p9)

                    ; #88701: origin
                    (not_at_a_p8)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #64172: <==negation-removal== 88701 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #60454: origin
                    (at_a_p1)

                    ; #48273: <==negation-removal== 60454 (pos)
                    (not (not_at_a_p1))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #73409: origin
                    (at_a_p10)

                    ; #30880: <==negation-removal== 73409 (pos)
                    (not (not_at_a_p10))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #37125: origin
                    (at_a_p11)

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))

                    ; #62028: <==negation-removal== 37125 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #91379: origin
                    (at_a_p12)

                    ; #44628: <==negation-removal== 91379 (pos)
                    (not (not_at_a_p12))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #23203: origin
                    (at_a_p2)

                    ; #55007: <==negation-removal== 23203 (pos)
                    (not (not_at_a_p2))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #39075: origin
                    (at_a_p3)

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))

                    ; #69707: <==negation-removal== 39075 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #11781: origin
                    (at_a_p4)

                    ; #50687: <==negation-removal== 11781 (pos)
                    (not (not_at_a_p4))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #38550: origin
                    (at_a_p5)

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))

                    ; #74956: <==negation-removal== 38550 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #79443: origin
                    (at_a_p6)

                    ; #19893: <==negation-removal== 79443 (pos)
                    (not (not_at_a_p6))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #44086: origin
                    (at_a_p7)

                    ; #39687: <==negation-removal== 44086 (pos)
                    (not (not_at_a_p7))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #64172: origin
                    (at_a_p8)

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))

                    ; #88701: <==negation-removal== 64172 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #11122: origin
                    (not_at_a_p9)

                    ; #57920: origin
                    (at_a_p9)

                    ; #11122: <==negation-removal== 57920 (pos)
                    (not (not_at_a_p9))

                    ; #57920: <==negation-removal== 11122 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #73501: origin
                    (at_b_p1)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #35566: origin
                    (not_at_b_p10)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #35566: origin
                    (not_at_b_p10)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #35566: origin
                    (not_at_b_p10)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #87701: origin
                    (at_b_p4)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #35566: origin
                    (not_at_b_p10)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #51417: origin
                    (at_b_p6)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #35566: origin
                    (not_at_b_p10)

                    ; #35858: origin
                    (at_b_p8)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #35566: origin
                    (not_at_b_p10)

                    ; #31156: <==negation-removal== 35566 (pos)
                    (not (at_b_p10))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #73501: origin
                    (at_b_p1)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #79638: origin
                    (at_b_p2)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #84015: origin
                    (not_at_b_p11)

                    ; #87701: origin
                    (at_b_p4)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #51417: origin
                    (at_b_p6)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #77532: origin
                    (at_b_p7)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #84015: origin
                    (not_at_b_p11)

                    ; #10558: <==negation-removal== 84015 (pos)
                    (not (at_b_p11))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #59186: origin
                    (not_at_b_p12)

                    ; #73501: origin
                    (at_b_p1)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #59186: origin
                    (not_at_b_p12)

                    ; #79638: origin
                    (at_b_p2)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #59186: origin
                    (not_at_b_p12)

                    ; #87701: origin
                    (at_b_p4)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #51417: origin
                    (at_b_p6)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #59186: origin
                    (not_at_b_p12)

                    ; #77532: origin
                    (at_b_p7)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #59186: origin
                    (not_at_b_p12)

                    ; #12599: <==negation-removal== 59186 (pos)
                    (not (at_b_p12))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #73501: origin
                    (at_b_p1)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #87701: origin
                    (at_b_p4)

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #51417: origin
                    (at_b_p6)

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #38204: origin
                    (not_at_b_p1)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #38204: origin
                    (not_at_b_p1)

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))

                    ; #73501: <==negation-removal== 38204 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #73501: origin
                    (at_b_p1)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #31156: origin
                    (at_b_p10)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #24805: origin
                    (not_at_b_p2)

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #24805: origin
                    (not_at_b_p2)

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #87701: origin
                    (at_b_p4)

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #29633: origin
                    (at_b_p5)

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #51417: origin
                    (at_b_p6)

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #35858: origin
                    (at_b_p8)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #24805: origin
                    (not_at_b_p2)

                    ; #32444: origin
                    (at_b_p9)

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))

                    ; #79638: <==negation-removal== 24805 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #73501: origin
                    (at_b_p1)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #31156: origin
                    (at_b_p10)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #11358: origin
                    (not_at_b_p3)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #12599: origin
                    (at_b_p12)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #87701: origin
                    (at_b_p4)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #29633: origin
                    (at_b_p5)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #51417: origin
                    (at_b_p6)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #35858: origin
                    (at_b_p8)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #11358: origin
                    (not_at_b_p3)

                    ; #32444: origin
                    (at_b_p9)

                    ; #41252: <==negation-removal== 11358 (pos)
                    (not (at_b_p3))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #69664: origin
                    (not_at_b_p4)

                    ; #73501: origin
                    (at_b_p1)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #69664: origin
                    (not_at_b_p4)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #69664: origin
                    (not_at_b_p4)

                    ; #87701: origin
                    (at_b_p4)

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #51417: origin
                    (at_b_p6)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #69664: origin
                    (not_at_b_p4)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #69664: origin
                    (not_at_b_p4)

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))

                    ; #87701: <==negation-removal== 69664 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #53186: origin
                    (not_at_b_p5)

                    ; #73501: origin
                    (at_b_p1)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #53186: origin
                    (not_at_b_p5)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #53186: origin
                    (not_at_b_p5)

                    ; #87701: origin
                    (at_b_p4)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #51417: origin
                    (at_b_p6)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #53186: origin
                    (not_at_b_p5)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #53186: origin
                    (not_at_b_p5)

                    ; #29633: <==negation-removal== 53186 (pos)
                    (not (at_b_p5))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #73501: origin
                    (at_b_p1)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #79638: origin
                    (at_b_p2)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #85195: origin
                    (not_at_b_p6)

                    ; #87701: origin
                    (at_b_p4)

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #51417: origin
                    (at_b_p6)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #77532: origin
                    (at_b_p7)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #85195: origin
                    (not_at_b_p6)

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))

                    ; #51417: <==negation-removal== 85195 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #73501: origin
                    (at_b_p1)

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #31156: origin
                    (at_b_p10)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #13186: origin
                    (not_at_b_p7)

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #13186: origin
                    (not_at_b_p7)

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #87701: origin
                    (at_b_p4)

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #29633: origin
                    (at_b_p5)

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #51417: origin
                    (at_b_p6)

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #35858: origin
                    (at_b_p8)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #13186: origin
                    (not_at_b_p7)

                    ; #32444: origin
                    (at_b_p9)

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))

                    ; #77532: <==negation-removal== 13186 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #73501: origin
                    (at_b_p1)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #31156: origin
                    (at_b_p10)

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #30313: origin
                    (not_at_b_p8)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #30313: origin
                    (not_at_b_p8)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #41252: origin
                    (at_b_p3)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #87701: origin
                    (at_b_p4)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #30313: origin
                    (not_at_b_p8)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #51417: origin
                    (at_b_p6)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #35858: origin
                    (at_b_p8)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #30313: origin
                    (not_at_b_p8)

                    ; #32444: origin
                    (at_b_p9)

                    ; #35858: <==negation-removal== 30313 (pos)
                    (not (at_b_p8))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #42435: origin
                    (not_at_b_p9)

                    ; #73501: origin
                    (at_b_p1)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #38204: <==negation-removal== 73501 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #31156: origin
                    (at_b_p10)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #35566: <==negation-removal== 31156 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #10558: origin
                    (at_b_p11)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #84015: <==negation-removal== 10558 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #12599: origin
                    (at_b_p12)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #59186: <==negation-removal== 12599 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #42435: origin
                    (not_at_b_p9)

                    ; #79638: origin
                    (at_b_p2)

                    ; #24805: <==negation-removal== 79638 (pos)
                    (not (not_at_b_p2))

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #41252: origin
                    (at_b_p3)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #11358: <==negation-removal== 41252 (pos)
                    (not (not_at_b_p3))

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #42435: origin
                    (not_at_b_p9)

                    ; #87701: origin
                    (at_b_p4)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #69664: <==negation-removal== 87701 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #29633: origin
                    (at_b_p5)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #53186: <==negation-removal== 29633 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #42435: origin
                    (not_at_b_p9)

                    ; #51417: origin
                    (at_b_p6)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #85195: <==negation-removal== 51417 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #42435: origin
                    (not_at_b_p9)

                    ; #77532: origin
                    (at_b_p7)

                    ; #13186: <==negation-removal== 77532 (pos)
                    (not (not_at_b_p7))

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #35858: origin
                    (at_b_p8)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #30313: <==negation-removal== 35858 (pos)
                    (not (not_at_b_p8))

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #32444: origin
                    (at_b_p9)

                    ; #42435: origin
                    (not_at_b_p9)

                    ; #32444: <==negation-removal== 42435 (pos)
                    (not (at_b_p9))

                    ; #42435: <==negation-removal== 32444 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #43090: origin
                    (not_at_c_p10)

                    ; #79463: origin
                    (at_c_p11)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #43090: origin
                    (not_at_c_p10)

                    ; #93533: origin
                    (at_c_p3)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #43090: origin
                    (not_at_c_p10)

                    ; #59166: origin
                    (at_c_p6)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #43090: origin
                    (not_at_c_p10)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #43090: origin
                    (not_at_c_p10)

                    ; #51015: origin
                    (at_c_p9)

                    ; #27629: <==negation-removal== 43090 (pos)
                    (not (at_c_p10))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #76952: origin
                    (not_at_c_p11)

                    ; #79463: origin
                    (at_c_p11)

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #76952: origin
                    (not_at_c_p11)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #59166: origin
                    (at_c_p6)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #76952: origin
                    (not_at_c_p11)

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))

                    ; #79463: <==negation-removal== 76952 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #56964: origin
                    (not_at_c_p12)

                    ; #79463: origin
                    (at_c_p11)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #56964: origin
                    (not_at_c_p12)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #56964: origin
                    (not_at_c_p12)

                    ; #59166: origin
                    (at_c_p6)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #56964: origin
                    (not_at_c_p12)

                    ; #34906: <==negation-removal== 56964 (pos)
                    (not (at_c_p12))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #17304: origin
                    (not_at_c_p1)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #27629: origin
                    (at_c_p10)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #79463: origin
                    (at_c_p11)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #34906: origin
                    (at_c_p12)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #27596: origin
                    (at_c_p2)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #93533: origin
                    (at_c_p3)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #34421: origin
                    (at_c_p4)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #33604: origin
                    (at_c_p5)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #59166: origin
                    (at_c_p6)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #17304: origin
                    (not_at_c_p1)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #38088: origin
                    (at_c_p8)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #17304: origin
                    (not_at_c_p1)

                    ; #51015: origin
                    (at_c_p9)

                    ; #13629: <==negation-removal== 17304 (pos)
                    (not (at_c_p1))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #36341: origin
                    (not_at_c_p2)

                    ; #79463: origin
                    (at_c_p11)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #36341: origin
                    (not_at_c_p2)

                    ; #93533: origin
                    (at_c_p3)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #36341: origin
                    (not_at_c_p2)

                    ; #59166: origin
                    (at_c_p6)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #36341: origin
                    (not_at_c_p2)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #36341: origin
                    (not_at_c_p2)

                    ; #38088: origin
                    (at_c_p8)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #36341: origin
                    (not_at_c_p2)

                    ; #51015: origin
                    (at_c_p9)

                    ; #27596: <==negation-removal== 36341 (pos)
                    (not (at_c_p2))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #32979: origin
                    (not_at_c_p3)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #32979: origin
                    (not_at_c_p3)

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #79463: origin
                    (at_c_p11)

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #34906: origin
                    (at_c_p12)

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #32979: origin
                    (not_at_c_p3)

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #34421: origin
                    (at_c_p4)

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #33604: origin
                    (at_c_p5)

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #59166: origin
                    (at_c_p6)

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #32979: origin
                    (not_at_c_p3)

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #38088: origin
                    (at_c_p8)

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #32979: origin
                    (not_at_c_p3)

                    ; #51015: origin
                    (at_c_p9)

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))

                    ; #93533: <==negation-removal== 32979 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #79463: origin
                    (at_c_p11)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #87360: origin
                    (not_at_c_p4)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #59166: origin
                    (at_c_p6)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #87360: origin
                    (not_at_c_p4)

                    ; #34421: <==negation-removal== 87360 (pos)
                    (not (at_c_p4))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #52298: origin
                    (not_at_c_p5)

                    ; #79463: origin
                    (at_c_p11)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #52298: origin
                    (not_at_c_p5)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #52298: origin
                    (not_at_c_p5)

                    ; #59166: origin
                    (at_c_p6)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #52298: origin
                    (not_at_c_p5)

                    ; #33604: <==negation-removal== 52298 (pos)
                    (not (at_c_p5))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #71040: origin
                    (not_at_c_p6)

                    ; #79463: origin
                    (at_c_p11)

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #71040: origin
                    (not_at_c_p6)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #59166: origin
                    (at_c_p6)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #71040: origin
                    (not_at_c_p6)

                    ; #59166: <==negation-removal== 71040 (pos)
                    (not (at_c_p6))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #40239: origin
                    (not_at_c_p7)

                    ; #79463: origin
                    (at_c_p11)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #40239: origin
                    (not_at_c_p7)

                    ; #93533: origin
                    (at_c_p3)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #40239: origin
                    (not_at_c_p7)

                    ; #59166: origin
                    (at_c_p6)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #40239: origin
                    (not_at_c_p7)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #40239: origin
                    (not_at_c_p7)

                    ; #51015: origin
                    (at_c_p9)

                    ; #15008: <==negation-removal== 40239 (pos)
                    (not (at_c_p7))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #42560: origin
                    (not_at_c_p8)

                    ; #79463: origin
                    (at_c_p11)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #42560: origin
                    (not_at_c_p8)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #42560: origin
                    (not_at_c_p8)

                    ; #59166: origin
                    (at_c_p6)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #42560: origin
                    (not_at_c_p8)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #42560: origin
                    (not_at_c_p8)

                    ; #51015: origin
                    (at_c_p9)

                    ; #38088: <==negation-removal== 42560 (pos)
                    (not (at_c_p8))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #13629: origin
                    (at_c_p1)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #17304: <==negation-removal== 13629 (pos)
                    (not (not_at_c_p1))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #27629: origin
                    (at_c_p10)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #43090: <==negation-removal== 27629 (pos)
                    (not (not_at_c_p10))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #79256: origin
                    (not_at_c_p9)

                    ; #79463: origin
                    (at_c_p11)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #76952: <==negation-removal== 79463 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #34906: origin
                    (at_c_p12)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #56964: <==negation-removal== 34906 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #27596: origin
                    (at_c_p2)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #36341: <==negation-removal== 27596 (pos)
                    (not (not_at_c_p2))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #79256: origin
                    (not_at_c_p9)

                    ; #93533: origin
                    (at_c_p3)

                    ; #32979: <==negation-removal== 93533 (pos)
                    (not (not_at_c_p3))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #34421: origin
                    (at_c_p4)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #87360: <==negation-removal== 34421 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #33604: origin
                    (at_c_p5)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #52298: <==negation-removal== 33604 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #59166: origin
                    (at_c_p6)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #71040: <==negation-removal== 59166 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #15008: origin
                    (at_c_p7)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #40239: <==negation-removal== 15008 (pos)
                    (not (not_at_c_p7))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #38088: origin
                    (at_c_p8)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #42560: <==negation-removal== 38088 (pos)
                    (not (not_at_c_p8))

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #51015: origin
                    (at_c_p9)

                    ; #79256: origin
                    (not_at_c_p9)

                    ; #51015: <==negation-removal== 79256 (pos)
                    (not (at_c_p9))

                    ; #79256: <==negation-removal== 51015 (pos)
                    (not (not_at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #68152: origin
                    (not_at_d_p10)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #80204: origin
                    (at_d_p11)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #71145: origin
                    (at_d_p12)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #72167: origin
                    (at_d_p2)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #68152: origin
                    (not_at_d_p10)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #77447: origin
                    (at_d_p4)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #83805: origin
                    (at_d_p6)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #68152: origin
                    (not_at_d_p10)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #68152: origin
                    (not_at_d_p10)

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #68152: origin
                    (not_at_d_p10)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #30971: <==negation-removal== 68152 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #54256: origin
                    (not_at_d_p11)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #71145: origin
                    (at_d_p12)

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #72167: origin
                    (at_d_p2)

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #54256: origin
                    (not_at_d_p11)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #77447: origin
                    (at_d_p4)

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #54256: origin
                    (not_at_d_p11)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11))
        :effect (and
                    ; #54256: origin
                    (not_at_d_p11)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #80204: <==negation-removal== 54256 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #82236: origin
                    (at_d_p1)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #80204: origin
                    (at_d_p11)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12))
        :effect (and
                    ; #71145: origin
                    (at_d_p12)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #72167: origin
                    (at_d_p2)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #77447: origin
                    (at_d_p4)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12))
        :effect (and
                    ; #76201: origin
                    (at_d_p5)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12))
        :effect (and
                    ; #83805: origin
                    (at_d_p6)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_d_p12))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12))
        :effect (and
                    ; #82833: origin
                    (at_d_p9)

                    ; #98130: origin
                    (not_at_d_p12)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #71145: <==negation-removal== 98130 (pos)
                    (not (at_d_p12))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (at_d_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #30971: origin
                    (at_d_p10)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #71145: origin
                    (at_d_p12)

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #72167: origin
                    (at_d_p2)

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #24394: origin
                    (not_at_d_p1)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #77447: origin
                    (at_d_p4)

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #46044: origin
                    (at_d_p8)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #24394: origin
                    (not_at_d_p1)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #82236: <==negation-removal== 24394 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #82236: origin
                    (at_d_p1)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #80204: origin
                    (at_d_p11)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #71145: origin
                    (at_d_p12)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #72167: origin
                    (at_d_p2)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #77447: origin
                    (at_d_p4)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2))
        :effect (and
                    ; #76201: origin
                    (at_d_p5)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #83805: origin
                    (at_d_p6)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_d_p2))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #82833: origin
                    (at_d_p9)

                    ; #90940: origin
                    (not_at_d_p2)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #72167: <==negation-removal== 90940 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #82236: origin
                    (at_d_p1)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #44686: origin
                    (not_at_d_p3)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #80204: origin
                    (at_d_p11)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #71145: origin
                    (at_d_p12)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #72167: origin
                    (at_d_p2)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #44686: origin
                    (not_at_d_p3)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #77447: origin
                    (at_d_p4)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #76201: origin
                    (at_d_p5)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #83805: origin
                    (at_d_p6)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #59715: origin
                    (at_d_p7)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #46044: origin
                    (at_d_p8)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #44686: origin
                    (not_at_d_p3)

                    ; #82833: origin
                    (at_d_p9)

                    ; #14460: <==negation-removal== 44686 (pos)
                    (not (at_d_p3))

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #82236: origin
                    (at_d_p1)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #80204: origin
                    (at_d_p11)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_d_p4))
        :effect (and
                    ; #71145: origin
                    (at_d_p12)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #72167: origin
                    (at_d_p2)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_d_p4))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #77447: origin
                    (at_d_p4)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #76201: origin
                    (at_d_p5)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #83805: origin
                    (at_d_p6)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #82833: origin
                    (at_d_p9)

                    ; #91114: origin
                    (not_at_d_p4)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #77447: <==negation-removal== 91114 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #30971: origin
                    (at_d_p10)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (at_d_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #71145: origin
                    (at_d_p12)

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #72167: origin
                    (at_d_p2)

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #23409: origin
                    (not_at_d_p5)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #77447: origin
                    (at_d_p4)

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #46044: origin
                    (at_d_p8)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #23409: origin
                    (not_at_d_p5)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #76201: <==negation-removal== 23409 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #33575: origin
                    (not_at_d_p6)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #71145: origin
                    (at_d_p12)

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #72167: origin
                    (at_d_p2)

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #33575: origin
                    (not_at_d_p6)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #77447: origin
                    (at_d_p4)

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #46044: origin
                    (at_d_p8)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #33575: origin
                    (not_at_d_p6)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #83805: <==negation-removal== 33575 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #64993: origin
                    (not_at_d_p7)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #71145: origin
                    (at_d_p12)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #72167: origin
                    (at_d_p2)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #64993: origin
                    (not_at_d_p7)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #77447: origin
                    (at_d_p4)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: origin
                    (not_at_d_p7)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #64993: origin
                    (not_at_d_p7)

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #64993: origin
                    (not_at_d_p7)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #59715: <==negation-removal== 64993 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8))
        :effect (and
                    ; #30971: origin
                    (at_d_p10)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #80204: origin
                    (at_d_p11)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_d_p8))
        :effect (and
                    ; #71145: origin
                    (at_d_p12)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #72167: origin
                    (at_d_p2)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #77447: origin
                    (at_d_p4)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #59715: origin
                    (at_d_p7)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #46044: origin
                    (at_d_p8)

                    ; #75689: origin
                    (not_at_d_p8)

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #75689: origin
                    (not_at_d_p8)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #46044: <==negation-removal== 75689 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #82236: origin
                    (at_d_p1)

                    ; #24394: <==negation-removal== 82236 (pos)
                    (not (not_at_d_p1))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #30971: origin
                    (at_d_p10)

                    ; #68152: <==negation-removal== 30971 (pos)
                    (not (not_at_d_p10))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #80204: origin
                    (at_d_p11)

                    ; #54256: <==negation-removal== 80204 (pos)
                    (not (not_at_d_p11))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #71145: origin
                    (at_d_p12)

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))

                    ; #98130: <==negation-removal== 71145 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #72167: origin
                    (at_d_p2)

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))

                    ; #90940: <==negation-removal== 72167 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #14460: origin
                    (at_d_p3)

                    ; #15388: origin
                    (not_at_d_p9)

                    ; #44686: <==negation-removal== 14460 (pos)
                    (not (not_at_d_p3))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #77447: origin
                    (at_d_p4)

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))

                    ; #91114: <==negation-removal== 77447 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #76201: origin
                    (at_d_p5)

                    ; #23409: <==negation-removal== 76201 (pos)
                    (not (not_at_d_p5))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #83805: origin
                    (at_d_p6)

                    ; #33575: <==negation-removal== 83805 (pos)
                    (not (not_at_d_p6))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #59715: origin
                    (at_d_p7)

                    ; #64993: <==negation-removal== 59715 (pos)
                    (not (not_at_d_p7))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #46044: origin
                    (at_d_p8)

                    ; #75689: <==negation-removal== 46044 (pos)
                    (not (not_at_d_p8))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #15388: origin
                    (not_at_d_p9)

                    ; #82833: origin
                    (at_d_p9)

                    ; #15388: <==negation-removal== 82833 (pos)
                    (not (not_at_d_p9))

                    ; #82833: <==negation-removal== 15388 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11384: <==commonly_known== 28908 (neg)
                    (Pb_checked_p10)

                    ; #12187: <==commonly_known== 40032 (pos)
                    (Bc_checked_p10)

                    ; #13081: <==commonly_known== 40032 (pos)
                    (Ba_checked_p10)

                    ; #17553: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #24664: <==commonly_known== 28908 (neg)
                    (Pa_checked_p10)

                    ; #31698: <==commonly_known== 40032 (pos)
                    (Bd_checked_p10)

                    ; #34725: <==closure== 91868 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #36208: <==commonly_known== 28908 (neg)
                    (Pc_checked_p10)

                    ; #40032: origin
                    (checked_p10)

                    ; #50070: <==commonly_known== 28908 (neg)
                    (Pd_checked_p10)

                    ; #70494: <==commonly_known== 40032 (pos)
                    (Bb_checked_p10)

                    ; #75248: <==closure== 17553 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #91868: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #10996: <==negation-removal== 11384 (pos)
                    (not (Bb_not_checked_p10))

                    ; #14267: <==uncertain_firing== 75248 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #28908: <==negation-removal== 40032 (pos)
                    (not (not_checked_p10))

                    ; #30486: <==negation-removal== 24664 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35487: <==negation-removal== 13081 (pos)
                    (not (Pa_not_checked_p10))

                    ; #36177: <==negation-removal== 75248 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #36599: <==uncertain_firing== 17553 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #38216: <==negation-removal== 17553 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #48425: <==uncertain_firing== 91868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #57293: <==uncertain_firing== 34725 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #59458: <==negation-removal== 91868 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #61022: <==negation-removal== 70494 (pos)
                    (not (Pb_not_checked_p10))

                    ; #70759: <==negation-removal== 31698 (pos)
                    (not (Pd_not_checked_p10))

                    ; #77609: <==negation-removal== 34725 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #82680: <==negation-removal== 36208 (pos)
                    (not (Bc_not_checked_p10))

                    ; #87689: <==negation-removal== 12187 (pos)
                    (not (Pc_not_checked_p10))

                    ; #89269: <==negation-removal== 50070 (pos)
                    (not (Bd_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11040: <==commonly_known== 34426 (neg)
                    (Pa_checked_p11)

                    ; #14603: <==commonly_known== 34426 (neg)
                    (Pb_checked_p11)

                    ; #15954: <==closure== 24880 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #17472: <==commonly_known== 18530 (pos)
                    (Ba_checked_p11)

                    ; #18530: origin
                    (checked_p11)

                    ; #19447: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #24880: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #25666: <==commonly_known== 18530 (pos)
                    (Bd_checked_p11)

                    ; #26821: <==commonly_known== 34426 (neg)
                    (Pc_checked_p11)

                    ; #46502: <==commonly_known== 18530 (pos)
                    (Bc_checked_p11)

                    ; #47272: <==closure== 19447 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #56502: <==commonly_known== 34426 (neg)
                    (Pd_checked_p11)

                    ; #69622: <==commonly_known== 18530 (pos)
                    (Bb_checked_p11)

                    ; #15555: <==negation-removal== 69622 (pos)
                    (not (Pb_not_checked_p11))

                    ; #19102: <==uncertain_firing== 19447 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #31306: <==negation-removal== 24880 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #32729: <==uncertain_firing== 47272 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #34426: <==negation-removal== 18530 (pos)
                    (not (not_checked_p11))

                    ; #38689: <==negation-removal== 47272 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #38981: <==uncertain_firing== 24880 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #39275: <==negation-removal== 11040 (pos)
                    (not (Ba_not_checked_p11))

                    ; #47997: <==negation-removal== 17472 (pos)
                    (not (Pa_not_checked_p11))

                    ; #49518: <==negation-removal== 15954 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #57957: <==negation-removal== 26821 (pos)
                    (not (Bc_not_checked_p11))

                    ; #59369: <==negation-removal== 14603 (pos)
                    (not (Bb_not_checked_p11))

                    ; #70166: <==uncertain_firing== 15954 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #71555: <==negation-removal== 56502 (pos)
                    (not (Bd_not_checked_p11))

                    ; #74076: <==negation-removal== 46502 (pos)
                    (not (Pc_not_checked_p11))

                    ; #77200: <==negation-removal== 19447 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #88442: <==negation-removal== 25666 (pos)
                    (not (Pd_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #17460: <==commonly_known== 33452 (neg)
                    (Pc_checked_p12)

                    ; #18567: <==commonly_known== 79967 (pos)
                    (Bd_checked_p12)

                    ; #25377: <==closure== 54293 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #37576: <==commonly_known== 79967 (pos)
                    (Bb_checked_p12)

                    ; #47433: <==commonly_known== 33452 (neg)
                    (Pa_checked_p12)

                    ; #54293: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #58046: <==commonly_known== 79967 (pos)
                    (Ba_checked_p12)

                    ; #58161: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #61402: <==closure== 58161 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #72321: <==commonly_known== 33452 (neg)
                    (Pb_checked_p12)

                    ; #79967: origin
                    (checked_p12)

                    ; #81093: <==commonly_known== 79967 (pos)
                    (Bc_checked_p12)

                    ; #90936: <==commonly_known== 33452 (neg)
                    (Pd_checked_p12)

                    ; #21038: <==negation-removal== 72321 (pos)
                    (not (Bb_not_checked_p12))

                    ; #31285: <==negation-removal== 58046 (pos)
                    (not (Pa_not_checked_p12))

                    ; #33452: <==negation-removal== 79967 (pos)
                    (not (not_checked_p12))

                    ; #45655: <==negation-removal== 81093 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48349: <==negation-removal== 17460 (pos)
                    (not (Bc_not_checked_p12))

                    ; #51507: <==uncertain_firing== 54293 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #53884: <==uncertain_firing== 61402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #58492: <==negation-removal== 37576 (pos)
                    (not (Pb_not_checked_p12))

                    ; #60155: <==negation-removal== 25377 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #63075: <==negation-removal== 58161 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #71774: <==negation-removal== 54293 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #72866: <==negation-removal== 47433 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74793: <==negation-removal== 90936 (pos)
                    (not (Bd_not_checked_p12))

                    ; #75504: <==negation-removal== 18567 (pos)
                    (not (Pd_not_checked_p12))

                    ; #84742: <==uncertain_firing== 25377 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #86105: <==uncertain_firing== 58161 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #89723: <==negation-removal== 61402 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12268: <==commonly_known== 81643 (neg)
                    (Pa_checked_p1)

                    ; #12666: <==commonly_known== 81643 (neg)
                    (Pb_checked_p1)

                    ; #20039: <==commonly_known== 65237 (pos)
                    (Ba_checked_p1)

                    ; #20819: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #32457: <==commonly_known== 65237 (pos)
                    (Bb_checked_p1)

                    ; #35399: <==closure== 20819 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #48245: <==commonly_known== 81643 (neg)
                    (Pd_checked_p1)

                    ; #51846: <==commonly_known== 65237 (pos)
                    (Bc_checked_p1)

                    ; #65237: origin
                    (checked_p1)

                    ; #70231: <==commonly_known== 65237 (pos)
                    (Bd_checked_p1)

                    ; #72100: <==closure== 74114 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #74114: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #74205: <==commonly_known== 81643 (neg)
                    (Pc_checked_p1)

                    ; #10620: <==negation-removal== 74205 (pos)
                    (not (Bc_not_checked_p1))

                    ; #39771: <==uncertain_firing== 35399 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #40992: <==negation-removal== 20039 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44109: <==uncertain_firing== 74114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #49152: <==negation-removal== 70231 (pos)
                    (not (Pd_not_checked_p1))

                    ; #60333: <==negation-removal== 48245 (pos)
                    (not (Bd_not_checked_p1))

                    ; #62758: <==negation-removal== 72100 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #67905: <==negation-removal== 12666 (pos)
                    (not (Bb_not_checked_p1))

                    ; #69989: <==negation-removal== 74114 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #75865: <==uncertain_firing== 20819 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #77968: <==negation-removal== 35399 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #78466: <==negation-removal== 20819 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #79035: <==negation-removal== 12268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81643: <==negation-removal== 65237 (pos)
                    (not (not_checked_p1))

                    ; #84780: <==uncertain_firing== 72100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #89008: <==negation-removal== 32457 (pos)
                    (not (Pb_not_checked_p1))

                    ; #90211: <==negation-removal== 51846 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #13972: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #17868: <==commonly_known== 21035 (pos)
                    (Bd_checked_p2)

                    ; #21035: origin
                    (checked_p2)

                    ; #35781: <==commonly_known== 21035 (pos)
                    (Bb_checked_p2)

                    ; #36777: <==commonly_known== 83616 (neg)
                    (Pb_checked_p2)

                    ; #45646: <==commonly_known== 83616 (neg)
                    (Pd_checked_p2)

                    ; #45830: <==commonly_known== 21035 (pos)
                    (Bc_checked_p2)

                    ; #52253: <==commonly_known== 83616 (neg)
                    (Pc_checked_p2)

                    ; #66685: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #77151: <==closure== 66685 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #77610: <==commonly_known== 83616 (neg)
                    (Pa_checked_p2)

                    ; #87167: <==commonly_known== 21035 (pos)
                    (Ba_checked_p2)

                    ; #87768: <==closure== 13972 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #22510: <==uncertain_firing== 13972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37594: <==negation-removal== 77151 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #44384: <==uncertain_firing== 87768 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #47996: <==negation-removal== 45830 (pos)
                    (not (Pc_not_checked_p2))

                    ; #49767: <==negation-removal== 66685 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #50106: <==negation-removal== 13972 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #50403: <==negation-removal== 87768 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #52057: <==negation-removal== 36777 (pos)
                    (not (Bb_not_checked_p2))

                    ; #53107: <==negation-removal== 52253 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56647: <==negation-removal== 45646 (pos)
                    (not (Bd_not_checked_p2))

                    ; #60970: <==negation-removal== 17868 (pos)
                    (not (Pd_not_checked_p2))

                    ; #63448: <==uncertain_firing== 66685 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #70577: <==uncertain_firing== 77151 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #73632: <==negation-removal== 87167 (pos)
                    (not (Pa_not_checked_p2))

                    ; #83296: <==negation-removal== 77610 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83616: <==negation-removal== 21035 (pos)
                    (not (not_checked_p2))

                    ; #87245: <==negation-removal== 35781 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12101: <==commonly_known== 18235 (neg)
                    (Pa_checked_p3)

                    ; #21324: <==commonly_known== 18235 (neg)
                    (Pb_checked_p3)

                    ; #21558: <==closure== 78430 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #26592: <==closure== 57356 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #29855: origin
                    (checked_p3)

                    ; #49170: <==commonly_known== 29855 (pos)
                    (Ba_checked_p3)

                    ; #57356: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #60897: <==commonly_known== 29855 (pos)
                    (Bb_checked_p3)

                    ; #63496: <==commonly_known== 29855 (pos)
                    (Bc_checked_p3)

                    ; #78430: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #78615: <==commonly_known== 18235 (neg)
                    (Pd_checked_p3)

                    ; #79966: <==commonly_known== 18235 (neg)
                    (Pc_checked_p3)

                    ; #83483: <==commonly_known== 29855 (pos)
                    (Bd_checked_p3)

                    ; #14424: <==negation-removal== 12101 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18235: <==negation-removal== 29855 (pos)
                    (not (not_checked_p3))

                    ; #21617: <==negation-removal== 49170 (pos)
                    (not (Pa_not_checked_p3))

                    ; #25166: <==negation-removal== 26592 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28155: <==negation-removal== 21324 (pos)
                    (not (Bb_not_checked_p3))

                    ; #31065: <==negation-removal== 21558 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #34500: <==negation-removal== 78615 (pos)
                    (not (Bd_not_checked_p3))

                    ; #34603: <==uncertain_firing== 78430 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #52336: <==negation-removal== 83483 (pos)
                    (not (Pd_not_checked_p3))

                    ; #55073: <==uncertain_firing== 57356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #64291: <==negation-removal== 79966 (pos)
                    (not (Bc_not_checked_p3))

                    ; #67770: <==negation-removal== 57356 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #71168: <==negation-removal== 60897 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71249: <==uncertain_firing== 26592 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #87773: <==uncertain_firing== 21558 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #88972: <==negation-removal== 78430 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #91444: <==negation-removal== 63496 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12033: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #13015: origin
                    (checked_p4)

                    ; #16404: <==commonly_known== 13015 (pos)
                    (Bc_checked_p4)

                    ; #19052: <==commonly_known== 90218 (neg)
                    (Pc_checked_p4)

                    ; #23992: <==commonly_known== 13015 (pos)
                    (Bd_checked_p4)

                    ; #29201: <==commonly_known== 13015 (pos)
                    (Bb_checked_p4)

                    ; #35597: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #43173: <==commonly_known== 90218 (neg)
                    (Pb_checked_p4)

                    ; #43443: <==commonly_known== 90218 (neg)
                    (Pa_checked_p4)

                    ; #45486: <==commonly_known== 90218 (neg)
                    (Pd_checked_p4)

                    ; #57968: <==closure== 35597 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #72542: <==commonly_known== 13015 (pos)
                    (Ba_checked_p4)

                    ; #85706: <==closure== 12033 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #14418: <==uncertain_firing== 35597 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #14554: <==uncertain_firing== 85706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #16373: <==negation-removal== 43173 (pos)
                    (not (Bb_not_checked_p4))

                    ; #22147: <==negation-removal== 35597 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #24685: <==negation-removal== 12033 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38732: <==negation-removal== 23992 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42719: <==negation-removal== 29201 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51240: <==negation-removal== 85706 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57419: <==negation-removal== 45486 (pos)
                    (not (Bd_not_checked_p4))

                    ; #60585: <==uncertain_firing== 57968 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #64342: <==negation-removal== 57968 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #65574: <==negation-removal== 43443 (pos)
                    (not (Ba_not_checked_p4))

                    ; #79145: <==negation-removal== 19052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81015: <==negation-removal== 16404 (pos)
                    (not (Pc_not_checked_p4))

                    ; #83020: <==negation-removal== 72542 (pos)
                    (not (Pa_not_checked_p4))

                    ; #90218: <==negation-removal== 13015 (pos)
                    (not (not_checked_p4))

                    ; #90387: <==uncertain_firing== 12033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20110: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #27707: <==commonly_known== 77400 (neg)
                    (Pd_checked_p5)

                    ; #30478: <==commonly_known== 94069 (pos)
                    (Bd_checked_p5)

                    ; #32669: <==commonly_known== 94069 (pos)
                    (Ba_checked_p5)

                    ; #43318: <==commonly_known== 94069 (pos)
                    (Bb_checked_p5)

                    ; #43498: <==closure== 20110 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #56074: <==commonly_known== 77400 (neg)
                    (Pa_checked_p5)

                    ; #57167: <==commonly_known== 77400 (neg)
                    (Pc_checked_p5)

                    ; #59317: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #69984: <==commonly_known== 77400 (neg)
                    (Pb_checked_p5)

                    ; #86224: <==commonly_known== 94069 (pos)
                    (Bc_checked_p5)

                    ; #91477: <==closure== 59317 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #94069: origin
                    (checked_p5)

                    ; #16217: <==negation-removal== 57167 (pos)
                    (not (Bc_not_checked_p5))

                    ; #18636: <==uncertain_firing== 20110 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #25110: <==negation-removal== 20110 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #34676: <==negation-removal== 32669 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39436: <==uncertain_firing== 43498 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #41111: <==negation-removal== 56074 (pos)
                    (not (Ba_not_checked_p5))

                    ; #46008: <==negation-removal== 69984 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48945: <==negation-removal== 43318 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65229: <==negation-removal== 43498 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #65355: <==negation-removal== 86224 (pos)
                    (not (Pc_not_checked_p5))

                    ; #69280: <==uncertain_firing== 59317 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #71449: <==negation-removal== 91477 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #74451: <==negation-removal== 59317 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76675: <==negation-removal== 27707 (pos)
                    (not (Bd_not_checked_p5))

                    ; #77400: <==negation-removal== 94069 (pos)
                    (not (not_checked_p5))

                    ; #84966: <==uncertain_firing== 91477 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #90328: <==negation-removal== 30478 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22588: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #28155: <==commonly_known== 31180 (neg)
                    (Pd_checked_p6)

                    ; #32894: <==commonly_known== 80770 (pos)
                    (Bb_checked_p6)

                    ; #38109: <==closure== 22588 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38563: <==commonly_known== 80770 (pos)
                    (Ba_checked_p6)

                    ; #49478: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #58459: <==commonly_known== 80770 (pos)
                    (Bc_checked_p6)

                    ; #65489: <==commonly_known== 31180 (neg)
                    (Pa_checked_p6)

                    ; #70880: <==commonly_known== 31180 (neg)
                    (Pb_checked_p6)

                    ; #75456: <==commonly_known== 31180 (neg)
                    (Pc_checked_p6)

                    ; #80770: origin
                    (checked_p6)

                    ; #83434: <==commonly_known== 80770 (pos)
                    (Bd_checked_p6)

                    ; #87557: <==closure== 49478 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #14732: <==uncertain_firing== 49478 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27638: <==negation-removal== 65489 (pos)
                    (not (Ba_not_checked_p6))

                    ; #29222: <==negation-removal== 87557 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #31180: <==negation-removal== 80770 (pos)
                    (not (not_checked_p6))

                    ; #39019: <==negation-removal== 75456 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39446: <==uncertain_firing== 38109 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #49552: <==negation-removal== 70880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55788: <==negation-removal== 38563 (pos)
                    (not (Pa_not_checked_p6))

                    ; #58814: <==negation-removal== 38109 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65936: <==negation-removal== 83434 (pos)
                    (not (Pd_not_checked_p6))

                    ; #72419: <==negation-removal== 58459 (pos)
                    (not (Pc_not_checked_p6))

                    ; #79669: <==uncertain_firing== 22588 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #79753: <==negation-removal== 49478 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #84019: <==negation-removal== 32894 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89164: <==negation-removal== 28155 (pos)
                    (not (Bd_not_checked_p6))

                    ; #91109: <==uncertain_firing== 87557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #98823: <==negation-removal== 22588 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11584: <==commonly_known== 42277 (neg)
                    (Pb_checked_p7)

                    ; #29928: <==closure== 83043 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #49151: <==commonly_known== 89111 (pos)
                    (Bb_checked_p7)

                    ; #54682: <==commonly_known== 89111 (pos)
                    (Bc_checked_p7)

                    ; #56013: <==commonly_known== 42277 (neg)
                    (Pd_checked_p7)

                    ; #57016: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #59960: <==commonly_known== 89111 (pos)
                    (Bd_checked_p7)

                    ; #63754: <==commonly_known== 42277 (neg)
                    (Pc_checked_p7)

                    ; #75772: <==commonly_known== 89111 (pos)
                    (Ba_checked_p7)

                    ; #80310: <==commonly_known== 42277 (neg)
                    (Pa_checked_p7)

                    ; #83043: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #84114: <==closure== 57016 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #89111: origin
                    (checked_p7)

                    ; #10588: <==negation-removal== 11584 (pos)
                    (not (Bb_not_checked_p7))

                    ; #10677: <==negation-removal== 59960 (pos)
                    (not (Pd_not_checked_p7))

                    ; #14996: <==uncertain_firing== 84114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #22574: <==negation-removal== 63754 (pos)
                    (not (Bc_not_checked_p7))

                    ; #34546: <==negation-removal== 83043 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #41834: <==negation-removal== 57016 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #42277: <==negation-removal== 89111 (pos)
                    (not (not_checked_p7))

                    ; #48598: <==negation-removal== 75772 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51291: <==negation-removal== 80310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #52345: <==uncertain_firing== 57016 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #60949: <==uncertain_firing== 83043 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #66986: <==negation-removal== 84114 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #70908: <==negation-removal== 56013 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77832: <==negation-removal== 49151 (pos)
                    (not (Pb_not_checked_p7))

                    ; #79542: <==uncertain_firing== 29928 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #80901: <==negation-removal== 29928 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #91013: <==negation-removal== 54682 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13222: <==commonly_known== 16441 (neg)
                    (Pd_checked_p8)

                    ; #15182: <==commonly_known== 16441 (neg)
                    (Pc_checked_p8)

                    ; #20729: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #31684: <==commonly_known== 99391 (pos)
                    (Bc_checked_p8)

                    ; #42241: <==commonly_known== 16441 (neg)
                    (Pb_checked_p8)

                    ; #44192: <==closure== 46753 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #46753: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #54331: <==commonly_known== 99391 (pos)
                    (Bb_checked_p8)

                    ; #82912: <==commonly_known== 99391 (pos)
                    (Ba_checked_p8)

                    ; #86905: <==closure== 20729 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #89902: <==commonly_known== 99391 (pos)
                    (Bd_checked_p8)

                    ; #97902: <==commonly_known== 16441 (neg)
                    (Pa_checked_p8)

                    ; #99391: origin
                    (checked_p8)

                    ; #16441: <==negation-removal== 99391 (pos)
                    (not (not_checked_p8))

                    ; #30473: <==negation-removal== 15182 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32774: <==negation-removal== 97902 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38597: <==uncertain_firing== 86905 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #40825: <==negation-removal== 54331 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42797: <==negation-removal== 44192 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #43520: <==negation-removal== 13222 (pos)
                    (not (Bd_not_checked_p8))

                    ; #48461: <==negation-removal== 89902 (pos)
                    (not (Pd_not_checked_p8))

                    ; #50619: <==negation-removal== 86905 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #55331: <==uncertain_firing== 46753 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #58105: <==uncertain_firing== 20729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #58842: <==negation-removal== 42241 (pos)
                    (not (Bb_not_checked_p8))

                    ; #60001: <==uncertain_firing== 44192 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #68495: <==negation-removal== 20729 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #76400: <==negation-removal== 82912 (pos)
                    (not (Pa_not_checked_p8))

                    ; #77095: <==negation-removal== 46753 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #86987: <==negation-removal== 31684 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15977: <==commonly_known== 92010 (neg)
                    (Pc_checked_p9)

                    ; #19716: <==commonly_known== 72052 (pos)
                    (Bb_checked_p9)

                    ; #33862: <==commonly_known== 72052 (pos)
                    (Bd_checked_p9)

                    ; #33968: <==closure== 52532 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #52532: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #52963: <==commonly_known== 92010 (neg)
                    (Pa_checked_p9)

                    ; #59728: <==closure== 88106 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #61682: <==commonly_known== 72052 (pos)
                    (Bc_checked_p9)

                    ; #72052: origin
                    (checked_p9)

                    ; #78703: <==commonly_known== 92010 (neg)
                    (Pd_checked_p9)

                    ; #87205: <==commonly_known== 92010 (neg)
                    (Pb_checked_p9)

                    ; #88106: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #91857: <==commonly_known== 72052 (pos)
                    (Ba_checked_p9)

                    ; #10839: <==negation-removal== 78703 (pos)
                    (not (Bd_not_checked_p9))

                    ; #26060: <==negation-removal== 33862 (pos)
                    (not (Pd_not_checked_p9))

                    ; #32386: <==negation-removal== 15977 (pos)
                    (not (Bc_not_checked_p9))

                    ; #32799: <==negation-removal== 87205 (pos)
                    (not (Bb_not_checked_p9))

                    ; #39229: <==negation-removal== 52963 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43105: <==negation-removal== 33968 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46192: <==uncertain_firing== 52532 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #46467: <==negation-removal== 61682 (pos)
                    (not (Pc_not_checked_p9))

                    ; #62832: <==uncertain_firing== 59728 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63895: <==negation-removal== 91857 (pos)
                    (not (Pa_not_checked_p9))

                    ; #71598: <==negation-removal== 52532 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #73835: <==uncertain_firing== 88106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #77330: <==negation-removal== 19716 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77924: <==uncertain_firing== 33968 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #79636: <==negation-removal== 59728 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #81693: <==negation-removal== 88106 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #92010: <==negation-removal== 72052 (pos)
                    (not (not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11384: <==commonly_known== 28908 (neg)
                    (Pb_checked_p10)

                    ; #12187: <==commonly_known== 40032 (pos)
                    (Bc_checked_p10)

                    ; #13081: <==commonly_known== 40032 (pos)
                    (Ba_checked_p10)

                    ; #18207: <==closure== 49776 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #24664: <==commonly_known== 28908 (neg)
                    (Pa_checked_p10)

                    ; #27057: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #31698: <==commonly_known== 40032 (pos)
                    (Bd_checked_p10)

                    ; #33279: <==closure== 27057 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #36208: <==commonly_known== 28908 (neg)
                    (Pc_checked_p10)

                    ; #40032: origin
                    (checked_p10)

                    ; #49776: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #50070: <==commonly_known== 28908 (neg)
                    (Pd_checked_p10)

                    ; #70494: <==commonly_known== 40032 (pos)
                    (Bb_checked_p10)

                    ; #10996: <==negation-removal== 11384 (pos)
                    (not (Bb_not_checked_p10))

                    ; #12954: <==uncertain_firing== 18207 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #28908: <==negation-removal== 40032 (pos)
                    (not (not_checked_p10))

                    ; #30486: <==negation-removal== 24664 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35487: <==negation-removal== 13081 (pos)
                    (not (Pa_not_checked_p10))

                    ; #49466: <==negation-removal== 27057 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #53367: <==uncertain_firing== 27057 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #55454: <==negation-removal== 18207 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #61022: <==negation-removal== 70494 (pos)
                    (not (Pb_not_checked_p10))

                    ; #70759: <==negation-removal== 31698 (pos)
                    (not (Pd_not_checked_p10))

                    ; #73425: <==negation-removal== 33279 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #82680: <==negation-removal== 36208 (pos)
                    (not (Bc_not_checked_p10))

                    ; #84410: <==uncertain_firing== 33279 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #85818: <==negation-removal== 49776 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #87689: <==negation-removal== 12187 (pos)
                    (not (Pc_not_checked_p10))

                    ; #88234: <==uncertain_firing== 49776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #89269: <==negation-removal== 50070 (pos)
                    (not (Bd_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11040: <==commonly_known== 34426 (neg)
                    (Pa_checked_p11)

                    ; #14416: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #14603: <==commonly_known== 34426 (neg)
                    (Pb_checked_p11)

                    ; #17472: <==commonly_known== 18530 (pos)
                    (Ba_checked_p11)

                    ; #18530: origin
                    (checked_p11)

                    ; #25666: <==commonly_known== 18530 (pos)
                    (Bd_checked_p11)

                    ; #26821: <==commonly_known== 34426 (neg)
                    (Pc_checked_p11)

                    ; #46502: <==commonly_known== 18530 (pos)
                    (Bc_checked_p11)

                    ; #46559: <==closure== 90668 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #56502: <==commonly_known== 34426 (neg)
                    (Pd_checked_p11)

                    ; #69622: <==commonly_known== 18530 (pos)
                    (Bb_checked_p11)

                    ; #85395: <==closure== 14416 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #90668: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #14881: <==uncertain_firing== 14416 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #15555: <==negation-removal== 69622 (pos)
                    (not (Pb_not_checked_p11))

                    ; #21679: <==uncertain_firing== 85395 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #26052: <==negation-removal== 46559 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #34426: <==negation-removal== 18530 (pos)
                    (not (not_checked_p11))

                    ; #36642: <==negation-removal== 85395 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #37072: <==uncertain_firing== 46559 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #39275: <==negation-removal== 11040 (pos)
                    (not (Ba_not_checked_p11))

                    ; #47997: <==negation-removal== 17472 (pos)
                    (not (Pa_not_checked_p11))

                    ; #51798: <==negation-removal== 90668 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #57957: <==negation-removal== 26821 (pos)
                    (not (Bc_not_checked_p11))

                    ; #59369: <==negation-removal== 14603 (pos)
                    (not (Bb_not_checked_p11))

                    ; #71555: <==negation-removal== 56502 (pos)
                    (not (Bd_not_checked_p11))

                    ; #74076: <==negation-removal== 46502 (pos)
                    (not (Pc_not_checked_p11))

                    ; #79402: <==negation-removal== 14416 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #84002: <==uncertain_firing== 90668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #88442: <==negation-removal== 25666 (pos)
                    (not (Pd_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11484: <==closure== 88666 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #17460: <==commonly_known== 33452 (neg)
                    (Pc_checked_p12)

                    ; #18567: <==commonly_known== 79967 (pos)
                    (Bd_checked_p12)

                    ; #37576: <==commonly_known== 79967 (pos)
                    (Bb_checked_p12)

                    ; #47433: <==commonly_known== 33452 (neg)
                    (Pa_checked_p12)

                    ; #58046: <==commonly_known== 79967 (pos)
                    (Ba_checked_p12)

                    ; #66474: <==closure== 77982 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #72321: <==commonly_known== 33452 (neg)
                    (Pb_checked_p12)

                    ; #77982: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #79967: origin
                    (checked_p12)

                    ; #81093: <==commonly_known== 79967 (pos)
                    (Bc_checked_p12)

                    ; #88666: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #90936: <==commonly_known== 33452 (neg)
                    (Pd_checked_p12)

                    ; #21038: <==negation-removal== 72321 (pos)
                    (not (Bb_not_checked_p12))

                    ; #26817: <==uncertain_firing== 88666 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #31285: <==negation-removal== 58046 (pos)
                    (not (Pa_not_checked_p12))

                    ; #33452: <==negation-removal== 79967 (pos)
                    (not (not_checked_p12))

                    ; #39607: <==negation-removal== 66474 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #40154: <==negation-removal== 11484 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #40633: <==uncertain_firing== 11484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #45655: <==negation-removal== 81093 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48349: <==negation-removal== 17460 (pos)
                    (not (Bc_not_checked_p12))

                    ; #53919: <==uncertain_firing== 66474 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #57967: <==negation-removal== 77982 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #58492: <==negation-removal== 37576 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66296: <==uncertain_firing== 77982 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #72866: <==negation-removal== 47433 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74793: <==negation-removal== 90936 (pos)
                    (not (Bd_not_checked_p12))

                    ; #75504: <==negation-removal== 18567 (pos)
                    (not (Pd_not_checked_p12))

                    ; #82021: <==negation-removal== 88666 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12268: <==commonly_known== 81643 (neg)
                    (Pa_checked_p1)

                    ; #12666: <==commonly_known== 81643 (neg)
                    (Pb_checked_p1)

                    ; #20039: <==commonly_known== 65237 (pos)
                    (Ba_checked_p1)

                    ; #24354: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #32457: <==commonly_known== 65237 (pos)
                    (Bb_checked_p1)

                    ; #42968: <==closure== 24354 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #48245: <==commonly_known== 81643 (neg)
                    (Pd_checked_p1)

                    ; #51846: <==commonly_known== 65237 (pos)
                    (Bc_checked_p1)

                    ; #59645: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #65237: origin
                    (checked_p1)

                    ; #70231: <==commonly_known== 65237 (pos)
                    (Bd_checked_p1)

                    ; #74205: <==commonly_known== 81643 (neg)
                    (Pc_checked_p1)

                    ; #85033: <==closure== 59645 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #10620: <==negation-removal== 74205 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15962: <==uncertain_firing== 42968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #27418: <==negation-removal== 85033 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39346: <==negation-removal== 24354 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40992: <==negation-removal== 20039 (pos)
                    (not (Pa_not_checked_p1))

                    ; #49152: <==negation-removal== 70231 (pos)
                    (not (Pd_not_checked_p1))

                    ; #56383: <==negation-removal== 42968 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #60333: <==negation-removal== 48245 (pos)
                    (not (Bd_not_checked_p1))

                    ; #61574: <==uncertain_firing== 24354 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #67905: <==negation-removal== 12666 (pos)
                    (not (Bb_not_checked_p1))

                    ; #69228: <==negation-removal== 59645 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #73549: <==uncertain_firing== 59645 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #79035: <==negation-removal== 12268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81643: <==negation-removal== 65237 (pos)
                    (not (not_checked_p1))

                    ; #86644: <==uncertain_firing== 85033 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #89008: <==negation-removal== 32457 (pos)
                    (not (Pb_not_checked_p1))

                    ; #90211: <==negation-removal== 51846 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17868: <==commonly_known== 21035 (pos)
                    (Bd_checked_p2)

                    ; #21035: origin
                    (checked_p2)

                    ; #23946: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #35781: <==commonly_known== 21035 (pos)
                    (Bb_checked_p2)

                    ; #36777: <==commonly_known== 83616 (neg)
                    (Pb_checked_p2)

                    ; #45646: <==commonly_known== 83616 (neg)
                    (Pd_checked_p2)

                    ; #45830: <==commonly_known== 21035 (pos)
                    (Bc_checked_p2)

                    ; #52253: <==commonly_known== 83616 (neg)
                    (Pc_checked_p2)

                    ; #64288: <==closure== 23946 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65585: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #77610: <==commonly_known== 83616 (neg)
                    (Pa_checked_p2)

                    ; #80148: <==closure== 65585 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #87167: <==commonly_known== 21035 (pos)
                    (Ba_checked_p2)

                    ; #13655: <==uncertain_firing== 64288 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #25802: <==negation-removal== 80148 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #47996: <==negation-removal== 45830 (pos)
                    (not (Pc_not_checked_p2))

                    ; #51774: <==uncertain_firing== 23946 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #52057: <==negation-removal== 36777 (pos)
                    (not (Bb_not_checked_p2))

                    ; #53107: <==negation-removal== 52253 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56647: <==negation-removal== 45646 (pos)
                    (not (Bd_not_checked_p2))

                    ; #60551: <==uncertain_firing== 65585 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #60970: <==negation-removal== 17868 (pos)
                    (not (Pd_not_checked_p2))

                    ; #61617: <==negation-removal== 64288 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #70360: <==negation-removal== 23946 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #73024: <==uncertain_firing== 80148 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #73632: <==negation-removal== 87167 (pos)
                    (not (Pa_not_checked_p2))

                    ; #81453: <==negation-removal== 65585 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #83296: <==negation-removal== 77610 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83616: <==negation-removal== 21035 (pos)
                    (not (not_checked_p2))

                    ; #87245: <==negation-removal== 35781 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12101: <==commonly_known== 18235 (neg)
                    (Pa_checked_p3)

                    ; #17578: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #21324: <==commonly_known== 18235 (neg)
                    (Pb_checked_p3)

                    ; #29855: origin
                    (checked_p3)

                    ; #36900: <==closure== 17578 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #47858: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #49170: <==commonly_known== 29855 (pos)
                    (Ba_checked_p3)

                    ; #60897: <==commonly_known== 29855 (pos)
                    (Bb_checked_p3)

                    ; #63496: <==commonly_known== 29855 (pos)
                    (Bc_checked_p3)

                    ; #65467: <==closure== 47858 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #78615: <==commonly_known== 18235 (neg)
                    (Pd_checked_p3)

                    ; #79966: <==commonly_known== 18235 (neg)
                    (Pc_checked_p3)

                    ; #83483: <==commonly_known== 29855 (pos)
                    (Bd_checked_p3)

                    ; #12882: <==uncertain_firing== 47858 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #14424: <==negation-removal== 12101 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18235: <==negation-removal== 29855 (pos)
                    (not (not_checked_p3))

                    ; #21617: <==negation-removal== 49170 (pos)
                    (not (Pa_not_checked_p3))

                    ; #22273: <==uncertain_firing== 17578 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #22885: <==uncertain_firing== 65467 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #25035: <==negation-removal== 47858 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #26378: <==uncertain_firing== 36900 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #28155: <==negation-removal== 21324 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29070: <==negation-removal== 17578 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #34500: <==negation-removal== 78615 (pos)
                    (not (Bd_not_checked_p3))

                    ; #43833: <==negation-removal== 36900 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #52336: <==negation-removal== 83483 (pos)
                    (not (Pd_not_checked_p3))

                    ; #64291: <==negation-removal== 79966 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71168: <==negation-removal== 60897 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84799: <==negation-removal== 65467 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #91444: <==negation-removal== 63496 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13015: origin
                    (checked_p4)

                    ; #16404: <==commonly_known== 13015 (pos)
                    (Bc_checked_p4)

                    ; #19052: <==commonly_known== 90218 (neg)
                    (Pc_checked_p4)

                    ; #22160: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #23992: <==commonly_known== 13015 (pos)
                    (Bd_checked_p4)

                    ; #24491: <==closure== 22160 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #29201: <==commonly_known== 13015 (pos)
                    (Bb_checked_p4)

                    ; #43173: <==commonly_known== 90218 (neg)
                    (Pb_checked_p4)

                    ; #43443: <==commonly_known== 90218 (neg)
                    (Pa_checked_p4)

                    ; #45486: <==commonly_known== 90218 (neg)
                    (Pd_checked_p4)

                    ; #64843: <==closure== 75340 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #72542: <==commonly_known== 13015 (pos)
                    (Ba_checked_p4)

                    ; #75340: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #16373: <==negation-removal== 43173 (pos)
                    (not (Bb_not_checked_p4))

                    ; #38732: <==negation-removal== 23992 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42719: <==negation-removal== 29201 (pos)
                    (not (Pb_not_checked_p4))

                    ; #45736: <==uncertain_firing== 22160 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #47997: <==negation-removal== 64843 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #53922: <==negation-removal== 24491 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #54794: <==uncertain_firing== 64843 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57419: <==negation-removal== 45486 (pos)
                    (not (Bd_not_checked_p4))

                    ; #57650: <==negation-removal== 22160 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #63502: <==uncertain_firing== 24491 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #65574: <==negation-removal== 43443 (pos)
                    (not (Ba_not_checked_p4))

                    ; #66648: <==uncertain_firing== 75340 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #71774: <==negation-removal== 75340 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #79145: <==negation-removal== 19052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81015: <==negation-removal== 16404 (pos)
                    (not (Pc_not_checked_p4))

                    ; #83020: <==negation-removal== 72542 (pos)
                    (not (Pa_not_checked_p4))

                    ; #90218: <==negation-removal== 13015 (pos)
                    (not (not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27707: <==commonly_known== 77400 (neg)
                    (Pd_checked_p5)

                    ; #28617: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #30478: <==commonly_known== 94069 (pos)
                    (Bd_checked_p5)

                    ; #32669: <==commonly_known== 94069 (pos)
                    (Ba_checked_p5)

                    ; #43318: <==commonly_known== 94069 (pos)
                    (Bb_checked_p5)

                    ; #56074: <==commonly_known== 77400 (neg)
                    (Pa_checked_p5)

                    ; #57167: <==commonly_known== 77400 (neg)
                    (Pc_checked_p5)

                    ; #69984: <==commonly_known== 77400 (neg)
                    (Pb_checked_p5)

                    ; #76384: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #86224: <==commonly_known== 94069 (pos)
                    (Bc_checked_p5)

                    ; #87251: <==closure== 28617 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #88060: <==closure== 76384 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #94069: origin
                    (checked_p5)

                    ; #16217: <==negation-removal== 57167 (pos)
                    (not (Bc_not_checked_p5))

                    ; #21883: <==uncertain_firing== 76384 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #34676: <==negation-removal== 32669 (pos)
                    (not (Pa_not_checked_p5))

                    ; #38368: <==negation-removal== 76384 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #39619: <==uncertain_firing== 28617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #41111: <==negation-removal== 56074 (pos)
                    (not (Ba_not_checked_p5))

                    ; #41757: <==uncertain_firing== 87251 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46008: <==negation-removal== 69984 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48945: <==negation-removal== 43318 (pos)
                    (not (Pb_not_checked_p5))

                    ; #58615: <==negation-removal== 87251 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #58733: <==negation-removal== 28617 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #65355: <==negation-removal== 86224 (pos)
                    (not (Pc_not_checked_p5))

                    ; #76675: <==negation-removal== 27707 (pos)
                    (not (Bd_not_checked_p5))

                    ; #77400: <==negation-removal== 94069 (pos)
                    (not (not_checked_p5))

                    ; #84515: <==negation-removal== 88060 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #90328: <==negation-removal== 30478 (pos)
                    (not (Pd_not_checked_p5))

                    ; #92131: <==uncertain_firing== 88060 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #23628: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #28155: <==commonly_known== 31180 (neg)
                    (Pd_checked_p6)

                    ; #32894: <==commonly_known== 80770 (pos)
                    (Bb_checked_p6)

                    ; #35515: <==closure== 72921 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #38563: <==commonly_known== 80770 (pos)
                    (Ba_checked_p6)

                    ; #58459: <==commonly_known== 80770 (pos)
                    (Bc_checked_p6)

                    ; #65489: <==commonly_known== 31180 (neg)
                    (Pa_checked_p6)

                    ; #70880: <==commonly_known== 31180 (neg)
                    (Pb_checked_p6)

                    ; #72921: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #75456: <==commonly_known== 31180 (neg)
                    (Pc_checked_p6)

                    ; #76006: <==closure== 23628 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #80770: origin
                    (checked_p6)

                    ; #83434: <==commonly_known== 80770 (pos)
                    (Bd_checked_p6)

                    ; #26585: <==uncertain_firing== 35515 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #27638: <==negation-removal== 65489 (pos)
                    (not (Ba_not_checked_p6))

                    ; #31180: <==negation-removal== 80770 (pos)
                    (not (not_checked_p6))

                    ; #32980: <==uncertain_firing== 76006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #39019: <==negation-removal== 75456 (pos)
                    (not (Bc_not_checked_p6))

                    ; #44082: <==uncertain_firing== 72921 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #45782: <==uncertain_firing== 23628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #49552: <==negation-removal== 70880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54950: <==negation-removal== 35515 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #55788: <==negation-removal== 38563 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60086: <==negation-removal== 23628 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #65936: <==negation-removal== 83434 (pos)
                    (not (Pd_not_checked_p6))

                    ; #70445: <==negation-removal== 72921 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #72419: <==negation-removal== 58459 (pos)
                    (not (Pc_not_checked_p6))

                    ; #74201: <==negation-removal== 76006 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #84019: <==negation-removal== 32894 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89164: <==negation-removal== 28155 (pos)
                    (not (Bd_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11584: <==commonly_known== 42277 (neg)
                    (Pb_checked_p7)

                    ; #14596: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #32320: <==closure== 14596 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #45174: <==closure== 56241 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #49151: <==commonly_known== 89111 (pos)
                    (Bb_checked_p7)

                    ; #54682: <==commonly_known== 89111 (pos)
                    (Bc_checked_p7)

                    ; #56013: <==commonly_known== 42277 (neg)
                    (Pd_checked_p7)

                    ; #56241: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #59960: <==commonly_known== 89111 (pos)
                    (Bd_checked_p7)

                    ; #63754: <==commonly_known== 42277 (neg)
                    (Pc_checked_p7)

                    ; #75772: <==commonly_known== 89111 (pos)
                    (Ba_checked_p7)

                    ; #80310: <==commonly_known== 42277 (neg)
                    (Pa_checked_p7)

                    ; #89111: origin
                    (checked_p7)

                    ; #10588: <==negation-removal== 11584 (pos)
                    (not (Bb_not_checked_p7))

                    ; #10677: <==negation-removal== 59960 (pos)
                    (not (Pd_not_checked_p7))

                    ; #11961: <==negation-removal== 45174 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #14336: <==uncertain_firing== 32320 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #17703: <==negation-removal== 14596 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #22574: <==negation-removal== 63754 (pos)
                    (not (Bc_not_checked_p7))

                    ; #36825: <==uncertain_firing== 56241 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #42277: <==negation-removal== 89111 (pos)
                    (not (not_checked_p7))

                    ; #48598: <==negation-removal== 75772 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51291: <==negation-removal== 80310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #55179: <==uncertain_firing== 45174 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #68528: <==negation-removal== 32320 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #69336: <==uncertain_firing== 14596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70908: <==negation-removal== 56013 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77832: <==negation-removal== 49151 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87408: <==negation-removal== 56241 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #91013: <==negation-removal== 54682 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13222: <==commonly_known== 16441 (neg)
                    (Pd_checked_p8)

                    ; #15182: <==commonly_known== 16441 (neg)
                    (Pc_checked_p8)

                    ; #23173: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #31684: <==commonly_known== 99391 (pos)
                    (Bc_checked_p8)

                    ; #42241: <==commonly_known== 16441 (neg)
                    (Pb_checked_p8)

                    ; #54331: <==commonly_known== 99391 (pos)
                    (Bb_checked_p8)

                    ; #59012: <==closure== 68515 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #68515: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #82912: <==commonly_known== 99391 (pos)
                    (Ba_checked_p8)

                    ; #89748: <==closure== 23173 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #89902: <==commonly_known== 99391 (pos)
                    (Bd_checked_p8)

                    ; #97902: <==commonly_known== 16441 (neg)
                    (Pa_checked_p8)

                    ; #99391: origin
                    (checked_p8)

                    ; #16441: <==negation-removal== 99391 (pos)
                    (not (not_checked_p8))

                    ; #25387: <==uncertain_firing== 59012 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #30473: <==negation-removal== 15182 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32774: <==negation-removal== 97902 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40825: <==negation-removal== 54331 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43520: <==negation-removal== 13222 (pos)
                    (not (Bd_not_checked_p8))

                    ; #48461: <==negation-removal== 89902 (pos)
                    (not (Pd_not_checked_p8))

                    ; #49139: <==uncertain_firing== 68515 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #52077: <==negation-removal== 23173 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #52309: <==negation-removal== 89748 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #58842: <==negation-removal== 42241 (pos)
                    (not (Bb_not_checked_p8))

                    ; #61186: <==uncertain_firing== 89748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #70667: <==negation-removal== 68515 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #76400: <==negation-removal== 82912 (pos)
                    (not (Pa_not_checked_p8))

                    ; #83556: <==negation-removal== 59012 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #84398: <==uncertain_firing== 23173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #86987: <==negation-removal== 31684 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15977: <==commonly_known== 92010 (neg)
                    (Pc_checked_p9)

                    ; #19716: <==commonly_known== 72052 (pos)
                    (Bb_checked_p9)

                    ; #22527: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #33862: <==commonly_known== 72052 (pos)
                    (Bd_checked_p9)

                    ; #44995: <==closure== 22527 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #52963: <==commonly_known== 92010 (neg)
                    (Pa_checked_p9)

                    ; #59279: <==closure== 83404 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61682: <==commonly_known== 72052 (pos)
                    (Bc_checked_p9)

                    ; #72052: origin
                    (checked_p9)

                    ; #78703: <==commonly_known== 92010 (neg)
                    (Pd_checked_p9)

                    ; #83404: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #87205: <==commonly_known== 92010 (neg)
                    (Pb_checked_p9)

                    ; #91857: <==commonly_known== 72052 (pos)
                    (Ba_checked_p9)

                    ; #10649: <==negation-removal== 44995 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #10839: <==negation-removal== 78703 (pos)
                    (not (Bd_not_checked_p9))

                    ; #24295: <==uncertain_firing== 22527 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #26060: <==negation-removal== 33862 (pos)
                    (not (Pd_not_checked_p9))

                    ; #32386: <==negation-removal== 15977 (pos)
                    (not (Bc_not_checked_p9))

                    ; #32799: <==negation-removal== 87205 (pos)
                    (not (Bb_not_checked_p9))

                    ; #39229: <==negation-removal== 52963 (pos)
                    (not (Ba_not_checked_p9))

                    ; #43284: <==negation-removal== 59279 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #46467: <==negation-removal== 61682 (pos)
                    (not (Pc_not_checked_p9))

                    ; #47953: <==negation-removal== 83404 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #53330: <==uncertain_firing== 44995 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #56950: <==negation-removal== 22527 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #63895: <==negation-removal== 91857 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72236: <==uncertain_firing== 83404 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #77330: <==negation-removal== 19716 (pos)
                    (not (Pb_not_checked_p9))

                    ; #87666: <==uncertain_firing== 59279 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #92010: <==negation-removal== 72052 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11384: <==commonly_known== 28908 (neg)
                    (Pb_checked_p10)

                    ; #12187: <==commonly_known== 40032 (pos)
                    (Bc_checked_p10)

                    ; #13081: <==commonly_known== 40032 (pos)
                    (Ba_checked_p10)

                    ; #21296: <==closure== 82220 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #24664: <==commonly_known== 28908 (neg)
                    (Pa_checked_p10)

                    ; #31698: <==commonly_known== 40032 (pos)
                    (Bd_checked_p10)

                    ; #36208: <==commonly_known== 28908 (neg)
                    (Pc_checked_p10)

                    ; #40032: origin
                    (checked_p10)

                    ; #46537: <==closure== 72916 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #50070: <==commonly_known== 28908 (neg)
                    (Pd_checked_p10)

                    ; #70494: <==commonly_known== 40032 (pos)
                    (Bb_checked_p10)

                    ; #72916: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #82220: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #10996: <==negation-removal== 11384 (pos)
                    (not (Bb_not_checked_p10))

                    ; #14227: <==negation-removal== 82220 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #26892: <==negation-removal== 46537 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #28908: <==negation-removal== 40032 (pos)
                    (not (not_checked_p10))

                    ; #30486: <==negation-removal== 24664 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35487: <==negation-removal== 13081 (pos)
                    (not (Pa_not_checked_p10))

                    ; #40205: <==negation-removal== 72916 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #44826: <==uncertain_firing== 82220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #59500: <==uncertain_firing== 72916 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61022: <==negation-removal== 70494 (pos)
                    (not (Pb_not_checked_p10))

                    ; #70759: <==negation-removal== 31698 (pos)
                    (not (Pd_not_checked_p10))

                    ; #79345: <==uncertain_firing== 21296 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #82680: <==negation-removal== 36208 (pos)
                    (not (Bc_not_checked_p10))

                    ; #85770: <==negation-removal== 21296 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #87689: <==negation-removal== 12187 (pos)
                    (not (Pc_not_checked_p10))

                    ; #89193: <==uncertain_firing== 46537 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #89269: <==negation-removal== 50070 (pos)
                    (not (Bd_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11040: <==commonly_known== 34426 (neg)
                    (Pa_checked_p11)

                    ; #14603: <==commonly_known== 34426 (neg)
                    (Pb_checked_p11)

                    ; #17472: <==commonly_known== 18530 (pos)
                    (Ba_checked_p11)

                    ; #18530: origin
                    (checked_p11)

                    ; #20767: <==closure== 41020 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #25666: <==commonly_known== 18530 (pos)
                    (Bd_checked_p11)

                    ; #26821: <==commonly_known== 34426 (neg)
                    (Pc_checked_p11)

                    ; #41020: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #46502: <==commonly_known== 18530 (pos)
                    (Bc_checked_p11)

                    ; #56502: <==commonly_known== 34426 (neg)
                    (Pd_checked_p11)

                    ; #69589: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #69622: <==commonly_known== 18530 (pos)
                    (Bb_checked_p11)

                    ; #90389: <==closure== 69589 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #15555: <==negation-removal== 69622 (pos)
                    (not (Pb_not_checked_p11))

                    ; #20277: <==uncertain_firing== 20767 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #30303: <==negation-removal== 20767 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #31839: <==uncertain_firing== 90389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #34426: <==negation-removal== 18530 (pos)
                    (not (not_checked_p11))

                    ; #39275: <==negation-removal== 11040 (pos)
                    (not (Ba_not_checked_p11))

                    ; #47126: <==negation-removal== 41020 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47997: <==negation-removal== 17472 (pos)
                    (not (Pa_not_checked_p11))

                    ; #48909: <==negation-removal== 90389 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #57957: <==negation-removal== 26821 (pos)
                    (not (Bc_not_checked_p11))

                    ; #59369: <==negation-removal== 14603 (pos)
                    (not (Bb_not_checked_p11))

                    ; #60757: <==uncertain_firing== 41020 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #71555: <==negation-removal== 56502 (pos)
                    (not (Bd_not_checked_p11))

                    ; #74076: <==negation-removal== 46502 (pos)
                    (not (Pc_not_checked_p11))

                    ; #78840: <==uncertain_firing== 69589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #81668: <==negation-removal== 69589 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #88442: <==negation-removal== 25666 (pos)
                    (not (Pd_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #17460: <==commonly_known== 33452 (neg)
                    (Pc_checked_p12)

                    ; #18567: <==commonly_known== 79967 (pos)
                    (Bd_checked_p12)

                    ; #37576: <==commonly_known== 79967 (pos)
                    (Bb_checked_p12)

                    ; #45115: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #47433: <==commonly_known== 33452 (neg)
                    (Pa_checked_p12)

                    ; #58046: <==commonly_known== 79967 (pos)
                    (Ba_checked_p12)

                    ; #68952: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #72321: <==commonly_known== 33452 (neg)
                    (Pb_checked_p12)

                    ; #78765: <==closure== 68952 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #79967: origin
                    (checked_p12)

                    ; #80414: <==closure== 45115 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #81093: <==commonly_known== 79967 (pos)
                    (Bc_checked_p12)

                    ; #90936: <==commonly_known== 33452 (neg)
                    (Pd_checked_p12)

                    ; #21038: <==negation-removal== 72321 (pos)
                    (not (Bb_not_checked_p12))

                    ; #24585: <==uncertain_firing== 68952 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #29961: <==negation-removal== 45115 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31285: <==negation-removal== 58046 (pos)
                    (not (Pa_not_checked_p12))

                    ; #33452: <==negation-removal== 79967 (pos)
                    (not (not_checked_p12))

                    ; #42951: <==uncertain_firing== 78765 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #45655: <==negation-removal== 81093 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48349: <==negation-removal== 17460 (pos)
                    (not (Bc_not_checked_p12))

                    ; #57023: <==uncertain_firing== 45115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #58492: <==negation-removal== 37576 (pos)
                    (not (Pb_not_checked_p12))

                    ; #66735: <==negation-removal== 68952 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #68935: <==uncertain_firing== 80414 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #70315: <==negation-removal== 78765 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #71731: <==negation-removal== 80414 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #72866: <==negation-removal== 47433 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74793: <==negation-removal== 90936 (pos)
                    (not (Bd_not_checked_p12))

                    ; #75504: <==negation-removal== 18567 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12268: <==commonly_known== 81643 (neg)
                    (Pa_checked_p1)

                    ; #12666: <==commonly_known== 81643 (neg)
                    (Pb_checked_p1)

                    ; #20039: <==commonly_known== 65237 (pos)
                    (Ba_checked_p1)

                    ; #32457: <==commonly_known== 65237 (pos)
                    (Bb_checked_p1)

                    ; #32611: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #47918: <==closure== 32611 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #48245: <==commonly_known== 81643 (neg)
                    (Pd_checked_p1)

                    ; #51846: <==commonly_known== 65237 (pos)
                    (Bc_checked_p1)

                    ; #58319: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #65237: origin
                    (checked_p1)

                    ; #70231: <==commonly_known== 65237 (pos)
                    (Bd_checked_p1)

                    ; #74205: <==commonly_known== 81643 (neg)
                    (Pc_checked_p1)

                    ; #81294: <==closure== 58319 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10620: <==negation-removal== 74205 (pos)
                    (not (Bc_not_checked_p1))

                    ; #30630: <==negation-removal== 32611 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32509: <==uncertain_firing== 32611 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #34654: <==negation-removal== 47918 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #34967: <==uncertain_firing== 47918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #40992: <==negation-removal== 20039 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44814: <==uncertain_firing== 81294 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #49152: <==negation-removal== 70231 (pos)
                    (not (Pd_not_checked_p1))

                    ; #60333: <==negation-removal== 48245 (pos)
                    (not (Bd_not_checked_p1))

                    ; #61824: <==negation-removal== 58319 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #62778: <==uncertain_firing== 58319 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #65325: <==negation-removal== 81294 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #67905: <==negation-removal== 12666 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79035: <==negation-removal== 12268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81643: <==negation-removal== 65237 (pos)
                    (not (not_checked_p1))

                    ; #89008: <==negation-removal== 32457 (pos)
                    (not (Pb_not_checked_p1))

                    ; #90211: <==negation-removal== 51846 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17868: <==commonly_known== 21035 (pos)
                    (Bd_checked_p2)

                    ; #21035: origin
                    (checked_p2)

                    ; #26058: <==closure== 40891 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #35781: <==commonly_known== 21035 (pos)
                    (Bb_checked_p2)

                    ; #36777: <==commonly_known== 83616 (neg)
                    (Pb_checked_p2)

                    ; #40891: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #45646: <==commonly_known== 83616 (neg)
                    (Pd_checked_p2)

                    ; #45830: <==commonly_known== 21035 (pos)
                    (Bc_checked_p2)

                    ; #52253: <==commonly_known== 83616 (neg)
                    (Pc_checked_p2)

                    ; #70300: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #77610: <==commonly_known== 83616 (neg)
                    (Pa_checked_p2)

                    ; #87167: <==commonly_known== 21035 (pos)
                    (Ba_checked_p2)

                    ; #88268: <==closure== 70300 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #12772: <==uncertain_firing== 40891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #24130: <==uncertain_firing== 88268 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #26894: <==negation-removal== 40891 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #45294: <==uncertain_firing== 26058 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #46644: <==negation-removal== 88268 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #47996: <==negation-removal== 45830 (pos)
                    (not (Pc_not_checked_p2))

                    ; #52057: <==negation-removal== 36777 (pos)
                    (not (Bb_not_checked_p2))

                    ; #53107: <==negation-removal== 52253 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56647: <==negation-removal== 45646 (pos)
                    (not (Bd_not_checked_p2))

                    ; #60970: <==negation-removal== 17868 (pos)
                    (not (Pd_not_checked_p2))

                    ; #73632: <==negation-removal== 87167 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74236: <==negation-removal== 70300 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #83296: <==negation-removal== 77610 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83616: <==negation-removal== 21035 (pos)
                    (not (not_checked_p2))

                    ; #84129: <==negation-removal== 26058 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #87245: <==negation-removal== 35781 (pos)
                    (not (Pb_not_checked_p2))

                    ; #89555: <==uncertain_firing== 70300 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12101: <==commonly_known== 18235 (neg)
                    (Pa_checked_p3)

                    ; #13644: <==closure== 81157 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #21324: <==commonly_known== 18235 (neg)
                    (Pb_checked_p3)

                    ; #29855: origin
                    (checked_p3)

                    ; #49170: <==commonly_known== 29855 (pos)
                    (Ba_checked_p3)

                    ; #60897: <==commonly_known== 29855 (pos)
                    (Bb_checked_p3)

                    ; #63496: <==commonly_known== 29855 (pos)
                    (Bc_checked_p3)

                    ; #78615: <==commonly_known== 18235 (neg)
                    (Pd_checked_p3)

                    ; #79966: <==commonly_known== 18235 (neg)
                    (Pc_checked_p3)

                    ; #81157: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #81593: <==closure== 84684 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #83483: <==commonly_known== 29855 (pos)
                    (Bd_checked_p3)

                    ; #84684: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #14424: <==negation-removal== 12101 (pos)
                    (not (Ba_not_checked_p3))

                    ; #17826: <==uncertain_firing== 84684 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #18235: <==negation-removal== 29855 (pos)
                    (not (not_checked_p3))

                    ; #20506: <==uncertain_firing== 81157 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #21617: <==negation-removal== 49170 (pos)
                    (not (Pa_not_checked_p3))

                    ; #21787: <==uncertain_firing== 81593 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #28155: <==negation-removal== 21324 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29354: <==negation-removal== 81157 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #33296: <==negation-removal== 81593 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34500: <==negation-removal== 78615 (pos)
                    (not (Bd_not_checked_p3))

                    ; #52336: <==negation-removal== 83483 (pos)
                    (not (Pd_not_checked_p3))

                    ; #55962: <==uncertain_firing== 13644 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #64291: <==negation-removal== 79966 (pos)
                    (not (Bc_not_checked_p3))

                    ; #71080: <==negation-removal== 13644 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #71168: <==negation-removal== 60897 (pos)
                    (not (Pb_not_checked_p3))

                    ; #86270: <==negation-removal== 84684 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #91444: <==negation-removal== 63496 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13015: origin
                    (checked_p4)

                    ; #16404: <==commonly_known== 13015 (pos)
                    (Bc_checked_p4)

                    ; #19052: <==commonly_known== 90218 (neg)
                    (Pc_checked_p4)

                    ; #23992: <==commonly_known== 13015 (pos)
                    (Bd_checked_p4)

                    ; #29201: <==commonly_known== 13015 (pos)
                    (Bb_checked_p4)

                    ; #33617: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #37104: <==closure== 33617 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #43173: <==commonly_known== 90218 (neg)
                    (Pb_checked_p4)

                    ; #43443: <==commonly_known== 90218 (neg)
                    (Pa_checked_p4)

                    ; #45486: <==commonly_known== 90218 (neg)
                    (Pd_checked_p4)

                    ; #46380: <==closure== 51396 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #51396: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #72542: <==commonly_known== 13015 (pos)
                    (Ba_checked_p4)

                    ; #11175: <==uncertain_firing== 51396 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #11575: <==negation-removal== 51396 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #16373: <==negation-removal== 43173 (pos)
                    (not (Bb_not_checked_p4))

                    ; #33012: <==uncertain_firing== 33617 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #37152: <==uncertain_firing== 37104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38732: <==negation-removal== 23992 (pos)
                    (not (Pd_not_checked_p4))

                    ; #40633: <==negation-removal== 37104 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #42719: <==negation-removal== 29201 (pos)
                    (not (Pb_not_checked_p4))

                    ; #57419: <==negation-removal== 45486 (pos)
                    (not (Bd_not_checked_p4))

                    ; #65574: <==negation-removal== 43443 (pos)
                    (not (Ba_not_checked_p4))

                    ; #79145: <==negation-removal== 19052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #80631: <==negation-removal== 33617 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81015: <==negation-removal== 16404 (pos)
                    (not (Pc_not_checked_p4))

                    ; #83020: <==negation-removal== 72542 (pos)
                    (not (Pa_not_checked_p4))

                    ; #87385: <==negation-removal== 46380 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #89483: <==uncertain_firing== 46380 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90218: <==negation-removal== 13015 (pos)
                    (not (not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27707: <==commonly_known== 77400 (neg)
                    (Pd_checked_p5)

                    ; #30478: <==commonly_known== 94069 (pos)
                    (Bd_checked_p5)

                    ; #32669: <==commonly_known== 94069 (pos)
                    (Ba_checked_p5)

                    ; #43318: <==commonly_known== 94069 (pos)
                    (Bb_checked_p5)

                    ; #44333: <==closure== 72114 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #46924: <==closure== 74549 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #56074: <==commonly_known== 77400 (neg)
                    (Pa_checked_p5)

                    ; #57167: <==commonly_known== 77400 (neg)
                    (Pc_checked_p5)

                    ; #69984: <==commonly_known== 77400 (neg)
                    (Pb_checked_p5)

                    ; #72114: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #74549: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #86224: <==commonly_known== 94069 (pos)
                    (Bc_checked_p5)

                    ; #94069: origin
                    (checked_p5)

                    ; #16217: <==negation-removal== 57167 (pos)
                    (not (Bc_not_checked_p5))

                    ; #30100: <==uncertain_firing== 72114 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #34676: <==negation-removal== 32669 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41111: <==negation-removal== 56074 (pos)
                    (not (Ba_not_checked_p5))

                    ; #46008: <==negation-removal== 69984 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48945: <==negation-removal== 43318 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50780: <==negation-removal== 44333 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #56550: <==uncertain_firing== 74549 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #57498: <==negation-removal== 46924 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #65355: <==negation-removal== 86224 (pos)
                    (not (Pc_not_checked_p5))

                    ; #70280: <==negation-removal== 72114 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #76675: <==negation-removal== 27707 (pos)
                    (not (Bd_not_checked_p5))

                    ; #77175: <==uncertain_firing== 46924 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #77400: <==negation-removal== 94069 (pos)
                    (not (not_checked_p5))

                    ; #79976: <==negation-removal== 74549 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80826: <==uncertain_firing== 44333 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #90328: <==negation-removal== 30478 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #28155: <==commonly_known== 31180 (neg)
                    (Pd_checked_p6)

                    ; #32894: <==commonly_known== 80770 (pos)
                    (Bb_checked_p6)

                    ; #38563: <==commonly_known== 80770 (pos)
                    (Ba_checked_p6)

                    ; #41312: <==closure== 49322 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #49322: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #57025: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #58459: <==commonly_known== 80770 (pos)
                    (Bc_checked_p6)

                    ; #65489: <==commonly_known== 31180 (neg)
                    (Pa_checked_p6)

                    ; #70880: <==commonly_known== 31180 (neg)
                    (Pb_checked_p6)

                    ; #75456: <==commonly_known== 31180 (neg)
                    (Pc_checked_p6)

                    ; #80770: origin
                    (checked_p6)

                    ; #83434: <==commonly_known== 80770 (pos)
                    (Bd_checked_p6)

                    ; #83436: <==closure== 57025 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #15434: <==uncertain_firing== 83436 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #21284: <==negation-removal== 57025 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #27638: <==negation-removal== 65489 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27651: <==negation-removal== 41312 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #31180: <==negation-removal== 80770 (pos)
                    (not (not_checked_p6))

                    ; #39019: <==negation-removal== 75456 (pos)
                    (not (Bc_not_checked_p6))

                    ; #49552: <==negation-removal== 70880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55788: <==negation-removal== 38563 (pos)
                    (not (Pa_not_checked_p6))

                    ; #62463: <==uncertain_firing== 41312 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #65936: <==negation-removal== 83434 (pos)
                    (not (Pd_not_checked_p6))

                    ; #71575: <==uncertain_firing== 57025 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #71833: <==negation-removal== 49322 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #71924: <==negation-removal== 83436 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #72419: <==negation-removal== 58459 (pos)
                    (not (Pc_not_checked_p6))

                    ; #84019: <==negation-removal== 32894 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89164: <==negation-removal== 28155 (pos)
                    (not (Bd_not_checked_p6))

                    ; #91712: <==uncertain_firing== 49322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11584: <==commonly_known== 42277 (neg)
                    (Pb_checked_p7)

                    ; #15199: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #29896: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #49151: <==commonly_known== 89111 (pos)
                    (Bb_checked_p7)

                    ; #54682: <==commonly_known== 89111 (pos)
                    (Bc_checked_p7)

                    ; #56013: <==commonly_known== 42277 (neg)
                    (Pd_checked_p7)

                    ; #59960: <==commonly_known== 89111 (pos)
                    (Bd_checked_p7)

                    ; #63754: <==commonly_known== 42277 (neg)
                    (Pc_checked_p7)

                    ; #75772: <==commonly_known== 89111 (pos)
                    (Ba_checked_p7)

                    ; #80310: <==commonly_known== 42277 (neg)
                    (Pa_checked_p7)

                    ; #81692: <==closure== 15199 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #86237: <==closure== 29896 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #89111: origin
                    (checked_p7)

                    ; #10101: <==uncertain_firing== 29896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #10588: <==negation-removal== 11584 (pos)
                    (not (Bb_not_checked_p7))

                    ; #10677: <==negation-removal== 59960 (pos)
                    (not (Pd_not_checked_p7))

                    ; #22574: <==negation-removal== 63754 (pos)
                    (not (Bc_not_checked_p7))

                    ; #24010: <==negation-removal== 86237 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28657: <==uncertain_firing== 15199 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #36677: <==uncertain_firing== 81692 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #38384: <==negation-removal== 15199 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #42277: <==negation-removal== 89111 (pos)
                    (not (not_checked_p7))

                    ; #48598: <==negation-removal== 75772 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51291: <==negation-removal== 80310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56478: <==negation-removal== 29896 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #67575: <==uncertain_firing== 86237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #70908: <==negation-removal== 56013 (pos)
                    (not (Bd_not_checked_p7))

                    ; #77832: <==negation-removal== 49151 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84185: <==negation-removal== 81692 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #91013: <==negation-removal== 54682 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13222: <==commonly_known== 16441 (neg)
                    (Pd_checked_p8)

                    ; #15182: <==commonly_known== 16441 (neg)
                    (Pc_checked_p8)

                    ; #31684: <==commonly_known== 99391 (pos)
                    (Bc_checked_p8)

                    ; #42241: <==commonly_known== 16441 (neg)
                    (Pb_checked_p8)

                    ; #49414: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #54331: <==commonly_known== 99391 (pos)
                    (Bb_checked_p8)

                    ; #61174: <==closure== 61667 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #61667: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #82912: <==commonly_known== 99391 (pos)
                    (Ba_checked_p8)

                    ; #89902: <==commonly_known== 99391 (pos)
                    (Bd_checked_p8)

                    ; #90051: <==closure== 49414 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #97902: <==commonly_known== 16441 (neg)
                    (Pa_checked_p8)

                    ; #99391: origin
                    (checked_p8)

                    ; #15760: <==negation-removal== 90051 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #16441: <==negation-removal== 99391 (pos)
                    (not (not_checked_p8))

                    ; #17844: <==uncertain_firing== 61174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #30473: <==negation-removal== 15182 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32774: <==negation-removal== 97902 (pos)
                    (not (Ba_not_checked_p8))

                    ; #32966: <==negation-removal== 61174 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #39926: <==uncertain_firing== 49414 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #40825: <==negation-removal== 54331 (pos)
                    (not (Pb_not_checked_p8))

                    ; #43520: <==negation-removal== 13222 (pos)
                    (not (Bd_not_checked_p8))

                    ; #48461: <==negation-removal== 89902 (pos)
                    (not (Pd_not_checked_p8))

                    ; #58842: <==negation-removal== 42241 (pos)
                    (not (Bb_not_checked_p8))

                    ; #61652: <==uncertain_firing== 90051 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #63849: <==negation-removal== 49414 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #76400: <==negation-removal== 82912 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79915: <==uncertain_firing== 61667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86987: <==negation-removal== 31684 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89616: <==negation-removal== 61667 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15977: <==commonly_known== 92010 (neg)
                    (Pc_checked_p9)

                    ; #19716: <==commonly_known== 72052 (pos)
                    (Bb_checked_p9)

                    ; #33862: <==commonly_known== 72052 (pos)
                    (Bd_checked_p9)

                    ; #41406: <==closure== 76037 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #45206: <==closure== 82497 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #52963: <==commonly_known== 92010 (neg)
                    (Pa_checked_p9)

                    ; #61682: <==commonly_known== 72052 (pos)
                    (Bc_checked_p9)

                    ; #72052: origin
                    (checked_p9)

                    ; #76037: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #78703: <==commonly_known== 92010 (neg)
                    (Pd_checked_p9)

                    ; #82497: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #87205: <==commonly_known== 92010 (neg)
                    (Pb_checked_p9)

                    ; #91857: <==commonly_known== 72052 (pos)
                    (Ba_checked_p9)

                    ; #10839: <==negation-removal== 78703 (pos)
                    (not (Bd_not_checked_p9))

                    ; #19621: <==uncertain_firing== 76037 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #26060: <==negation-removal== 33862 (pos)
                    (not (Pd_not_checked_p9))

                    ; #26926: <==uncertain_firing== 41406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #32386: <==negation-removal== 15977 (pos)
                    (not (Bc_not_checked_p9))

                    ; #32799: <==negation-removal== 87205 (pos)
                    (not (Bb_not_checked_p9))

                    ; #32807: <==negation-removal== 45206 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39229: <==negation-removal== 52963 (pos)
                    (not (Ba_not_checked_p9))

                    ; #41195: <==uncertain_firing== 45206 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #46467: <==negation-removal== 61682 (pos)
                    (not (Pc_not_checked_p9))

                    ; #62631: <==negation-removal== 41406 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #63895: <==negation-removal== 91857 (pos)
                    (not (Pa_not_checked_p9))

                    ; #64758: <==negation-removal== 76037 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #77330: <==negation-removal== 19716 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77663: <==negation-removal== 82497 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #78304: <==uncertain_firing== 82497 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #92010: <==negation-removal== 72052 (pos)
                    (not (not_checked_p9))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11384: <==commonly_known== 28908 (neg)
                    (Pb_checked_p10)

                    ; #12187: <==commonly_known== 40032 (pos)
                    (Bc_checked_p10)

                    ; #13081: <==commonly_known== 40032 (pos)
                    (Ba_checked_p10)

                    ; #24664: <==commonly_known== 28908 (neg)
                    (Pa_checked_p10)

                    ; #25107: <==closure== 46806 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #31698: <==commonly_known== 40032 (pos)
                    (Bd_checked_p10)

                    ; #36208: <==commonly_known== 28908 (neg)
                    (Pc_checked_p10)

                    ; #40032: origin
                    (checked_p10)

                    ; #42156: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #46806: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #50070: <==commonly_known== 28908 (neg)
                    (Pd_checked_p10)

                    ; #70494: <==commonly_known== 40032 (pos)
                    (Bb_checked_p10)

                    ; #79209: <==closure== 42156 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #10996: <==negation-removal== 11384 (pos)
                    (not (Bb_not_checked_p10))

                    ; #12832: <==uncertain_firing== 79209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #13764: <==negation-removal== 42156 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #28908: <==negation-removal== 40032 (pos)
                    (not (not_checked_p10))

                    ; #29760: <==negation-removal== 46806 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #30486: <==negation-removal== 24664 (pos)
                    (not (Ba_not_checked_p10))

                    ; #35487: <==negation-removal== 13081 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52213: <==uncertain_firing== 46806 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #61022: <==negation-removal== 70494 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67499: <==uncertain_firing== 42156 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #70759: <==negation-removal== 31698 (pos)
                    (not (Pd_not_checked_p10))

                    ; #72313: <==uncertain_firing== 25107 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #82680: <==negation-removal== 36208 (pos)
                    (not (Bc_not_checked_p10))

                    ; #84232: <==negation-removal== 25107 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #85903: <==negation-removal== 79209 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #87689: <==negation-removal== 12187 (pos)
                    (not (Pc_not_checked_p10))

                    ; #89269: <==negation-removal== 50070 (pos)
                    (not (Bd_not_checked_p10))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11040: <==commonly_known== 34426 (neg)
                    (Pa_checked_p11)

                    ; #14603: <==commonly_known== 34426 (neg)
                    (Pb_checked_p11)

                    ; #17472: <==commonly_known== 18530 (pos)
                    (Ba_checked_p11)

                    ; #18530: origin
                    (checked_p11)

                    ; #20436: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #25666: <==commonly_known== 18530 (pos)
                    (Bd_checked_p11)

                    ; #26821: <==commonly_known== 34426 (neg)
                    (Pc_checked_p11)

                    ; #46502: <==commonly_known== 18530 (pos)
                    (Bc_checked_p11)

                    ; #56502: <==commonly_known== 34426 (neg)
                    (Pd_checked_p11)

                    ; #64443: <==closure== 20436 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #69622: <==commonly_known== 18530 (pos)
                    (Bb_checked_p11)

                    ; #71195: <==closure== 75116 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #75116: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #15555: <==negation-removal== 69622 (pos)
                    (not (Pb_not_checked_p11))

                    ; #26211: <==uncertain_firing== 75116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #34426: <==negation-removal== 18530 (pos)
                    (not (not_checked_p11))

                    ; #39275: <==negation-removal== 11040 (pos)
                    (not (Ba_not_checked_p11))

                    ; #39428: <==negation-removal== 64443 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #43980: <==uncertain_firing== 71195 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #47997: <==negation-removal== 17472 (pos)
                    (not (Pa_not_checked_p11))

                    ; #54633: <==negation-removal== 20436 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #57957: <==negation-removal== 26821 (pos)
                    (not (Bc_not_checked_p11))

                    ; #59369: <==negation-removal== 14603 (pos)
                    (not (Bb_not_checked_p11))

                    ; #68973: <==negation-removal== 75116 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #70620: <==uncertain_firing== 20436 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #71555: <==negation-removal== 56502 (pos)
                    (not (Bd_not_checked_p11))

                    ; #71659: <==uncertain_firing== 64443 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #74076: <==negation-removal== 46502 (pos)
                    (not (Pc_not_checked_p11))

                    ; #88442: <==negation-removal== 25666 (pos)
                    (not (Pd_not_checked_p11))

                    ; #89015: <==negation-removal== 71195 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #17460: <==commonly_known== 33452 (neg)
                    (Pc_checked_p12)

                    ; #18567: <==commonly_known== 79967 (pos)
                    (Bd_checked_p12)

                    ; #24801: <==closure== 99759 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #37576: <==commonly_known== 79967 (pos)
                    (Bb_checked_p12)

                    ; #47433: <==commonly_known== 33452 (neg)
                    (Pa_checked_p12)

                    ; #58046: <==commonly_known== 79967 (pos)
                    (Ba_checked_p12)

                    ; #72321: <==commonly_known== 33452 (neg)
                    (Pb_checked_p12)

                    ; #79967: origin
                    (checked_p12)

                    ; #81093: <==commonly_known== 79967 (pos)
                    (Bc_checked_p12)

                    ; #86981: <==closure== 93020 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #90936: <==commonly_known== 33452 (neg)
                    (Pd_checked_p12)

                    ; #93020: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #99759: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #12100: <==uncertain_firing== 93020 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #21038: <==negation-removal== 72321 (pos)
                    (not (Bb_not_checked_p12))

                    ; #22883: <==uncertain_firing== 86981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #31285: <==negation-removal== 58046 (pos)
                    (not (Pa_not_checked_p12))

                    ; #33452: <==negation-removal== 79967 (pos)
                    (not (not_checked_p12))

                    ; #41160: <==uncertain_firing== 99759 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #41578: <==negation-removal== 93020 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #45655: <==negation-removal== 81093 (pos)
                    (not (Pc_not_checked_p12))

                    ; #48349: <==negation-removal== 17460 (pos)
                    (not (Bc_not_checked_p12))

                    ; #58173: <==negation-removal== 86981 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #58492: <==negation-removal== 37576 (pos)
                    (not (Pb_not_checked_p12))

                    ; #59870: <==negation-removal== 24801 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #61805: <==negation-removal== 99759 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #67013: <==uncertain_firing== 24801 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #72866: <==negation-removal== 47433 (pos)
                    (not (Ba_not_checked_p12))

                    ; #74793: <==negation-removal== 90936 (pos)
                    (not (Bd_not_checked_p12))

                    ; #75504: <==negation-removal== 18567 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12268: <==commonly_known== 81643 (neg)
                    (Pa_checked_p1)

                    ; #12666: <==commonly_known== 81643 (neg)
                    (Pb_checked_p1)

                    ; #20039: <==commonly_known== 65237 (pos)
                    (Ba_checked_p1)

                    ; #32457: <==commonly_known== 65237 (pos)
                    (Bb_checked_p1)

                    ; #48245: <==commonly_known== 81643 (neg)
                    (Pd_checked_p1)

                    ; #50240: <==closure== 73009 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #51846: <==commonly_known== 65237 (pos)
                    (Bc_checked_p1)

                    ; #52709: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #54165: <==closure== 52709 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #65237: origin
                    (checked_p1)

                    ; #70231: <==commonly_known== 65237 (pos)
                    (Bd_checked_p1)

                    ; #73009: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #74205: <==commonly_known== 81643 (neg)
                    (Pc_checked_p1)

                    ; #10620: <==negation-removal== 74205 (pos)
                    (not (Bc_not_checked_p1))

                    ; #28966: <==uncertain_firing== 54165 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #38584: <==uncertain_firing== 50240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #39338: <==negation-removal== 54165 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #40992: <==negation-removal== 20039 (pos)
                    (not (Pa_not_checked_p1))

                    ; #48237: <==negation-removal== 52709 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #49152: <==negation-removal== 70231 (pos)
                    (not (Pd_not_checked_p1))

                    ; #49893: <==uncertain_firing== 52709 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #60333: <==negation-removal== 48245 (pos)
                    (not (Bd_not_checked_p1))

                    ; #63431: <==negation-removal== 73009 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #67905: <==negation-removal== 12666 (pos)
                    (not (Bb_not_checked_p1))

                    ; #79035: <==negation-removal== 12268 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80189: <==negation-removal== 50240 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #81643: <==negation-removal== 65237 (pos)
                    (not (not_checked_p1))

                    ; #82360: <==uncertain_firing== 73009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #89008: <==negation-removal== 32457 (pos)
                    (not (Pb_not_checked_p1))

                    ; #90211: <==negation-removal== 51846 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16585: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #17868: <==commonly_known== 21035 (pos)
                    (Bd_checked_p2)

                    ; #21035: origin
                    (checked_p2)

                    ; #35781: <==commonly_known== 21035 (pos)
                    (Bb_checked_p2)

                    ; #36777: <==commonly_known== 83616 (neg)
                    (Pb_checked_p2)

                    ; #45646: <==commonly_known== 83616 (neg)
                    (Pd_checked_p2)

                    ; #45830: <==commonly_known== 21035 (pos)
                    (Bc_checked_p2)

                    ; #52253: <==commonly_known== 83616 (neg)
                    (Pc_checked_p2)

                    ; #56203: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #67871: <==closure== 16585 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #77610: <==commonly_known== 83616 (neg)
                    (Pa_checked_p2)

                    ; #86332: <==closure== 56203 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #87167: <==commonly_known== 21035 (pos)
                    (Ba_checked_p2)

                    ; #16231: <==negation-removal== 67871 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #26328: <==negation-removal== 86332 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #47996: <==negation-removal== 45830 (pos)
                    (not (Pc_not_checked_p2))

                    ; #49135: <==negation-removal== 16585 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #52057: <==negation-removal== 36777 (pos)
                    (not (Bb_not_checked_p2))

                    ; #53107: <==negation-removal== 52253 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56647: <==negation-removal== 45646 (pos)
                    (not (Bd_not_checked_p2))

                    ; #60656: <==uncertain_firing== 86332 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #60970: <==negation-removal== 17868 (pos)
                    (not (Pd_not_checked_p2))

                    ; #63937: <==uncertain_firing== 16585 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #68338: <==uncertain_firing== 67871 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #73632: <==negation-removal== 87167 (pos)
                    (not (Pa_not_checked_p2))

                    ; #75180: <==uncertain_firing== 56203 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #76998: <==negation-removal== 56203 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #83296: <==negation-removal== 77610 (pos)
                    (not (Ba_not_checked_p2))

                    ; #83616: <==negation-removal== 21035 (pos)
                    (not (not_checked_p2))

                    ; #87245: <==negation-removal== 35781 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12101: <==commonly_known== 18235 (neg)
                    (Pa_checked_p3)

                    ; #15725: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #21324: <==commonly_known== 18235 (neg)
                    (Pb_checked_p3)

                    ; #29855: origin
                    (checked_p3)

                    ; #49170: <==commonly_known== 29855 (pos)
                    (Ba_checked_p3)

                    ; #53343: <==closure== 89158 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #60897: <==commonly_known== 29855 (pos)
                    (Bb_checked_p3)

                    ; #63496: <==commonly_known== 29855 (pos)
                    (Bc_checked_p3)

                    ; #78615: <==commonly_known== 18235 (neg)
                    (Pd_checked_p3)

                    ; #79415: <==closure== 15725 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #79966: <==commonly_known== 18235 (neg)
                    (Pc_checked_p3)

                    ; #83483: <==commonly_known== 29855 (pos)
                    (Bd_checked_p3)

                    ; #89158: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #14424: <==negation-removal== 12101 (pos)
                    (not (Ba_not_checked_p3))

                    ; #18235: <==negation-removal== 29855 (pos)
                    (not (not_checked_p3))

                    ; #18489: <==negation-removal== 79415 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #21617: <==negation-removal== 49170 (pos)
                    (not (Pa_not_checked_p3))

                    ; #28155: <==negation-removal== 21324 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34500: <==negation-removal== 78615 (pos)
                    (not (Bd_not_checked_p3))

                    ; #38423: <==negation-removal== 89158 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #47600: <==uncertain_firing== 15725 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52336: <==negation-removal== 83483 (pos)
                    (not (Pd_not_checked_p3))

                    ; #63309: <==uncertain_firing== 89158 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #64291: <==negation-removal== 79966 (pos)
                    (not (Bc_not_checked_p3))

                    ; #65798: <==uncertain_firing== 79415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #68185: <==negation-removal== 53343 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #71168: <==negation-removal== 60897 (pos)
                    (not (Pb_not_checked_p3))

                    ; #73442: <==negation-removal== 15725 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76129: <==uncertain_firing== 53343 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #91444: <==negation-removal== 63496 (pos)
                    (not (Pc_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13015: origin
                    (checked_p4)

                    ; #16404: <==commonly_known== 13015 (pos)
                    (Bc_checked_p4)

                    ; #19052: <==commonly_known== 90218 (neg)
                    (Pc_checked_p4)

                    ; #23992: <==commonly_known== 13015 (pos)
                    (Bd_checked_p4)

                    ; #29201: <==commonly_known== 13015 (pos)
                    (Bb_checked_p4)

                    ; #31946: <==closure== 45532 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #43173: <==commonly_known== 90218 (neg)
                    (Pb_checked_p4)

                    ; #43443: <==commonly_known== 90218 (neg)
                    (Pa_checked_p4)

                    ; #45486: <==commonly_known== 90218 (neg)
                    (Pd_checked_p4)

                    ; #45532: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #72046: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #72542: <==commonly_known== 13015 (pos)
                    (Ba_checked_p4)

                    ; #84979: <==closure== 72046 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #16373: <==negation-removal== 43173 (pos)
                    (not (Bb_not_checked_p4))

                    ; #38732: <==negation-removal== 23992 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42719: <==negation-removal== 29201 (pos)
                    (not (Pb_not_checked_p4))

                    ; #57419: <==negation-removal== 45486 (pos)
                    (not (Bd_not_checked_p4))

                    ; #65092: <==uncertain_firing== 84979 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #65574: <==negation-removal== 43443 (pos)
                    (not (Ba_not_checked_p4))

                    ; #68589: <==negation-removal== 31946 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #69590: <==uncertain_firing== 45532 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #72166: <==negation-removal== 45532 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #77410: <==uncertain_firing== 72046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #79145: <==negation-removal== 19052 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81015: <==negation-removal== 16404 (pos)
                    (not (Pc_not_checked_p4))

                    ; #82488: <==negation-removal== 84979 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #83020: <==negation-removal== 72542 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86650: <==negation-removal== 72046 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #89283: <==uncertain_firing== 31946 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #90218: <==negation-removal== 13015 (pos)
                    (not (not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #27707: <==commonly_known== 77400 (neg)
                    (Pd_checked_p5)

                    ; #30478: <==commonly_known== 94069 (pos)
                    (Bd_checked_p5)

                    ; #32669: <==commonly_known== 94069 (pos)
                    (Ba_checked_p5)

                    ; #33749: <==closure== 58998 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #40943: <==closure== 53470 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #43318: <==commonly_known== 94069 (pos)
                    (Bb_checked_p5)

                    ; #53470: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #56074: <==commonly_known== 77400 (neg)
                    (Pa_checked_p5)

                    ; #57167: <==commonly_known== 77400 (neg)
                    (Pc_checked_p5)

                    ; #58998: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #69984: <==commonly_known== 77400 (neg)
                    (Pb_checked_p5)

                    ; #86224: <==commonly_known== 94069 (pos)
                    (Bc_checked_p5)

                    ; #94069: origin
                    (checked_p5)

                    ; #13172: <==uncertain_firing== 40943 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #15128: <==negation-removal== 40943 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #16217: <==negation-removal== 57167 (pos)
                    (not (Bc_not_checked_p5))

                    ; #20416: <==uncertain_firing== 58998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #29160: <==negation-removal== 58998 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #31540: <==negation-removal== 53470 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #34676: <==negation-removal== 32669 (pos)
                    (not (Pa_not_checked_p5))

                    ; #41111: <==negation-removal== 56074 (pos)
                    (not (Ba_not_checked_p5))

                    ; #44273: <==uncertain_firing== 53470 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #46008: <==negation-removal== 69984 (pos)
                    (not (Bb_not_checked_p5))

                    ; #48945: <==negation-removal== 43318 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65355: <==negation-removal== 86224 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72297: <==uncertain_firing== 33749 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #73748: <==negation-removal== 33749 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #76675: <==negation-removal== 27707 (pos)
                    (not (Bd_not_checked_p5))

                    ; #77400: <==negation-removal== 94069 (pos)
                    (not (not_checked_p5))

                    ; #90328: <==negation-removal== 30478 (pos)
                    (not (Pd_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13411: <==closure== 52313 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #28155: <==commonly_known== 31180 (neg)
                    (Pd_checked_p6)

                    ; #32894: <==commonly_known== 80770 (pos)
                    (Bb_checked_p6)

                    ; #38563: <==commonly_known== 80770 (pos)
                    (Ba_checked_p6)

                    ; #52313: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #58459: <==commonly_known== 80770 (pos)
                    (Bc_checked_p6)

                    ; #60134: <==closure== 63120 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #63120: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #65489: <==commonly_known== 31180 (neg)
                    (Pa_checked_p6)

                    ; #70880: <==commonly_known== 31180 (neg)
                    (Pb_checked_p6)

                    ; #75456: <==commonly_known== 31180 (neg)
                    (Pc_checked_p6)

                    ; #80770: origin
                    (checked_p6)

                    ; #83434: <==commonly_known== 80770 (pos)
                    (Bd_checked_p6)

                    ; #22866: <==negation-removal== 13411 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #27638: <==negation-removal== 65489 (pos)
                    (not (Ba_not_checked_p6))

                    ; #31180: <==negation-removal== 80770 (pos)
                    (not (not_checked_p6))

                    ; #32073: <==uncertain_firing== 63120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #32973: <==negation-removal== 60134 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #39019: <==negation-removal== 75456 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47218: <==negation-removal== 63120 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #47962: <==uncertain_firing== 52313 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #49528: <==negation-removal== 52313 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #49552: <==negation-removal== 70880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #50072: <==uncertain_firing== 60134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55788: <==negation-removal== 38563 (pos)
                    (not (Pa_not_checked_p6))

                    ; #65936: <==negation-removal== 83434 (pos)
                    (not (Pd_not_checked_p6))

                    ; #69670: <==uncertain_firing== 13411 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #72419: <==negation-removal== 58459 (pos)
                    (not (Pc_not_checked_p6))

                    ; #84019: <==negation-removal== 32894 (pos)
                    (not (Pb_not_checked_p6))

                    ; #89164: <==negation-removal== 28155 (pos)
                    (not (Bd_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11584: <==commonly_known== 42277 (neg)
                    (Pb_checked_p7)

                    ; #49151: <==commonly_known== 89111 (pos)
                    (Bb_checked_p7)

                    ; #54682: <==commonly_known== 89111 (pos)
                    (Bc_checked_p7)

                    ; #56013: <==commonly_known== 42277 (neg)
                    (Pd_checked_p7)

                    ; #59960: <==commonly_known== 89111 (pos)
                    (Bd_checked_p7)

                    ; #63754: <==commonly_known== 42277 (neg)
                    (Pc_checked_p7)

                    ; #71510: <==closure== 88036 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #75446: <==closure== 76039 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #75772: <==commonly_known== 89111 (pos)
                    (Ba_checked_p7)

                    ; #76039: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #80310: <==commonly_known== 42277 (neg)
                    (Pa_checked_p7)

                    ; #88036: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #89111: origin
                    (checked_p7)

                    ; #10588: <==negation-removal== 11584 (pos)
                    (not (Bb_not_checked_p7))

                    ; #10677: <==negation-removal== 59960 (pos)
                    (not (Pd_not_checked_p7))

                    ; #22574: <==negation-removal== 63754 (pos)
                    (not (Bc_not_checked_p7))

                    ; #25849: <==negation-removal== 75446 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #26043: <==uncertain_firing== 88036 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #42277: <==negation-removal== 89111 (pos)
                    (not (not_checked_p7))

                    ; #42708: <==uncertain_firing== 71510 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #46696: <==negation-removal== 71510 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #48598: <==negation-removal== 75772 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51291: <==negation-removal== 80310 (pos)
                    (not (Ba_not_checked_p7))

                    ; #53236: <==uncertain_firing== 75446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #61573: <==negation-removal== 88036 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #66048: <==uncertain_firing== 76039 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #70908: <==negation-removal== 56013 (pos)
                    (not (Bd_not_checked_p7))

                    ; #71128: <==negation-removal== 76039 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #77832: <==negation-removal== 49151 (pos)
                    (not (Pb_not_checked_p7))

                    ; #91013: <==negation-removal== 54682 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #13222: <==commonly_known== 16441 (neg)
                    (Pd_checked_p8)

                    ; #15182: <==commonly_known== 16441 (neg)
                    (Pc_checked_p8)

                    ; #15687: <==closure== 42835 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #31684: <==commonly_known== 99391 (pos)
                    (Bc_checked_p8)

                    ; #42241: <==commonly_known== 16441 (neg)
                    (Pb_checked_p8)

                    ; #42835: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #54331: <==commonly_known== 99391 (pos)
                    (Bb_checked_p8)

                    ; #61116: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #75178: <==closure== 61116 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #82912: <==commonly_known== 99391 (pos)
                    (Ba_checked_p8)

                    ; #89902: <==commonly_known== 99391 (pos)
                    (Bd_checked_p8)

                    ; #97902: <==commonly_known== 16441 (neg)
                    (Pa_checked_p8)

                    ; #99391: origin
                    (checked_p8)

                    ; #15058: <==uncertain_firing== 75178 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #16441: <==negation-removal== 99391 (pos)
                    (not (not_checked_p8))

                    ; #26439: <==negation-removal== 15687 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #30473: <==negation-removal== 15182 (pos)
                    (not (Bc_not_checked_p8))

                    ; #32774: <==negation-removal== 97902 (pos)
                    (not (Ba_not_checked_p8))

                    ; #40825: <==negation-removal== 54331 (pos)
                    (not (Pb_not_checked_p8))

                    ; #42767: <==negation-removal== 75178 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #43520: <==negation-removal== 13222 (pos)
                    (not (Bd_not_checked_p8))

                    ; #48461: <==negation-removal== 89902 (pos)
                    (not (Pd_not_checked_p8))

                    ; #58842: <==negation-removal== 42241 (pos)
                    (not (Bb_not_checked_p8))

                    ; #63270: <==negation-removal== 42835 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #67720: <==negation-removal== 61116 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #76400: <==negation-removal== 82912 (pos)
                    (not (Pa_not_checked_p8))

                    ; #77492: <==uncertain_firing== 42835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #81434: <==uncertain_firing== 61116 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #86987: <==negation-removal== 31684 (pos)
                    (not (Pc_not_checked_p8))

                    ; #88083: <==uncertain_firing== 15687 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #15977: <==commonly_known== 92010 (neg)
                    (Pc_checked_p9)

                    ; #19582: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #19716: <==commonly_known== 72052 (pos)
                    (Bb_checked_p9)

                    ; #33862: <==commonly_known== 72052 (pos)
                    (Bd_checked_p9)

                    ; #41886: <==closure== 19582 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #52963: <==commonly_known== 92010 (neg)
                    (Pa_checked_p9)

                    ; #61682: <==commonly_known== 72052 (pos)
                    (Bc_checked_p9)

                    ; #72052: origin
                    (checked_p9)

                    ; #78703: <==commonly_known== 92010 (neg)
                    (Pd_checked_p9)

                    ; #83476: <==closure== 86922 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #86922: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #87205: <==commonly_known== 92010 (neg)
                    (Pb_checked_p9)

                    ; #91857: <==commonly_known== 72052 (pos)
                    (Ba_checked_p9)

                    ; #10839: <==negation-removal== 78703 (pos)
                    (not (Bd_not_checked_p9))

                    ; #13291: <==negation-removal== 83476 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #21270: <==negation-removal== 41886 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #21798: <==uncertain_firing== 41886 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #26060: <==negation-removal== 33862 (pos)
                    (not (Pd_not_checked_p9))

                    ; #32386: <==negation-removal== 15977 (pos)
                    (not (Bc_not_checked_p9))

                    ; #32799: <==negation-removal== 87205 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33388: <==negation-removal== 19582 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #39229: <==negation-removal== 52963 (pos)
                    (not (Ba_not_checked_p9))

                    ; #46467: <==negation-removal== 61682 (pos)
                    (not (Pc_not_checked_p9))

                    ; #48203: <==negation-removal== 86922 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51674: <==uncertain_firing== 86922 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #53374: <==uncertain_firing== 83476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #54265: <==uncertain_firing== 19582 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #63895: <==negation-removal== 91857 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77330: <==negation-removal== 19716 (pos)
                    (not (Pb_not_checked_p9))

                    ; #92010: <==negation-removal== 72052 (pos)
                    (not (not_checked_p9))))

)