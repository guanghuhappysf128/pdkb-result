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
                    ; #15978: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #18345: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #30530: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39162: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #66144: <==closure== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #67056: <==closure== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #68550: <==closure== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86803: <==closure== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #22350: <==uncertain_firing== 15978 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #25124: <==uncertain_firing== 18345 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #25354: <==negation-removal== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #27171: <==negation-removal== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #31930: <==uncertain_firing== 68550 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #32393: <==negation-removal== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #38010: <==uncertain_firing== 86803 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #43616: <==negation-removal== 86803 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #46955: <==uncertain_firing== 67056 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #55664: <==negation-removal== 68550 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #60850: <==uncertain_firing== 30530 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61613: <==uncertain_firing== 39162 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #61997: <==negation-removal== 67056 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #62232: <==uncertain_firing== 66144 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62554: <==negation-removal== 66144 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #75514: <==negation-removal== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #15978: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #18345: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #30530: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39162: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #66144: <==closure== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #67056: <==closure== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #68550: <==closure== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86803: <==closure== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #22350: <==uncertain_firing== 15978 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #25124: <==uncertain_firing== 18345 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #25354: <==negation-removal== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #27171: <==negation-removal== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #31930: <==uncertain_firing== 68550 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #32393: <==negation-removal== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #38010: <==uncertain_firing== 86803 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #43616: <==negation-removal== 86803 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #46955: <==uncertain_firing== 67056 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #55664: <==negation-removal== 68550 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #60850: <==uncertain_firing== 30530 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61613: <==uncertain_firing== 39162 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #61997: <==negation-removal== 67056 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #62232: <==uncertain_firing== 66144 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62554: <==negation-removal== 66144 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #75514: <==negation-removal== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #15978: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #18345: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #30530: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39162: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #66144: <==closure== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #67056: <==closure== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #68550: <==closure== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86803: <==closure== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #22350: <==uncertain_firing== 15978 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #25124: <==uncertain_firing== 18345 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #25354: <==negation-removal== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #27171: <==negation-removal== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #31930: <==uncertain_firing== 68550 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #32393: <==negation-removal== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #38010: <==uncertain_firing== 86803 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #43616: <==negation-removal== 86803 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #46955: <==uncertain_firing== 67056 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #55664: <==negation-removal== 68550 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #60850: <==uncertain_firing== 30530 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61613: <==uncertain_firing== 39162 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #61997: <==negation-removal== 67056 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #62232: <==uncertain_firing== 66144 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62554: <==negation-removal== 66144 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #75514: <==negation-removal== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #15978: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #18345: origin
                    (when (and (not_at_d_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #30530: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39162: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #66144: <==closure== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #67056: <==closure== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #68550: <==closure== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #86803: <==closure== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #22350: <==uncertain_firing== 15978 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #25124: <==uncertain_firing== 18345 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #25354: <==negation-removal== 39162 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #27171: <==negation-removal== 18345 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #31930: <==uncertain_firing== 68550 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #32393: <==negation-removal== 15978 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #38010: <==uncertain_firing== 86803 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #43616: <==negation-removal== 86803 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #46955: <==uncertain_firing== 67056 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #55664: <==negation-removal== 68550 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #60850: <==uncertain_firing== 30530 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61613: <==uncertain_firing== 39162 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #61997: <==negation-removal== 67056 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #62232: <==uncertain_firing== 66144 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #62554: <==negation-removal== 66144 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #75514: <==negation-removal== 30530 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #11074: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13388: <==closure== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #22161: <==closure== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #43943: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45221: <==closure== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #56909: <==closure== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #83505: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #91420: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20830: <==uncertain_firing== 13388 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #29585: <==negation-removal== 56909 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #39784: <==negation-removal== 13388 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #45735: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #46613: <==negation-removal== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49118: <==uncertain_firing== 43943 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #51294: <==negation-removal== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #52230: <==uncertain_firing== 45221 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56489: <==negation-removal== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #60170: <==uncertain_firing== 91420 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #66405: <==negation-removal== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #73485: <==uncertain_firing== 22161 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #77596: <==negation-removal== 22161 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #80417: <==uncertain_firing== 11074 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #85468: <==uncertain_firing== 83505 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #90798: <==negation-removal== 45221 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #11074: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13388: <==closure== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #22161: <==closure== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #43943: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45221: <==closure== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #56909: <==closure== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #83505: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #91420: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20830: <==uncertain_firing== 13388 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #29585: <==negation-removal== 56909 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #39784: <==negation-removal== 13388 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #45735: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #46613: <==negation-removal== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49118: <==uncertain_firing== 43943 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #51294: <==negation-removal== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #52230: <==uncertain_firing== 45221 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56489: <==negation-removal== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #60170: <==uncertain_firing== 91420 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #66405: <==negation-removal== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #73485: <==uncertain_firing== 22161 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #77596: <==negation-removal== 22161 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #80417: <==uncertain_firing== 11074 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #85468: <==uncertain_firing== 83505 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #90798: <==negation-removal== 45221 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #11074: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13388: <==closure== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #22161: <==closure== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #43943: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45221: <==closure== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #56909: <==closure== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #83505: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #91420: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20830: <==uncertain_firing== 13388 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #29585: <==negation-removal== 56909 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #39784: <==negation-removal== 13388 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #45735: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #46613: <==negation-removal== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49118: <==uncertain_firing== 43943 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #51294: <==negation-removal== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #52230: <==uncertain_firing== 45221 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56489: <==negation-removal== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #60170: <==uncertain_firing== 91420 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #66405: <==negation-removal== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #73485: <==uncertain_firing== 22161 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #77596: <==negation-removal== 22161 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #80417: <==uncertain_firing== 11074 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #85468: <==uncertain_firing== 83505 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #90798: <==negation-removal== 45221 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (at_d_p11)
                           (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #11074: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13388: <==closure== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #22161: <==closure== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #43943: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45221: <==closure== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #56909: <==closure== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #83505: origin
                    (when (and (not_at_d_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #91420: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #20830: <==uncertain_firing== 13388 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #29585: <==negation-removal== 56909 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #39784: <==negation-removal== 13388 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #45735: <==uncertain_firing== 56909 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #46613: <==negation-removal== 91420 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #49118: <==uncertain_firing== 43943 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #51294: <==negation-removal== 83505 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #52230: <==uncertain_firing== 45221 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56489: <==negation-removal== 43943 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #60170: <==uncertain_firing== 91420 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #66405: <==negation-removal== 11074 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #73485: <==uncertain_firing== 22161 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #77596: <==negation-removal== 22161 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #80417: <==uncertain_firing== 11074 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #85468: <==uncertain_firing== 83505 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #90798: <==negation-removal== 45221 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #24112: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #28580: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #29132: <==closure== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #40006: <==closure== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #64046: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65685: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #79418: <==closure== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #96990: <==closure== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10829: <==negation-removal== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #19548: <==negation-removal== 29132 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #20463: <==uncertain_firing== 79418 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #30166: <==negation-removal== 96990 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38223: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #39221: <==uncertain_firing== 28580 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #41916: <==uncertain_firing== 96990 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #43679: <==uncertain_firing== 24112 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #44117: <==negation-removal== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45845: <==uncertain_firing== 64046 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #50012: <==uncertain_firing== 29132 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55445: <==negation-removal== 79418 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #57847: <==negation-removal== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #62037: <==uncertain_firing== 65685 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #76875: <==negation-removal== 40006 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #86851: <==negation-removal== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #24112: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #28580: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #29132: <==closure== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #40006: <==closure== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #64046: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65685: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #79418: <==closure== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #96990: <==closure== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10829: <==negation-removal== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #19548: <==negation-removal== 29132 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #20463: <==uncertain_firing== 79418 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #30166: <==negation-removal== 96990 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38223: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #39221: <==uncertain_firing== 28580 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #41916: <==uncertain_firing== 96990 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #43679: <==uncertain_firing== 24112 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #44117: <==negation-removal== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45845: <==uncertain_firing== 64046 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #50012: <==uncertain_firing== 29132 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55445: <==negation-removal== 79418 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #57847: <==negation-removal== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #62037: <==uncertain_firing== 65685 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #76875: <==negation-removal== 40006 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #86851: <==negation-removal== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #24112: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #28580: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #29132: <==closure== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #40006: <==closure== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #64046: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65685: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #79418: <==closure== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #96990: <==closure== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10829: <==negation-removal== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #19548: <==negation-removal== 29132 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #20463: <==uncertain_firing== 79418 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #30166: <==negation-removal== 96990 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38223: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #39221: <==uncertain_firing== 28580 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #41916: <==uncertain_firing== 96990 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #43679: <==uncertain_firing== 24112 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #44117: <==negation-removal== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45845: <==uncertain_firing== 64046 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #50012: <==uncertain_firing== 29132 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55445: <==negation-removal== 79418 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #57847: <==negation-removal== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #62037: <==uncertain_firing== 65685 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #76875: <==negation-removal== 40006 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #86851: <==negation-removal== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #24112: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #28580: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #29132: <==closure== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #40006: <==closure== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #64046: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #65685: origin
                    (when (and (not_at_d_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #79418: <==closure== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #96990: <==closure== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10829: <==negation-removal== 65685 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #19548: <==negation-removal== 29132 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #20463: <==uncertain_firing== 79418 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #30166: <==negation-removal== 96990 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38223: <==uncertain_firing== 40006 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #39221: <==uncertain_firing== 28580 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #41916: <==uncertain_firing== 96990 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #43679: <==uncertain_firing== 24112 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #44117: <==negation-removal== 64046 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #45845: <==uncertain_firing== 64046 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #50012: <==uncertain_firing== 29132 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #55445: <==negation-removal== 79418 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #57847: <==negation-removal== 24112 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #62037: <==uncertain_firing== 65685 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #76875: <==negation-removal== 40006 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #86851: <==negation-removal== 28580 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #26356: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40831: <==closure== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #68809: <==closure== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72369: <==closure== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78888: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84551: <==closure== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85099: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #88237: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #10480: <==uncertain_firing== 88237 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29245: <==uncertain_firing== 40831 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #29636: <==negation-removal== 40831 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #30382: <==negation-removal== 72369 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #49178: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #50220: <==uncertain_firing== 78888 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #50540: <==uncertain_firing== 26356 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #56943: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58398: <==negation-removal== 68809 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63972: <==negation-removal== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #68383: <==uncertain_firing== 85099 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69603: <==negation-removal== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71309: <==negation-removal== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #73549: <==negation-removal== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 68809 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #85375: <==uncertain_firing== 72369 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #26356: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40831: <==closure== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #68809: <==closure== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72369: <==closure== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78888: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84551: <==closure== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85099: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #88237: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #10480: <==uncertain_firing== 88237 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29245: <==uncertain_firing== 40831 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #29636: <==negation-removal== 40831 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #30382: <==negation-removal== 72369 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #49178: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #50220: <==uncertain_firing== 78888 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #50540: <==uncertain_firing== 26356 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #56943: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58398: <==negation-removal== 68809 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63972: <==negation-removal== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #68383: <==uncertain_firing== 85099 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69603: <==negation-removal== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71309: <==negation-removal== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #73549: <==negation-removal== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 68809 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #85375: <==uncertain_firing== 72369 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #26356: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40831: <==closure== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #68809: <==closure== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72369: <==closure== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78888: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84551: <==closure== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85099: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #88237: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #10480: <==uncertain_firing== 88237 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29245: <==uncertain_firing== 40831 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #29636: <==negation-removal== 40831 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #30382: <==negation-removal== 72369 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #49178: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #50220: <==uncertain_firing== 78888 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #50540: <==uncertain_firing== 26356 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #56943: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58398: <==negation-removal== 68809 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63972: <==negation-removal== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #68383: <==uncertain_firing== 85099 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69603: <==negation-removal== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71309: <==negation-removal== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #73549: <==negation-removal== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 68809 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #85375: <==uncertain_firing== 72369 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #26356: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #40831: <==closure== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #68809: <==closure== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #72369: <==closure== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #78888: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #84551: <==closure== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #85099: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #88237: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #10480: <==uncertain_firing== 88237 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29245: <==uncertain_firing== 40831 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #29636: <==negation-removal== 40831 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #30382: <==negation-removal== 72369 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #49178: <==uncertain_firing== 84551 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #50220: <==uncertain_firing== 78888 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #50540: <==uncertain_firing== 26356 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #56943: <==negation-removal== 84551 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #58398: <==negation-removal== 68809 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63972: <==negation-removal== 78888 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #68383: <==uncertain_firing== 85099 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #69603: <==negation-removal== 26356 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #71309: <==negation-removal== 88237 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #73549: <==negation-removal== 85099 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #81245: <==uncertain_firing== 68809 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #85375: <==uncertain_firing== 72369 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #12073: <==closure== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #30211: <==closure== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37376: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52433: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #54718: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #61213: <==closure== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #62264: <==closure== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #82195: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #11175: <==uncertain_firing== 82195 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #12720: <==negation-removal== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #14167: <==negation-removal== 61213 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #15786: <==uncertain_firing== 52433 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28580: <==negation-removal== 62264 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29094: <==uncertain_firing== 12073 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #40223: <==negation-removal== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #43853: <==uncertain_firing== 61213 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #57584: <==uncertain_firing== 30211 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #66747: <==negation-removal== 12073 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #68573: <==uncertain_firing== 37376 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #74896: <==uncertain_firing== 54718 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #75562: <==uncertain_firing== 62264 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #78575: <==negation-removal== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #82334: <==negation-removal== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #88696: <==negation-removal== 30211 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12073: <==closure== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #30211: <==closure== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37376: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52433: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #54718: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #61213: <==closure== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #62264: <==closure== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #82195: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #11175: <==uncertain_firing== 82195 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #12720: <==negation-removal== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #14167: <==negation-removal== 61213 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #15786: <==uncertain_firing== 52433 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28580: <==negation-removal== 62264 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29094: <==uncertain_firing== 12073 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #40223: <==negation-removal== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #43853: <==uncertain_firing== 61213 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #57584: <==uncertain_firing== 30211 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #66747: <==negation-removal== 12073 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #68573: <==uncertain_firing== 37376 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #74896: <==uncertain_firing== 54718 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #75562: <==uncertain_firing== 62264 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #78575: <==negation-removal== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #82334: <==negation-removal== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #88696: <==negation-removal== 30211 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #12073: <==closure== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #30211: <==closure== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37376: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52433: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #54718: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #61213: <==closure== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #62264: <==closure== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #82195: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #11175: <==uncertain_firing== 82195 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #12720: <==negation-removal== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #14167: <==negation-removal== 61213 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #15786: <==uncertain_firing== 52433 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28580: <==negation-removal== 62264 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29094: <==uncertain_firing== 12073 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #40223: <==negation-removal== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #43853: <==uncertain_firing== 61213 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #57584: <==uncertain_firing== 30211 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #66747: <==negation-removal== 12073 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #68573: <==uncertain_firing== 37376 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #74896: <==uncertain_firing== 54718 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #75562: <==uncertain_firing== 62264 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #78575: <==negation-removal== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #82334: <==negation-removal== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #88696: <==negation-removal== 30211 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #12073: <==closure== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #30211: <==closure== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #37376: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #52433: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #54718: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #61213: <==closure== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #62264: <==closure== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #82195: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #11175: <==uncertain_firing== 82195 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #12720: <==negation-removal== 37376 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #14167: <==negation-removal== 61213 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #15786: <==uncertain_firing== 52433 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #28580: <==negation-removal== 62264 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #29094: <==uncertain_firing== 12073 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #40223: <==negation-removal== 52433 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #43853: <==uncertain_firing== 61213 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #57584: <==uncertain_firing== 30211 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #66747: <==negation-removal== 12073 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #68573: <==uncertain_firing== 37376 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #74896: <==uncertain_firing== 54718 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #75562: <==uncertain_firing== 62264 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #78575: <==negation-removal== 82195 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #82334: <==negation-removal== 54718 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #88696: <==negation-removal== 30211 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #23613: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27304: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34696: <==closure== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #62648: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63311: <==closure== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #66727: <==closure== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #87369: <==closure== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91973: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12039: <==uncertain_firing== 63311 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13265: <==uncertain_firing== 66727 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #20313: <==uncertain_firing== 23613 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22133: <==negation-removal== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #27757: <==uncertain_firing== 62648 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27920: <==negation-removal== 63311 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29627: <==uncertain_firing== 34696 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #30122: <==negation-removal== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #34782: <==uncertain_firing== 91973 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #49818: <==negation-removal== 87369 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #50523: <==uncertain_firing== 87369 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #50781: <==uncertain_firing== 27304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #51896: <==negation-removal== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #63650: <==negation-removal== 66727 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #72717: <==negation-removal== 34696 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #87294: <==negation-removal== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #23613: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27304: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34696: <==closure== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #62648: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63311: <==closure== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #66727: <==closure== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #87369: <==closure== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91973: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12039: <==uncertain_firing== 63311 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13265: <==uncertain_firing== 66727 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #20313: <==uncertain_firing== 23613 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22133: <==negation-removal== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #27757: <==uncertain_firing== 62648 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27920: <==negation-removal== 63311 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29627: <==uncertain_firing== 34696 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #30122: <==negation-removal== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #34782: <==uncertain_firing== 91973 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #49818: <==negation-removal== 87369 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #50523: <==uncertain_firing== 87369 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #50781: <==uncertain_firing== 27304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #51896: <==negation-removal== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #63650: <==negation-removal== 66727 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #72717: <==negation-removal== 34696 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #87294: <==negation-removal== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #23613: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27304: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34696: <==closure== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #62648: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63311: <==closure== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #66727: <==closure== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #87369: <==closure== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91973: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12039: <==uncertain_firing== 63311 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13265: <==uncertain_firing== 66727 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #20313: <==uncertain_firing== 23613 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22133: <==negation-removal== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #27757: <==uncertain_firing== 62648 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27920: <==negation-removal== 63311 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29627: <==uncertain_firing== 34696 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #30122: <==negation-removal== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #34782: <==uncertain_firing== 91973 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #49818: <==negation-removal== 87369 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #50523: <==uncertain_firing== 87369 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #50781: <==uncertain_firing== 27304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #51896: <==negation-removal== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #63650: <==negation-removal== 66727 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #72717: <==negation-removal== 34696 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #87294: <==negation-removal== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #23613: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #27304: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34696: <==closure== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #62648: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #63311: <==closure== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #66727: <==closure== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #87369: <==closure== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91973: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12039: <==uncertain_firing== 63311 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #13265: <==uncertain_firing== 66727 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #20313: <==uncertain_firing== 23613 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #22133: <==negation-removal== 23613 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #27757: <==uncertain_firing== 62648 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #27920: <==negation-removal== 63311 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29627: <==uncertain_firing== 34696 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #30122: <==negation-removal== 91973 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #34782: <==uncertain_firing== 91973 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #49818: <==negation-removal== 87369 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #50523: <==uncertain_firing== 87369 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #50781: <==uncertain_firing== 27304 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #51896: <==negation-removal== 27304 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #63650: <==negation-removal== 66727 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #72717: <==negation-removal== 34696 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #87294: <==negation-removal== 62648 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #15846: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30330: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33864: <==closure== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34539: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #53583: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74704: <==closure== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #74774: <==closure== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90210: <==closure== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #10061: <==uncertain_firing== 53583 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #16263: <==uncertain_firing== 34539 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #17839: <==uncertain_firing== 33864 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #21703: <==uncertain_firing== 74774 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #30288: <==negation-removal== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #35022: <==negation-removal== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41032: <==negation-removal== 74704 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #43671: <==uncertain_firing== 30330 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44361: <==uncertain_firing== 15846 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #49785: <==negation-removal== 90210 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51100: <==negation-removal== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #64804: <==negation-removal== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64928: <==negation-removal== 33864 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75610: <==uncertain_firing== 90210 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81615: <==uncertain_firing== 74704 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #88567: <==negation-removal== 74774 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #15846: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30330: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33864: <==closure== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34539: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #53583: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74704: <==closure== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #74774: <==closure== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90210: <==closure== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #10061: <==uncertain_firing== 53583 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #16263: <==uncertain_firing== 34539 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #17839: <==uncertain_firing== 33864 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #21703: <==uncertain_firing== 74774 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #30288: <==negation-removal== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #35022: <==negation-removal== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41032: <==negation-removal== 74704 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #43671: <==uncertain_firing== 30330 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44361: <==uncertain_firing== 15846 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #49785: <==negation-removal== 90210 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51100: <==negation-removal== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #64804: <==negation-removal== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64928: <==negation-removal== 33864 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75610: <==uncertain_firing== 90210 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81615: <==uncertain_firing== 74704 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #88567: <==negation-removal== 74774 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #15846: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30330: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33864: <==closure== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34539: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #53583: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74704: <==closure== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #74774: <==closure== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90210: <==closure== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #10061: <==uncertain_firing== 53583 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #16263: <==uncertain_firing== 34539 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #17839: <==uncertain_firing== 33864 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #21703: <==uncertain_firing== 74774 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #30288: <==negation-removal== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #35022: <==negation-removal== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41032: <==negation-removal== 74704 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #43671: <==uncertain_firing== 30330 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44361: <==uncertain_firing== 15846 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #49785: <==negation-removal== 90210 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51100: <==negation-removal== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #64804: <==negation-removal== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64928: <==negation-removal== 33864 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75610: <==uncertain_firing== 90210 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81615: <==uncertain_firing== 74704 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #88567: <==negation-removal== 74774 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #15846: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #30330: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33864: <==closure== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34539: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #53583: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #74704: <==closure== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #74774: <==closure== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90210: <==closure== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #10061: <==uncertain_firing== 53583 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #16263: <==uncertain_firing== 34539 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #17839: <==uncertain_firing== 33864 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #21703: <==uncertain_firing== 74774 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #30288: <==negation-removal== 30330 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #35022: <==negation-removal== 53583 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #41032: <==negation-removal== 74704 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #43671: <==uncertain_firing== 30330 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44361: <==uncertain_firing== 15846 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #49785: <==negation-removal== 90210 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #51100: <==negation-removal== 15846 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #64804: <==negation-removal== 34539 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #64928: <==negation-removal== 33864 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75610: <==uncertain_firing== 90210 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81615: <==uncertain_firing== 74704 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #88567: <==negation-removal== 74774 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10501: <==closure== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #30231: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33898: <==closure== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #42127: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #43850: <==closure== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #59697: <==closure== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #66563: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #88145: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #17977: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20285: <==negation-removal== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #20496: <==uncertain_firing== 66563 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25332: <==negation-removal== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27620: <==uncertain_firing== 59697 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32865: <==uncertain_firing== 42127 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #33321: <==negation-removal== 43850 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #41271: <==negation-removal== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #47187: <==negation-removal== 10501 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #48419: <==uncertain_firing== 43850 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57300: <==uncertain_firing== 30231 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #64503: <==uncertain_firing== 10501 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75517: <==negation-removal== 59697 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76124: <==negation-removal== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #82498: <==negation-removal== 33898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #84740: <==uncertain_firing== 33898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10501: <==closure== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #30231: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33898: <==closure== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #42127: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #43850: <==closure== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #59697: <==closure== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #66563: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #88145: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #17977: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20285: <==negation-removal== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #20496: <==uncertain_firing== 66563 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25332: <==negation-removal== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27620: <==uncertain_firing== 59697 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32865: <==uncertain_firing== 42127 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #33321: <==negation-removal== 43850 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #41271: <==negation-removal== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #47187: <==negation-removal== 10501 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #48419: <==uncertain_firing== 43850 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57300: <==uncertain_firing== 30231 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #64503: <==uncertain_firing== 10501 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75517: <==negation-removal== 59697 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76124: <==negation-removal== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #82498: <==negation-removal== 33898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #84740: <==uncertain_firing== 33898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #10501: <==closure== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #30231: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33898: <==closure== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #42127: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #43850: <==closure== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #59697: <==closure== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #66563: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #88145: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #17977: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20285: <==negation-removal== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #20496: <==uncertain_firing== 66563 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25332: <==negation-removal== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27620: <==uncertain_firing== 59697 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32865: <==uncertain_firing== 42127 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #33321: <==negation-removal== 43850 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #41271: <==negation-removal== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #47187: <==negation-removal== 10501 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #48419: <==uncertain_firing== 43850 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57300: <==uncertain_firing== 30231 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #64503: <==uncertain_firing== 10501 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75517: <==negation-removal== 59697 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76124: <==negation-removal== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #82498: <==negation-removal== 33898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #84740: <==uncertain_firing== 33898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #10501: <==closure== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #30231: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #33898: <==closure== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #42127: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #43850: <==closure== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #59697: <==closure== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #66563: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #88145: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #17977: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #20285: <==negation-removal== 66563 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #20496: <==uncertain_firing== 66563 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #25332: <==negation-removal== 30231 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #27620: <==uncertain_firing== 59697 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #32865: <==uncertain_firing== 42127 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #33321: <==negation-removal== 43850 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #41271: <==negation-removal== 42127 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #47187: <==negation-removal== 10501 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #48419: <==uncertain_firing== 43850 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #57300: <==uncertain_firing== 30231 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #64503: <==uncertain_firing== 10501 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #75517: <==negation-removal== 59697 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76124: <==negation-removal== 88145 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #82498: <==negation-removal== 33898 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #84740: <==uncertain_firing== 33898 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #12330: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #12612: <==closure== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #20343: <==closure== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33964: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #34051: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65119: <==closure== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79667: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #94783: <==closure== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #13609: <==uncertain_firing== 94783 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #15182: <==negation-removal== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #16412: <==uncertain_firing== 79667 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #23801: <==negation-removal== 20343 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23931: <==negation-removal== 65119 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27479: <==negation-removal== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #30475: <==uncertain_firing== 33964 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #31718: <==negation-removal== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #32800: <==uncertain_firing== 12330 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #36050: <==uncertain_firing== 20343 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66131: <==uncertain_firing== 12612 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67043: <==uncertain_firing== 65119 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67907: <==uncertain_firing== 34051 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #74157: <==negation-removal== 12612 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #85440: <==negation-removal== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89303: <==negation-removal== 94783 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12330: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #12612: <==closure== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #20343: <==closure== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33964: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #34051: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65119: <==closure== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79667: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #94783: <==closure== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #13609: <==uncertain_firing== 94783 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #15182: <==negation-removal== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #16412: <==uncertain_firing== 79667 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #23801: <==negation-removal== 20343 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23931: <==negation-removal== 65119 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27479: <==negation-removal== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #30475: <==uncertain_firing== 33964 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #31718: <==negation-removal== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #32800: <==uncertain_firing== 12330 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #36050: <==uncertain_firing== 20343 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66131: <==uncertain_firing== 12612 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67043: <==uncertain_firing== 65119 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67907: <==uncertain_firing== 34051 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #74157: <==negation-removal== 12612 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #85440: <==negation-removal== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89303: <==negation-removal== 94783 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #12330: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #12612: <==closure== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #20343: <==closure== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33964: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #34051: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65119: <==closure== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79667: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #94783: <==closure== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #13609: <==uncertain_firing== 94783 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #15182: <==negation-removal== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #16412: <==uncertain_firing== 79667 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #23801: <==negation-removal== 20343 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23931: <==negation-removal== 65119 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27479: <==negation-removal== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #30475: <==uncertain_firing== 33964 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #31718: <==negation-removal== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #32800: <==uncertain_firing== 12330 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #36050: <==uncertain_firing== 20343 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66131: <==uncertain_firing== 12612 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67043: <==uncertain_firing== 65119 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67907: <==uncertain_firing== 34051 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #74157: <==negation-removal== 12612 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #85440: <==negation-removal== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89303: <==negation-removal== 94783 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (at_d_p6)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #12330: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #12612: <==closure== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #20343: <==closure== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33964: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #34051: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #65119: <==closure== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79667: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #94783: <==closure== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #13609: <==uncertain_firing== 94783 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #15182: <==negation-removal== 79667 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #16412: <==uncertain_firing== 79667 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #23801: <==negation-removal== 20343 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #23931: <==negation-removal== 65119 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #27479: <==negation-removal== 33964 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #30475: <==uncertain_firing== 33964 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #31718: <==negation-removal== 34051 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #32800: <==uncertain_firing== 12330 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #36050: <==uncertain_firing== 20343 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66131: <==uncertain_firing== 12612 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67043: <==uncertain_firing== 65119 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #67907: <==uncertain_firing== 34051 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #74157: <==negation-removal== 12612 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #85440: <==negation-removal== 12330 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #89303: <==negation-removal== 94783 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #14166: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #16468: <==closure== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #19680: <==closure== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50676: <==closure== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #54083: <==closure== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #64871: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76910: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #99745: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #20840: <==negation-removal== 50676 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26158: <==uncertain_firing== 19680 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #30738: <==negation-removal== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35646: <==negation-removal== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #39513: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #39843: <==uncertain_firing== 50676 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #46545: <==uncertain_firing== 16468 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #52222: <==uncertain_firing== 99745 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57747: <==negation-removal== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74167: <==uncertain_firing== 14166 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #84591: <==negation-removal== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #88543: <==negation-removal== 16468 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #89935: <==negation-removal== 54083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90000: <==uncertain_firing== 76910 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91413: <==negation-removal== 19680 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #96170: <==uncertain_firing== 64871 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #14166: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #16468: <==closure== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #19680: <==closure== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50676: <==closure== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #54083: <==closure== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #64871: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76910: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #99745: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #20840: <==negation-removal== 50676 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26158: <==uncertain_firing== 19680 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #30738: <==negation-removal== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35646: <==negation-removal== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #39513: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #39843: <==uncertain_firing== 50676 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #46545: <==uncertain_firing== 16468 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #52222: <==uncertain_firing== 99745 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57747: <==negation-removal== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74167: <==uncertain_firing== 14166 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #84591: <==negation-removal== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #88543: <==negation-removal== 16468 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #89935: <==negation-removal== 54083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90000: <==uncertain_firing== 76910 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91413: <==negation-removal== 19680 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #96170: <==uncertain_firing== 64871 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #14166: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #16468: <==closure== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #19680: <==closure== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50676: <==closure== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #54083: <==closure== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #64871: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76910: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #99745: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #20840: <==negation-removal== 50676 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26158: <==uncertain_firing== 19680 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #30738: <==negation-removal== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35646: <==negation-removal== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #39513: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #39843: <==uncertain_firing== 50676 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #46545: <==uncertain_firing== 16468 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #52222: <==uncertain_firing== 99745 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57747: <==negation-removal== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74167: <==uncertain_firing== 14166 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #84591: <==negation-removal== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #88543: <==negation-removal== 16468 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #89935: <==negation-removal== 54083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90000: <==uncertain_firing== 76910 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91413: <==negation-removal== 19680 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #96170: <==uncertain_firing== 64871 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #14166: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #16468: <==closure== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #19680: <==closure== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50676: <==closure== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #54083: <==closure== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #64871: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #76910: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #99745: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #20840: <==negation-removal== 50676 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #26158: <==uncertain_firing== 19680 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #30738: <==negation-removal== 76910 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #35646: <==negation-removal== 99745 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #39513: <==uncertain_firing== 54083 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #39843: <==uncertain_firing== 50676 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #46545: <==uncertain_firing== 16468 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #52222: <==uncertain_firing== 99745 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #57747: <==negation-removal== 64871 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74167: <==uncertain_firing== 14166 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #84591: <==negation-removal== 14166 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #88543: <==negation-removal== 16468 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #89935: <==negation-removal== 54083 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #90000: <==uncertain_firing== 76910 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #91413: <==negation-removal== 19680 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #96170: <==uncertain_firing== 64871 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #11602: <==closure== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #19535: <==closure== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #20017: <==closure== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #20685: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #40187: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #57270: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61235: <==closure== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80910: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20816: <==negation-removal== 20017 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22673: <==negation-removal== 61235 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #23864: <==uncertain_firing== 20017 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #24437: <==negation-removal== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #46951: <==uncertain_firing== 61235 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #51013: <==uncertain_firing== 80910 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #51642: <==uncertain_firing== 57270 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #52285: <==negation-removal== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #54276: <==negation-removal== 11602 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #58404: <==negation-removal== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #62852: <==uncertain_firing== 11602 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #63739: <==uncertain_firing== 19535 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #63831: <==uncertain_firing== 40187 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #65039: <==uncertain_firing== 20685 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #81747: <==negation-removal== 19535 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #84336: <==negation-removal== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #11602: <==closure== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #19535: <==closure== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #20017: <==closure== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #20685: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #40187: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #57270: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61235: <==closure== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80910: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20816: <==negation-removal== 20017 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22673: <==negation-removal== 61235 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #23864: <==uncertain_firing== 20017 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #24437: <==negation-removal== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #46951: <==uncertain_firing== 61235 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #51013: <==uncertain_firing== 80910 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #51642: <==uncertain_firing== 57270 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #52285: <==negation-removal== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #54276: <==negation-removal== 11602 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #58404: <==negation-removal== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #62852: <==uncertain_firing== 11602 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #63739: <==uncertain_firing== 19535 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #63831: <==uncertain_firing== 40187 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #65039: <==uncertain_firing== 20685 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #81747: <==negation-removal== 19535 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #84336: <==negation-removal== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #11602: <==closure== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #19535: <==closure== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #20017: <==closure== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #20685: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #40187: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #57270: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61235: <==closure== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80910: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20816: <==negation-removal== 20017 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22673: <==negation-removal== 61235 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #23864: <==uncertain_firing== 20017 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #24437: <==negation-removal== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #46951: <==uncertain_firing== 61235 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #51013: <==uncertain_firing== 80910 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #51642: <==uncertain_firing== 57270 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #52285: <==negation-removal== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #54276: <==negation-removal== 11602 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #58404: <==negation-removal== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #62852: <==uncertain_firing== 11602 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #63739: <==uncertain_firing== 19535 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #63831: <==uncertain_firing== 40187 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #65039: <==uncertain_firing== 20685 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #81747: <==negation-removal== 19535 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #84336: <==negation-removal== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #11602: <==closure== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #19535: <==closure== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #20017: <==closure== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #20685: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #40187: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #57270: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #61235: <==closure== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #80910: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #20816: <==negation-removal== 20017 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #22673: <==negation-removal== 61235 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #23864: <==uncertain_firing== 20017 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #24437: <==negation-removal== 80910 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #46951: <==uncertain_firing== 61235 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #51013: <==uncertain_firing== 80910 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #51642: <==uncertain_firing== 57270 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #52285: <==negation-removal== 57270 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #54276: <==negation-removal== 11602 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #58404: <==negation-removal== 20685 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #62852: <==uncertain_firing== 11602 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #63739: <==uncertain_firing== 19535 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #63831: <==uncertain_firing== 40187 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #65039: <==uncertain_firing== 20685 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #81747: <==negation-removal== 19535 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #84336: <==negation-removal== 40187 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #42346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #75321: <==closure== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77732: <==closure== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #80975: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82355: <==closure== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #83649: <==closure== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #85055: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88812: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #11203: <==uncertain_firing== 82355 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #11757: <==uncertain_firing== 88812 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #12010: <==negation-removal== 75321 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14219: <==negation-removal== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #17889: <==uncertain_firing== 80975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #24661: <==negation-removal== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35915: <==uncertain_firing== 77732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #40284: <==negation-removal== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #48905: <==negation-removal== 83649 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68492: <==uncertain_firing== 75321 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #68794: <==uncertain_firing== 85055 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #69866: <==uncertain_firing== 42346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78011: <==uncertain_firing== 83649 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #80169: <==negation-removal== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82666: <==negation-removal== 77732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #85123: <==negation-removal== 82355 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #42346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #75321: <==closure== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77732: <==closure== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #80975: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82355: <==closure== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #83649: <==closure== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #85055: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88812: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #11203: <==uncertain_firing== 82355 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #11757: <==uncertain_firing== 88812 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #12010: <==negation-removal== 75321 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14219: <==negation-removal== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #17889: <==uncertain_firing== 80975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #24661: <==negation-removal== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35915: <==uncertain_firing== 77732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #40284: <==negation-removal== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #48905: <==negation-removal== 83649 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68492: <==uncertain_firing== 75321 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #68794: <==uncertain_firing== 85055 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #69866: <==uncertain_firing== 42346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78011: <==uncertain_firing== 83649 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #80169: <==negation-removal== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82666: <==negation-removal== 77732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #85123: <==negation-removal== 82355 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #42346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #75321: <==closure== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77732: <==closure== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #80975: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82355: <==closure== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #83649: <==closure== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #85055: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88812: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #11203: <==uncertain_firing== 82355 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #11757: <==uncertain_firing== 88812 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #12010: <==negation-removal== 75321 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14219: <==negation-removal== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #17889: <==uncertain_firing== 80975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #24661: <==negation-removal== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35915: <==uncertain_firing== 77732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #40284: <==negation-removal== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #48905: <==negation-removal== 83649 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68492: <==uncertain_firing== 75321 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #68794: <==uncertain_firing== 85055 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #69866: <==uncertain_firing== 42346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78011: <==uncertain_firing== 83649 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #80169: <==negation-removal== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82666: <==negation-removal== 77732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #85123: <==negation-removal== 82355 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #42346: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #75321: <==closure== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #77732: <==closure== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #80975: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82355: <==closure== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #83649: <==closure== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #85055: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88812: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #11203: <==uncertain_firing== 82355 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #11757: <==uncertain_firing== 88812 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #12010: <==negation-removal== 75321 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14219: <==negation-removal== 42346 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #17889: <==uncertain_firing== 80975 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #24661: <==negation-removal== 80975 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #35915: <==uncertain_firing== 77732 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #40284: <==negation-removal== 85055 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #48905: <==negation-removal== 83649 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #68492: <==uncertain_firing== 75321 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #68794: <==uncertain_firing== 85055 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #69866: <==uncertain_firing== 42346 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #78011: <==uncertain_firing== 83649 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #80169: <==negation-removal== 88812 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #82666: <==negation-removal== 77732 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #85123: <==negation-removal== 82355 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #15659: origin
                    (Bb_survivorat_s_p10)

                    ; #18126: origin
                    (Ba_survivorat_s_p10)

                    ; #36463: <==closure== 15659 (pos)
                    (Pb_survivorat_s_p10)

                    ; #41798: origin
                    (Bc_survivorat_s_p10)

                    ; #47935: <==closure== 41798 (pos)
                    (Pc_survivorat_s_p10)

                    ; #57807: <==closure== 72628 (pos)
                    (Pd_survivorat_s_p10)

                    ; #72628: origin
                    (Bd_survivorat_s_p10)

                    ; #87646: <==closure== 18126 (pos)
                    (Pa_survivorat_s_p10)

                    ; #14766: <==negation-removal== 72628 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #25203: <==negation-removal== 87646 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42995: <==negation-removal== 36463 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43806: <==negation-removal== 57807 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #53497: <==negation-removal== 47935 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #56936: <==negation-removal== 18126 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57298: <==negation-removal== 15659 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #92140: <==negation-removal== 41798 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #15659: origin
                    (Bb_survivorat_s_p10)

                    ; #18126: origin
                    (Ba_survivorat_s_p10)

                    ; #36463: <==closure== 15659 (pos)
                    (Pb_survivorat_s_p10)

                    ; #41798: origin
                    (Bc_survivorat_s_p10)

                    ; #47935: <==closure== 41798 (pos)
                    (Pc_survivorat_s_p10)

                    ; #57807: <==closure== 72628 (pos)
                    (Pd_survivorat_s_p10)

                    ; #72628: origin
                    (Bd_survivorat_s_p10)

                    ; #87646: <==closure== 18126 (pos)
                    (Pa_survivorat_s_p10)

                    ; #14766: <==negation-removal== 72628 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #25203: <==negation-removal== 87646 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42995: <==negation-removal== 36463 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43806: <==negation-removal== 57807 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #53497: <==negation-removal== 47935 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #56936: <==negation-removal== 18126 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57298: <==negation-removal== 15659 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #92140: <==negation-removal== 41798 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #15659: origin
                    (Bb_survivorat_s_p10)

                    ; #18126: origin
                    (Ba_survivorat_s_p10)

                    ; #36463: <==closure== 15659 (pos)
                    (Pb_survivorat_s_p10)

                    ; #41798: origin
                    (Bc_survivorat_s_p10)

                    ; #47935: <==closure== 41798 (pos)
                    (Pc_survivorat_s_p10)

                    ; #57807: <==closure== 72628 (pos)
                    (Pd_survivorat_s_p10)

                    ; #72628: origin
                    (Bd_survivorat_s_p10)

                    ; #87646: <==closure== 18126 (pos)
                    (Pa_survivorat_s_p10)

                    ; #14766: <==negation-removal== 72628 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #25203: <==negation-removal== 87646 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42995: <==negation-removal== 36463 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43806: <==negation-removal== 57807 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #53497: <==negation-removal== 47935 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #56936: <==negation-removal== 18126 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57298: <==negation-removal== 15659 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #92140: <==negation-removal== 41798 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #15659: origin
                    (Bb_survivorat_s_p10)

                    ; #18126: origin
                    (Ba_survivorat_s_p10)

                    ; #36463: <==closure== 15659 (pos)
                    (Pb_survivorat_s_p10)

                    ; #41798: origin
                    (Bc_survivorat_s_p10)

                    ; #47935: <==closure== 41798 (pos)
                    (Pc_survivorat_s_p10)

                    ; #57807: <==closure== 72628 (pos)
                    (Pd_survivorat_s_p10)

                    ; #72628: origin
                    (Bd_survivorat_s_p10)

                    ; #87646: <==closure== 18126 (pos)
                    (Pa_survivorat_s_p10)

                    ; #14766: <==negation-removal== 72628 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #25203: <==negation-removal== 87646 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #42995: <==negation-removal== 36463 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #43806: <==negation-removal== 57807 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #53497: <==negation-removal== 47935 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #56936: <==negation-removal== 18126 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #57298: <==negation-removal== 15659 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #92140: <==negation-removal== 41798 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #14914: <==closure== 34082 (pos)
                    (Pa_survivorat_s_p11)

                    ; #18422: <==closure== 31693 (pos)
                    (Pc_survivorat_s_p11)

                    ; #31172: origin
                    (Bb_survivorat_s_p11)

                    ; #31693: origin
                    (Bc_survivorat_s_p11)

                    ; #34082: origin
                    (Ba_survivorat_s_p11)

                    ; #38154: <==closure== 31172 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45678: origin
                    (Bd_survivorat_s_p11)

                    ; #46782: <==closure== 45678 (pos)
                    (Pd_survivorat_s_p11)

                    ; #15123: <==negation-removal== 45678 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #21569: <==negation-removal== 14914 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #32009: <==negation-removal== 31172 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39891: <==negation-removal== 38154 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72419: <==negation-removal== 31693 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #72730: <==negation-removal== 34082 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #74853: <==negation-removal== 18422 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #76535: <==negation-removal== 46782 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #14914: <==closure== 34082 (pos)
                    (Pa_survivorat_s_p11)

                    ; #18422: <==closure== 31693 (pos)
                    (Pc_survivorat_s_p11)

                    ; #31172: origin
                    (Bb_survivorat_s_p11)

                    ; #31693: origin
                    (Bc_survivorat_s_p11)

                    ; #34082: origin
                    (Ba_survivorat_s_p11)

                    ; #38154: <==closure== 31172 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45678: origin
                    (Bd_survivorat_s_p11)

                    ; #46782: <==closure== 45678 (pos)
                    (Pd_survivorat_s_p11)

                    ; #15123: <==negation-removal== 45678 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #21569: <==negation-removal== 14914 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #32009: <==negation-removal== 31172 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39891: <==negation-removal== 38154 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72419: <==negation-removal== 31693 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #72730: <==negation-removal== 34082 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #74853: <==negation-removal== 18422 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #76535: <==negation-removal== 46782 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #14914: <==closure== 34082 (pos)
                    (Pa_survivorat_s_p11)

                    ; #18422: <==closure== 31693 (pos)
                    (Pc_survivorat_s_p11)

                    ; #31172: origin
                    (Bb_survivorat_s_p11)

                    ; #31693: origin
                    (Bc_survivorat_s_p11)

                    ; #34082: origin
                    (Ba_survivorat_s_p11)

                    ; #38154: <==closure== 31172 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45678: origin
                    (Bd_survivorat_s_p11)

                    ; #46782: <==closure== 45678 (pos)
                    (Pd_survivorat_s_p11)

                    ; #15123: <==negation-removal== 45678 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #21569: <==negation-removal== 14914 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #32009: <==negation-removal== 31172 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39891: <==negation-removal== 38154 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72419: <==negation-removal== 31693 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #72730: <==negation-removal== 34082 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #74853: <==negation-removal== 18422 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #76535: <==negation-removal== 46782 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (at_d_p11)
                           (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #14914: <==closure== 34082 (pos)
                    (Pa_survivorat_s_p11)

                    ; #18422: <==closure== 31693 (pos)
                    (Pc_survivorat_s_p11)

                    ; #31172: origin
                    (Bb_survivorat_s_p11)

                    ; #31693: origin
                    (Bc_survivorat_s_p11)

                    ; #34082: origin
                    (Ba_survivorat_s_p11)

                    ; #38154: <==closure== 31172 (pos)
                    (Pb_survivorat_s_p11)

                    ; #45678: origin
                    (Bd_survivorat_s_p11)

                    ; #46782: <==closure== 45678 (pos)
                    (Pd_survivorat_s_p11)

                    ; #15123: <==negation-removal== 45678 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #21569: <==negation-removal== 14914 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #32009: <==negation-removal== 31172 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #39891: <==negation-removal== 38154 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72419: <==negation-removal== 31693 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #72730: <==negation-removal== 34082 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #74853: <==negation-removal== 18422 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #76535: <==negation-removal== 46782 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (at_a_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #22401: <==closure== 55255 (pos)
                    (Pd_survivorat_s_p12)

                    ; #24492: origin
                    (Bc_survivorat_s_p12)

                    ; #29636: origin
                    (Bb_survivorat_s_p12)

                    ; #55255: origin
                    (Bd_survivorat_s_p12)

                    ; #58918: <==closure== 24492 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67559: <==closure== 86350 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79179: <==closure== 29636 (pos)
                    (Pb_survivorat_s_p12)

                    ; #86350: origin
                    (Ba_survivorat_s_p12)

                    ; #13717: <==negation-removal== 29636 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21307: <==negation-removal== 58918 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #25371: <==negation-removal== 79179 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #31950: <==negation-removal== 86350 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47004: <==negation-removal== 55255 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #61732: <==negation-removal== 24492 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #77419: <==negation-removal== 22401 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #87905: <==negation-removal== 67559 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #22401: <==closure== 55255 (pos)
                    (Pd_survivorat_s_p12)

                    ; #24492: origin
                    (Bc_survivorat_s_p12)

                    ; #29636: origin
                    (Bb_survivorat_s_p12)

                    ; #55255: origin
                    (Bd_survivorat_s_p12)

                    ; #58918: <==closure== 24492 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67559: <==closure== 86350 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79179: <==closure== 29636 (pos)
                    (Pb_survivorat_s_p12)

                    ; #86350: origin
                    (Ba_survivorat_s_p12)

                    ; #13717: <==negation-removal== 29636 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21307: <==negation-removal== 58918 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #25371: <==negation-removal== 79179 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #31950: <==negation-removal== 86350 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47004: <==negation-removal== 55255 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #61732: <==negation-removal== 24492 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #77419: <==negation-removal== 22401 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #87905: <==negation-removal== 67559 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #22401: <==closure== 55255 (pos)
                    (Pd_survivorat_s_p12)

                    ; #24492: origin
                    (Bc_survivorat_s_p12)

                    ; #29636: origin
                    (Bb_survivorat_s_p12)

                    ; #55255: origin
                    (Bd_survivorat_s_p12)

                    ; #58918: <==closure== 24492 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67559: <==closure== 86350 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79179: <==closure== 29636 (pos)
                    (Pb_survivorat_s_p12)

                    ; #86350: origin
                    (Ba_survivorat_s_p12)

                    ; #13717: <==negation-removal== 29636 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21307: <==negation-removal== 58918 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #25371: <==negation-removal== 79179 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #31950: <==negation-removal== 86350 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47004: <==negation-removal== 55255 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #61732: <==negation-removal== 24492 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #77419: <==negation-removal== 22401 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #87905: <==negation-removal== 67559 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #22401: <==closure== 55255 (pos)
                    (Pd_survivorat_s_p12)

                    ; #24492: origin
                    (Bc_survivorat_s_p12)

                    ; #29636: origin
                    (Bb_survivorat_s_p12)

                    ; #55255: origin
                    (Bd_survivorat_s_p12)

                    ; #58918: <==closure== 24492 (pos)
                    (Pc_survivorat_s_p12)

                    ; #67559: <==closure== 86350 (pos)
                    (Pa_survivorat_s_p12)

                    ; #79179: <==closure== 29636 (pos)
                    (Pb_survivorat_s_p12)

                    ; #86350: origin
                    (Ba_survivorat_s_p12)

                    ; #13717: <==negation-removal== 29636 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #21307: <==negation-removal== 58918 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #25371: <==negation-removal== 79179 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #31950: <==negation-removal== 86350 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #47004: <==negation-removal== 55255 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #61732: <==negation-removal== 24492 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #77419: <==negation-removal== 22401 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #87905: <==negation-removal== 67559 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #19103: <==closure== 88377 (pos)
                    (Pc_survivorat_s_p1)

                    ; #19694: origin
                    (Ba_survivorat_s_p1)

                    ; #20952: <==closure== 19694 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40368: <==closure== 40376 (pos)
                    (Pb_survivorat_s_p1)

                    ; #40376: origin
                    (Bb_survivorat_s_p1)

                    ; #76139: origin
                    (Bd_survivorat_s_p1)

                    ; #88377: origin
                    (Bc_survivorat_s_p1)

                    ; #90412: <==closure== 76139 (pos)
                    (Pd_survivorat_s_p1)

                    ; #11668: <==negation-removal== 88377 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #15312: <==negation-removal== 19694 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #26375: <==negation-removal== 76139 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #33424: <==negation-removal== 20952 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50660: <==negation-removal== 19103 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64492: <==negation-removal== 40376 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66624: <==negation-removal== 40368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75366: <==negation-removal== 90412 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #19103: <==closure== 88377 (pos)
                    (Pc_survivorat_s_p1)

                    ; #19694: origin
                    (Ba_survivorat_s_p1)

                    ; #20952: <==closure== 19694 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40368: <==closure== 40376 (pos)
                    (Pb_survivorat_s_p1)

                    ; #40376: origin
                    (Bb_survivorat_s_p1)

                    ; #76139: origin
                    (Bd_survivorat_s_p1)

                    ; #88377: origin
                    (Bc_survivorat_s_p1)

                    ; #90412: <==closure== 76139 (pos)
                    (Pd_survivorat_s_p1)

                    ; #11668: <==negation-removal== 88377 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #15312: <==negation-removal== 19694 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #26375: <==negation-removal== 76139 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #33424: <==negation-removal== 20952 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50660: <==negation-removal== 19103 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64492: <==negation-removal== 40376 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66624: <==negation-removal== 40368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75366: <==negation-removal== 90412 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #19103: <==closure== 88377 (pos)
                    (Pc_survivorat_s_p1)

                    ; #19694: origin
                    (Ba_survivorat_s_p1)

                    ; #20952: <==closure== 19694 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40368: <==closure== 40376 (pos)
                    (Pb_survivorat_s_p1)

                    ; #40376: origin
                    (Bb_survivorat_s_p1)

                    ; #76139: origin
                    (Bd_survivorat_s_p1)

                    ; #88377: origin
                    (Bc_survivorat_s_p1)

                    ; #90412: <==closure== 76139 (pos)
                    (Pd_survivorat_s_p1)

                    ; #11668: <==negation-removal== 88377 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #15312: <==negation-removal== 19694 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #26375: <==negation-removal== 76139 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #33424: <==negation-removal== 20952 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50660: <==negation-removal== 19103 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64492: <==negation-removal== 40376 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66624: <==negation-removal== 40368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75366: <==negation-removal== 90412 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #19103: <==closure== 88377 (pos)
                    (Pc_survivorat_s_p1)

                    ; #19694: origin
                    (Ba_survivorat_s_p1)

                    ; #20952: <==closure== 19694 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40368: <==closure== 40376 (pos)
                    (Pb_survivorat_s_p1)

                    ; #40376: origin
                    (Bb_survivorat_s_p1)

                    ; #76139: origin
                    (Bd_survivorat_s_p1)

                    ; #88377: origin
                    (Bc_survivorat_s_p1)

                    ; #90412: <==closure== 76139 (pos)
                    (Pd_survivorat_s_p1)

                    ; #11668: <==negation-removal== 88377 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #15312: <==negation-removal== 19694 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #26375: <==negation-removal== 76139 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #33424: <==negation-removal== 20952 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #50660: <==negation-removal== 19103 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #64492: <==negation-removal== 40376 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66624: <==negation-removal== 40368 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #75366: <==negation-removal== 90412 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #18275: <==closure== 49347 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25613: origin
                    (Bd_survivorat_s_p2)

                    ; #26918: <==closure== 25613 (pos)
                    (Pd_survivorat_s_p2)

                    ; #36259: origin
                    (Bc_survivorat_s_p2)

                    ; #49347: origin
                    (Ba_survivorat_s_p2)

                    ; #71061: <==closure== 78998 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78998: origin
                    (Bb_survivorat_s_p2)

                    ; #81194: <==closure== 36259 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19938: <==negation-removal== 26918 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #55600: <==negation-removal== 78998 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56587: <==negation-removal== 36259 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62986: <==negation-removal== 25613 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #71234: <==negation-removal== 18275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71643: <==negation-removal== 81194 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79266: <==negation-removal== 49347 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90246: <==negation-removal== 71061 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #18275: <==closure== 49347 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25613: origin
                    (Bd_survivorat_s_p2)

                    ; #26918: <==closure== 25613 (pos)
                    (Pd_survivorat_s_p2)

                    ; #36259: origin
                    (Bc_survivorat_s_p2)

                    ; #49347: origin
                    (Ba_survivorat_s_p2)

                    ; #71061: <==closure== 78998 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78998: origin
                    (Bb_survivorat_s_p2)

                    ; #81194: <==closure== 36259 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19938: <==negation-removal== 26918 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #55600: <==negation-removal== 78998 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56587: <==negation-removal== 36259 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62986: <==negation-removal== 25613 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #71234: <==negation-removal== 18275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71643: <==negation-removal== 81194 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79266: <==negation-removal== 49347 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90246: <==negation-removal== 71061 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #18275: <==closure== 49347 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25613: origin
                    (Bd_survivorat_s_p2)

                    ; #26918: <==closure== 25613 (pos)
                    (Pd_survivorat_s_p2)

                    ; #36259: origin
                    (Bc_survivorat_s_p2)

                    ; #49347: origin
                    (Ba_survivorat_s_p2)

                    ; #71061: <==closure== 78998 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78998: origin
                    (Bb_survivorat_s_p2)

                    ; #81194: <==closure== 36259 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19938: <==negation-removal== 26918 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #55600: <==negation-removal== 78998 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56587: <==negation-removal== 36259 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62986: <==negation-removal== 25613 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #71234: <==negation-removal== 18275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71643: <==negation-removal== 81194 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79266: <==negation-removal== 49347 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90246: <==negation-removal== 71061 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Pd_survivorat_s_p2)
                           (at_d_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #18275: <==closure== 49347 (pos)
                    (Pa_survivorat_s_p2)

                    ; #25613: origin
                    (Bd_survivorat_s_p2)

                    ; #26918: <==closure== 25613 (pos)
                    (Pd_survivorat_s_p2)

                    ; #36259: origin
                    (Bc_survivorat_s_p2)

                    ; #49347: origin
                    (Ba_survivorat_s_p2)

                    ; #71061: <==closure== 78998 (pos)
                    (Pb_survivorat_s_p2)

                    ; #78998: origin
                    (Bb_survivorat_s_p2)

                    ; #81194: <==closure== 36259 (pos)
                    (Pc_survivorat_s_p2)

                    ; #19938: <==negation-removal== 26918 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #55600: <==negation-removal== 78998 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56587: <==negation-removal== 36259 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #62986: <==negation-removal== 25613 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #71234: <==negation-removal== 18275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #71643: <==negation-removal== 81194 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #79266: <==negation-removal== 49347 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #90246: <==negation-removal== 71061 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #11028: origin
                    (Bc_survivorat_s_p3)

                    ; #28542: <==closure== 50779 (pos)
                    (Pa_survivorat_s_p3)

                    ; #32303: <==closure== 34303 (pos)
                    (Pd_survivorat_s_p3)

                    ; #34303: origin
                    (Bd_survivorat_s_p3)

                    ; #42150: origin
                    (Bb_survivorat_s_p3)

                    ; #46559: <==closure== 11028 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50779: origin
                    (Ba_survivorat_s_p3)

                    ; #51395: <==closure== 42150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27385: <==negation-removal== 46559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44352: <==negation-removal== 32303 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #55006: <==negation-removal== 28542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60396: <==negation-removal== 11028 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68370: <==negation-removal== 42150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73934: <==negation-removal== 34303 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #86922: <==negation-removal== 51395 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92060: <==negation-removal== 50779 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #11028: origin
                    (Bc_survivorat_s_p3)

                    ; #28542: <==closure== 50779 (pos)
                    (Pa_survivorat_s_p3)

                    ; #32303: <==closure== 34303 (pos)
                    (Pd_survivorat_s_p3)

                    ; #34303: origin
                    (Bd_survivorat_s_p3)

                    ; #42150: origin
                    (Bb_survivorat_s_p3)

                    ; #46559: <==closure== 11028 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50779: origin
                    (Ba_survivorat_s_p3)

                    ; #51395: <==closure== 42150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27385: <==negation-removal== 46559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44352: <==negation-removal== 32303 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #55006: <==negation-removal== 28542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60396: <==negation-removal== 11028 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68370: <==negation-removal== 42150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73934: <==negation-removal== 34303 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #86922: <==negation-removal== 51395 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92060: <==negation-removal== 50779 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #11028: origin
                    (Bc_survivorat_s_p3)

                    ; #28542: <==closure== 50779 (pos)
                    (Pa_survivorat_s_p3)

                    ; #32303: <==closure== 34303 (pos)
                    (Pd_survivorat_s_p3)

                    ; #34303: origin
                    (Bd_survivorat_s_p3)

                    ; #42150: origin
                    (Bb_survivorat_s_p3)

                    ; #46559: <==closure== 11028 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50779: origin
                    (Ba_survivorat_s_p3)

                    ; #51395: <==closure== 42150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27385: <==negation-removal== 46559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44352: <==negation-removal== 32303 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #55006: <==negation-removal== 28542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60396: <==negation-removal== 11028 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68370: <==negation-removal== 42150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73934: <==negation-removal== 34303 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #86922: <==negation-removal== 51395 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92060: <==negation-removal== 50779 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #11028: origin
                    (Bc_survivorat_s_p3)

                    ; #28542: <==closure== 50779 (pos)
                    (Pa_survivorat_s_p3)

                    ; #32303: <==closure== 34303 (pos)
                    (Pd_survivorat_s_p3)

                    ; #34303: origin
                    (Bd_survivorat_s_p3)

                    ; #42150: origin
                    (Bb_survivorat_s_p3)

                    ; #46559: <==closure== 11028 (pos)
                    (Pc_survivorat_s_p3)

                    ; #50779: origin
                    (Ba_survivorat_s_p3)

                    ; #51395: <==closure== 42150 (pos)
                    (Pb_survivorat_s_p3)

                    ; #27385: <==negation-removal== 46559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44352: <==negation-removal== 32303 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #55006: <==negation-removal== 28542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #60396: <==negation-removal== 11028 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68370: <==negation-removal== 42150 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73934: <==negation-removal== 34303 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #86922: <==negation-removal== 51395 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #92060: <==negation-removal== 50779 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16862: origin
                    (Bc_survivorat_s_p4)

                    ; #19361: <==closure== 54344 (pos)
                    (Pb_survivorat_s_p4)

                    ; #19700: <==closure== 16862 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27046: <==closure== 68166 (pos)
                    (Pd_survivorat_s_p4)

                    ; #41216: origin
                    (Ba_survivorat_s_p4)

                    ; #54344: origin
                    (Bb_survivorat_s_p4)

                    ; #68166: origin
                    (Bd_survivorat_s_p4)

                    ; #69756: <==closure== 41216 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28160: <==negation-removal== 68166 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34876: <==negation-removal== 27046 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37350: <==negation-removal== 19700 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #39289: <==negation-removal== 19361 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54760: <==negation-removal== 69756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #64368: <==negation-removal== 16862 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #70873: <==negation-removal== 54344 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #91719: <==negation-removal== 41216 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #16862: origin
                    (Bc_survivorat_s_p4)

                    ; #19361: <==closure== 54344 (pos)
                    (Pb_survivorat_s_p4)

                    ; #19700: <==closure== 16862 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27046: <==closure== 68166 (pos)
                    (Pd_survivorat_s_p4)

                    ; #41216: origin
                    (Ba_survivorat_s_p4)

                    ; #54344: origin
                    (Bb_survivorat_s_p4)

                    ; #68166: origin
                    (Bd_survivorat_s_p4)

                    ; #69756: <==closure== 41216 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28160: <==negation-removal== 68166 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34876: <==negation-removal== 27046 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37350: <==negation-removal== 19700 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #39289: <==negation-removal== 19361 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54760: <==negation-removal== 69756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #64368: <==negation-removal== 16862 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #70873: <==negation-removal== 54344 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #91719: <==negation-removal== 41216 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16862: origin
                    (Bc_survivorat_s_p4)

                    ; #19361: <==closure== 54344 (pos)
                    (Pb_survivorat_s_p4)

                    ; #19700: <==closure== 16862 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27046: <==closure== 68166 (pos)
                    (Pd_survivorat_s_p4)

                    ; #41216: origin
                    (Ba_survivorat_s_p4)

                    ; #54344: origin
                    (Bb_survivorat_s_p4)

                    ; #68166: origin
                    (Bd_survivorat_s_p4)

                    ; #69756: <==closure== 41216 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28160: <==negation-removal== 68166 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34876: <==negation-removal== 27046 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37350: <==negation-removal== 19700 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #39289: <==negation-removal== 19361 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54760: <==negation-removal== 69756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #64368: <==negation-removal== 16862 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #70873: <==negation-removal== 54344 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #91719: <==negation-removal== 41216 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4)
                           (at_d_p4))
        :effect (and
                    ; #16862: origin
                    (Bc_survivorat_s_p4)

                    ; #19361: <==closure== 54344 (pos)
                    (Pb_survivorat_s_p4)

                    ; #19700: <==closure== 16862 (pos)
                    (Pc_survivorat_s_p4)

                    ; #27046: <==closure== 68166 (pos)
                    (Pd_survivorat_s_p4)

                    ; #41216: origin
                    (Ba_survivorat_s_p4)

                    ; #54344: origin
                    (Bb_survivorat_s_p4)

                    ; #68166: origin
                    (Bd_survivorat_s_p4)

                    ; #69756: <==closure== 41216 (pos)
                    (Pa_survivorat_s_p4)

                    ; #28160: <==negation-removal== 68166 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #34876: <==negation-removal== 27046 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37350: <==negation-removal== 19700 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #39289: <==negation-removal== 19361 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #54760: <==negation-removal== 69756 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #64368: <==negation-removal== 16862 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #70873: <==negation-removal== 54344 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #91719: <==negation-removal== 41216 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #11356: origin
                    (Ba_survivorat_s_p5)

                    ; #38061: <==closure== 82045 (pos)
                    (Pc_survivorat_s_p5)

                    ; #65884: origin
                    (Bd_survivorat_s_p5)

                    ; #77678: <==closure== 82299 (pos)
                    (Pb_survivorat_s_p5)

                    ; #80982: <==closure== 65884 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82045: origin
                    (Bc_survivorat_s_p5)

                    ; #82299: origin
                    (Bb_survivorat_s_p5)

                    ; #88213: <==closure== 11356 (pos)
                    (Pa_survivorat_s_p5)

                    ; #10047: <==negation-removal== 11356 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #10546: <==negation-removal== 65884 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14191: <==negation-removal== 82045 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32591: <==negation-removal== 38061 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41900: <==negation-removal== 77678 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #46225: <==negation-removal== 88213 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52653: <==negation-removal== 80982 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #82277: <==negation-removal== 82299 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #11356: origin
                    (Ba_survivorat_s_p5)

                    ; #38061: <==closure== 82045 (pos)
                    (Pc_survivorat_s_p5)

                    ; #65884: origin
                    (Bd_survivorat_s_p5)

                    ; #77678: <==closure== 82299 (pos)
                    (Pb_survivorat_s_p5)

                    ; #80982: <==closure== 65884 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82045: origin
                    (Bc_survivorat_s_p5)

                    ; #82299: origin
                    (Bb_survivorat_s_p5)

                    ; #88213: <==closure== 11356 (pos)
                    (Pa_survivorat_s_p5)

                    ; #10047: <==negation-removal== 11356 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #10546: <==negation-removal== 65884 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14191: <==negation-removal== 82045 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32591: <==negation-removal== 38061 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41900: <==negation-removal== 77678 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #46225: <==negation-removal== 88213 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52653: <==negation-removal== 80982 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #82277: <==negation-removal== 82299 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #11356: origin
                    (Ba_survivorat_s_p5)

                    ; #38061: <==closure== 82045 (pos)
                    (Pc_survivorat_s_p5)

                    ; #65884: origin
                    (Bd_survivorat_s_p5)

                    ; #77678: <==closure== 82299 (pos)
                    (Pb_survivorat_s_p5)

                    ; #80982: <==closure== 65884 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82045: origin
                    (Bc_survivorat_s_p5)

                    ; #82299: origin
                    (Bb_survivorat_s_p5)

                    ; #88213: <==closure== 11356 (pos)
                    (Pa_survivorat_s_p5)

                    ; #10047: <==negation-removal== 11356 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #10546: <==negation-removal== 65884 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14191: <==negation-removal== 82045 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32591: <==negation-removal== 38061 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41900: <==negation-removal== 77678 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #46225: <==negation-removal== 88213 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52653: <==negation-removal== 80982 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #82277: <==negation-removal== 82299 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #11356: origin
                    (Ba_survivorat_s_p5)

                    ; #38061: <==closure== 82045 (pos)
                    (Pc_survivorat_s_p5)

                    ; #65884: origin
                    (Bd_survivorat_s_p5)

                    ; #77678: <==closure== 82299 (pos)
                    (Pb_survivorat_s_p5)

                    ; #80982: <==closure== 65884 (pos)
                    (Pd_survivorat_s_p5)

                    ; #82045: origin
                    (Bc_survivorat_s_p5)

                    ; #82299: origin
                    (Bb_survivorat_s_p5)

                    ; #88213: <==closure== 11356 (pos)
                    (Pa_survivorat_s_p5)

                    ; #10047: <==negation-removal== 11356 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #10546: <==negation-removal== 65884 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14191: <==negation-removal== 82045 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32591: <==negation-removal== 38061 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #41900: <==negation-removal== 77678 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #46225: <==negation-removal== 88213 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52653: <==negation-removal== 80982 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #82277: <==negation-removal== 82299 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #14063: <==closure== 14543 (pos)
                    (Pd_survivorat_s_p6)

                    ; #14543: origin
                    (Bd_survivorat_s_p6)

                    ; #25682: <==closure== 80551 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45394: origin
                    (Bc_survivorat_s_p6)

                    ; #59634: origin
                    (Bb_survivorat_s_p6)

                    ; #77989: <==closure== 45394 (pos)
                    (Pc_survivorat_s_p6)

                    ; #80171: <==closure== 59634 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80551: origin
                    (Ba_survivorat_s_p6)

                    ; #17250: <==negation-removal== 80551 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24789: <==negation-removal== 14543 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #30308: <==negation-removal== 25682 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46870: <==negation-removal== 45394 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #68377: <==negation-removal== 80171 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78695: <==negation-removal== 77989 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #79822: <==negation-removal== 59634 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #84875: <==negation-removal== 14063 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #14063: <==closure== 14543 (pos)
                    (Pd_survivorat_s_p6)

                    ; #14543: origin
                    (Bd_survivorat_s_p6)

                    ; #25682: <==closure== 80551 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45394: origin
                    (Bc_survivorat_s_p6)

                    ; #59634: origin
                    (Bb_survivorat_s_p6)

                    ; #77989: <==closure== 45394 (pos)
                    (Pc_survivorat_s_p6)

                    ; #80171: <==closure== 59634 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80551: origin
                    (Ba_survivorat_s_p6)

                    ; #17250: <==negation-removal== 80551 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24789: <==negation-removal== 14543 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #30308: <==negation-removal== 25682 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46870: <==negation-removal== 45394 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #68377: <==negation-removal== 80171 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78695: <==negation-removal== 77989 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #79822: <==negation-removal== 59634 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #84875: <==negation-removal== 14063 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #14063: <==closure== 14543 (pos)
                    (Pd_survivorat_s_p6)

                    ; #14543: origin
                    (Bd_survivorat_s_p6)

                    ; #25682: <==closure== 80551 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45394: origin
                    (Bc_survivorat_s_p6)

                    ; #59634: origin
                    (Bb_survivorat_s_p6)

                    ; #77989: <==closure== 45394 (pos)
                    (Pc_survivorat_s_p6)

                    ; #80171: <==closure== 59634 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80551: origin
                    (Ba_survivorat_s_p6)

                    ; #17250: <==negation-removal== 80551 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24789: <==negation-removal== 14543 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #30308: <==negation-removal== 25682 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46870: <==negation-removal== 45394 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #68377: <==negation-removal== 80171 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78695: <==negation-removal== 77989 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #79822: <==negation-removal== 59634 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #84875: <==negation-removal== 14063 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (at_d_p6)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #14063: <==closure== 14543 (pos)
                    (Pd_survivorat_s_p6)

                    ; #14543: origin
                    (Bd_survivorat_s_p6)

                    ; #25682: <==closure== 80551 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45394: origin
                    (Bc_survivorat_s_p6)

                    ; #59634: origin
                    (Bb_survivorat_s_p6)

                    ; #77989: <==closure== 45394 (pos)
                    (Pc_survivorat_s_p6)

                    ; #80171: <==closure== 59634 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80551: origin
                    (Ba_survivorat_s_p6)

                    ; #17250: <==negation-removal== 80551 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #24789: <==negation-removal== 14543 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #30308: <==negation-removal== 25682 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #46870: <==negation-removal== 45394 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #68377: <==negation-removal== 80171 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #78695: <==negation-removal== 77989 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #79822: <==negation-removal== 59634 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #84875: <==negation-removal== 14063 (pos)
                    (not (Bd_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #20412: <==closure== 66128 (pos)
                    (Pd_survivorat_s_p7)

                    ; #20458: <==closure== 35476 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35476: origin
                    (Bc_survivorat_s_p7)

                    ; #66128: origin
                    (Bd_survivorat_s_p7)

                    ; #72195: origin
                    (Bb_survivorat_s_p7)

                    ; #81911: <==closure== 90620 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86377: <==closure== 72195 (pos)
                    (Pb_survivorat_s_p7)

                    ; #90620: origin
                    (Ba_survivorat_s_p7)

                    ; #26057: <==negation-removal== 90620 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27657: <==negation-removal== 66128 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32000: <==negation-removal== 86377 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36066: <==negation-removal== 20458 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65642: <==negation-removal== 72195 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #72318: <==negation-removal== 35476 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #79250: <==negation-removal== 81911 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80634: <==negation-removal== 20412 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20412: <==closure== 66128 (pos)
                    (Pd_survivorat_s_p7)

                    ; #20458: <==closure== 35476 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35476: origin
                    (Bc_survivorat_s_p7)

                    ; #66128: origin
                    (Bd_survivorat_s_p7)

                    ; #72195: origin
                    (Bb_survivorat_s_p7)

                    ; #81911: <==closure== 90620 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86377: <==closure== 72195 (pos)
                    (Pb_survivorat_s_p7)

                    ; #90620: origin
                    (Ba_survivorat_s_p7)

                    ; #26057: <==negation-removal== 90620 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27657: <==negation-removal== 66128 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32000: <==negation-removal== 86377 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36066: <==negation-removal== 20458 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65642: <==negation-removal== 72195 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #72318: <==negation-removal== 35476 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #79250: <==negation-removal== 81911 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80634: <==negation-removal== 20412 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #20412: <==closure== 66128 (pos)
                    (Pd_survivorat_s_p7)

                    ; #20458: <==closure== 35476 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35476: origin
                    (Bc_survivorat_s_p7)

                    ; #66128: origin
                    (Bd_survivorat_s_p7)

                    ; #72195: origin
                    (Bb_survivorat_s_p7)

                    ; #81911: <==closure== 90620 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86377: <==closure== 72195 (pos)
                    (Pb_survivorat_s_p7)

                    ; #90620: origin
                    (Ba_survivorat_s_p7)

                    ; #26057: <==negation-removal== 90620 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27657: <==negation-removal== 66128 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32000: <==negation-removal== 86377 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36066: <==negation-removal== 20458 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65642: <==negation-removal== 72195 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #72318: <==negation-removal== 35476 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #79250: <==negation-removal== 81911 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80634: <==negation-removal== 20412 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #20412: <==closure== 66128 (pos)
                    (Pd_survivorat_s_p7)

                    ; #20458: <==closure== 35476 (pos)
                    (Pc_survivorat_s_p7)

                    ; #35476: origin
                    (Bc_survivorat_s_p7)

                    ; #66128: origin
                    (Bd_survivorat_s_p7)

                    ; #72195: origin
                    (Bb_survivorat_s_p7)

                    ; #81911: <==closure== 90620 (pos)
                    (Pa_survivorat_s_p7)

                    ; #86377: <==closure== 72195 (pos)
                    (Pb_survivorat_s_p7)

                    ; #90620: origin
                    (Ba_survivorat_s_p7)

                    ; #26057: <==negation-removal== 90620 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #27657: <==negation-removal== 66128 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #32000: <==negation-removal== 86377 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36066: <==negation-removal== 20458 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65642: <==negation-removal== 72195 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #72318: <==negation-removal== 35476 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #79250: <==negation-removal== 81911 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #80634: <==negation-removal== 20412 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #27002: origin
                    (Ba_survivorat_s_p8)

                    ; #28224: origin
                    (Bc_survivorat_s_p8)

                    ; #48543: <==closure== 87613 (pos)
                    (Pd_survivorat_s_p8)

                    ; #53790: <==closure== 55526 (pos)
                    (Pb_survivorat_s_p8)

                    ; #55526: origin
                    (Bb_survivorat_s_p8)

                    ; #71887: <==closure== 27002 (pos)
                    (Pa_survivorat_s_p8)

                    ; #79643: <==closure== 28224 (pos)
                    (Pc_survivorat_s_p8)

                    ; #87613: origin
                    (Bd_survivorat_s_p8)

                    ; #20808: <==negation-removal== 27002 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #28253: <==negation-removal== 48543 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40601: <==negation-removal== 87613 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #42692: <==negation-removal== 28224 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #49002: <==negation-removal== 53790 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77152: <==negation-removal== 71887 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84879: <==negation-removal== 55526 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86191: <==negation-removal== 79643 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #27002: origin
                    (Ba_survivorat_s_p8)

                    ; #28224: origin
                    (Bc_survivorat_s_p8)

                    ; #48543: <==closure== 87613 (pos)
                    (Pd_survivorat_s_p8)

                    ; #53790: <==closure== 55526 (pos)
                    (Pb_survivorat_s_p8)

                    ; #55526: origin
                    (Bb_survivorat_s_p8)

                    ; #71887: <==closure== 27002 (pos)
                    (Pa_survivorat_s_p8)

                    ; #79643: <==closure== 28224 (pos)
                    (Pc_survivorat_s_p8)

                    ; #87613: origin
                    (Bd_survivorat_s_p8)

                    ; #20808: <==negation-removal== 27002 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #28253: <==negation-removal== 48543 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40601: <==negation-removal== 87613 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #42692: <==negation-removal== 28224 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #49002: <==negation-removal== 53790 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77152: <==negation-removal== 71887 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84879: <==negation-removal== 55526 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86191: <==negation-removal== 79643 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #27002: origin
                    (Ba_survivorat_s_p8)

                    ; #28224: origin
                    (Bc_survivorat_s_p8)

                    ; #48543: <==closure== 87613 (pos)
                    (Pd_survivorat_s_p8)

                    ; #53790: <==closure== 55526 (pos)
                    (Pb_survivorat_s_p8)

                    ; #55526: origin
                    (Bb_survivorat_s_p8)

                    ; #71887: <==closure== 27002 (pos)
                    (Pa_survivorat_s_p8)

                    ; #79643: <==closure== 28224 (pos)
                    (Pc_survivorat_s_p8)

                    ; #87613: origin
                    (Bd_survivorat_s_p8)

                    ; #20808: <==negation-removal== 27002 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #28253: <==negation-removal== 48543 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40601: <==negation-removal== 87613 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #42692: <==negation-removal== 28224 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #49002: <==negation-removal== 53790 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77152: <==negation-removal== 71887 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84879: <==negation-removal== 55526 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86191: <==negation-removal== 79643 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8))
        :effect (and
                    ; #27002: origin
                    (Ba_survivorat_s_p8)

                    ; #28224: origin
                    (Bc_survivorat_s_p8)

                    ; #48543: <==closure== 87613 (pos)
                    (Pd_survivorat_s_p8)

                    ; #53790: <==closure== 55526 (pos)
                    (Pb_survivorat_s_p8)

                    ; #55526: origin
                    (Bb_survivorat_s_p8)

                    ; #71887: <==closure== 27002 (pos)
                    (Pa_survivorat_s_p8)

                    ; #79643: <==closure== 28224 (pos)
                    (Pc_survivorat_s_p8)

                    ; #87613: origin
                    (Bd_survivorat_s_p8)

                    ; #20808: <==negation-removal== 27002 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #28253: <==negation-removal== 48543 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #40601: <==negation-removal== 87613 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #42692: <==negation-removal== 28224 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #49002: <==negation-removal== 53790 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77152: <==negation-removal== 71887 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #84879: <==negation-removal== 55526 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #86191: <==negation-removal== 79643 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #16403: origin
                    (Bb_survivorat_s_p9)

                    ; #17730: origin
                    (Bc_survivorat_s_p9)

                    ; #27315: origin
                    (Ba_survivorat_s_p9)

                    ; #53736: origin
                    (Bd_survivorat_s_p9)

                    ; #67488: <==closure== 17730 (pos)
                    (Pc_survivorat_s_p9)

                    ; #71384: <==closure== 27315 (pos)
                    (Pa_survivorat_s_p9)

                    ; #89895: <==closure== 53736 (pos)
                    (Pd_survivorat_s_p9)

                    ; #90731: <==closure== 16403 (pos)
                    (Pb_survivorat_s_p9)

                    ; #27618: <==negation-removal== 16403 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #27983: <==negation-removal== 71384 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #29421: <==negation-removal== 27315 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36806: <==negation-removal== 53736 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52026: <==negation-removal== 67488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63742: <==negation-removal== 90731 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77037: <==negation-removal== 89895 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #80582: <==negation-removal== 17730 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #16403: origin
                    (Bb_survivorat_s_p9)

                    ; #17730: origin
                    (Bc_survivorat_s_p9)

                    ; #27315: origin
                    (Ba_survivorat_s_p9)

                    ; #53736: origin
                    (Bd_survivorat_s_p9)

                    ; #67488: <==closure== 17730 (pos)
                    (Pc_survivorat_s_p9)

                    ; #71384: <==closure== 27315 (pos)
                    (Pa_survivorat_s_p9)

                    ; #89895: <==closure== 53736 (pos)
                    (Pd_survivorat_s_p9)

                    ; #90731: <==closure== 16403 (pos)
                    (Pb_survivorat_s_p9)

                    ; #27618: <==negation-removal== 16403 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #27983: <==negation-removal== 71384 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #29421: <==negation-removal== 27315 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36806: <==negation-removal== 53736 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52026: <==negation-removal== 67488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63742: <==negation-removal== 90731 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77037: <==negation-removal== 89895 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #80582: <==negation-removal== 17730 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #16403: origin
                    (Bb_survivorat_s_p9)

                    ; #17730: origin
                    (Bc_survivorat_s_p9)

                    ; #27315: origin
                    (Ba_survivorat_s_p9)

                    ; #53736: origin
                    (Bd_survivorat_s_p9)

                    ; #67488: <==closure== 17730 (pos)
                    (Pc_survivorat_s_p9)

                    ; #71384: <==closure== 27315 (pos)
                    (Pa_survivorat_s_p9)

                    ; #89895: <==closure== 53736 (pos)
                    (Pd_survivorat_s_p9)

                    ; #90731: <==closure== 16403 (pos)
                    (Pb_survivorat_s_p9)

                    ; #27618: <==negation-removal== 16403 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #27983: <==negation-removal== 71384 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #29421: <==negation-removal== 27315 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36806: <==negation-removal== 53736 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52026: <==negation-removal== 67488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63742: <==negation-removal== 90731 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77037: <==negation-removal== 89895 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #80582: <==negation-removal== 17730 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #16403: origin
                    (Bb_survivorat_s_p9)

                    ; #17730: origin
                    (Bc_survivorat_s_p9)

                    ; #27315: origin
                    (Ba_survivorat_s_p9)

                    ; #53736: origin
                    (Bd_survivorat_s_p9)

                    ; #67488: <==closure== 17730 (pos)
                    (Pc_survivorat_s_p9)

                    ; #71384: <==closure== 27315 (pos)
                    (Pa_survivorat_s_p9)

                    ; #89895: <==closure== 53736 (pos)
                    (Pd_survivorat_s_p9)

                    ; #90731: <==closure== 16403 (pos)
                    (Pb_survivorat_s_p9)

                    ; #27618: <==negation-removal== 16403 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #27983: <==negation-removal== 71384 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #29421: <==negation-removal== 27315 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #36806: <==negation-removal== 53736 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52026: <==negation-removal== 67488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63742: <==negation-removal== 90731 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #77037: <==negation-removal== 89895 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #80582: <==negation-removal== 17730 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #83630: origin
                    (not_at_a_p10)

                    ; #84006: origin
                    (at_a_p2)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #81361: origin
                    (at_a_p3)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #83509: origin
                    (at_a_p4)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #83630: origin
                    (not_at_a_p10)

                    ; #24841: <==negation-removal== 83630 (pos)
                    (not (at_a_p10))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #76630: origin
                    (not_at_a_p11)

                    ; #84006: origin
                    (at_a_p2)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #76630: origin
                    (not_at_a_p11)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #76630: origin
                    (not_at_a_p11)

                    ; #83509: origin
                    (at_a_p4)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #76630: origin
                    (not_at_a_p11)

                    ; #23591: <==negation-removal== 76630 (pos)
                    (not (at_a_p11))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #84006: origin
                    (at_a_p2)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #81361: origin
                    (at_a_p3)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #83509: origin
                    (at_a_p4)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #86601: origin
                    (not_at_a_p12)

                    ; #41391: <==negation-removal== 86601 (pos)
                    (not (at_a_p12))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #84006: origin
                    (at_a_p2)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #81361: origin
                    (at_a_p3)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #83509: origin
                    (at_a_p4)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #91705: origin
                    (not_at_a_p1)

                    ; #46826: <==negation-removal== 91705 (pos)
                    (not (at_a_p1))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #79397: origin
                    (not_at_a_p2)

                    ; #84006: origin
                    (at_a_p2)

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #79397: origin
                    (not_at_a_p2)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #79397: origin
                    (not_at_a_p2)

                    ; #83509: origin
                    (at_a_p4)

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #79397: origin
                    (not_at_a_p2)

                    ; #84006: <==negation-removal== 79397 (pos)
                    (not (at_a_p2))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #46826: origin
                    (at_a_p1)

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #24841: origin
                    (at_a_p10)

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #23591: origin
                    (at_a_p11)

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #41391: origin
                    (at_a_p12)

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #84006: origin
                    (at_a_p2)

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #83509: origin
                    (at_a_p4)

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #22759: origin
                    (not_at_a_p3)

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #76405: origin
                    (at_a_p6)

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #46467: origin
                    (at_a_p7)

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #22759: origin
                    (not_at_a_p3)

                    ; #34156: origin
                    (at_a_p8)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #22759: origin
                    (not_at_a_p3)

                    ; #81361: <==negation-removal== 22759 (pos)
                    (not (at_a_p3))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #67729: origin
                    (not_at_a_p4)

                    ; #84006: origin
                    (at_a_p2)

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #67729: origin
                    (not_at_a_p4)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #67729: origin
                    (not_at_a_p4)

                    ; #83509: origin
                    (at_a_p4)

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #67729: origin
                    (not_at_a_p4)

                    ; #76405: origin
                    (at_a_p6)

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #67729: origin
                    (not_at_a_p4)

                    ; #83509: <==negation-removal== 67729 (pos)
                    (not (at_a_p4))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #51014: origin
                    (not_at_a_p5)

                    ; #84006: origin
                    (at_a_p2)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #51014: origin
                    (not_at_a_p5)

                    ; #81361: origin
                    (at_a_p3)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #51014: origin
                    (not_at_a_p5)

                    ; #83509: origin
                    (at_a_p4)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #51014: origin
                    (not_at_a_p5)

                    ; #76405: origin
                    (at_a_p6)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #51014: origin
                    (not_at_a_p5)

                    ; #10843: <==negation-removal== 51014 (pos)
                    (not (at_a_p5))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #77964: origin
                    (not_at_a_p6)

                    ; #84006: origin
                    (at_a_p2)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #77964: origin
                    (not_at_a_p6)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #77964: origin
                    (not_at_a_p6)

                    ; #83509: origin
                    (at_a_p4)

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #77964: origin
                    (not_at_a_p6)

                    ; #76405: <==negation-removal== 77964 (pos)
                    (not (at_a_p6))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #72647: origin
                    (not_at_a_p7)

                    ; #84006: origin
                    (at_a_p2)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #72647: origin
                    (not_at_a_p7)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #72647: origin
                    (not_at_a_p7)

                    ; #83509: origin
                    (at_a_p4)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #72647: origin
                    (not_at_a_p7)

                    ; #76405: origin
                    (at_a_p6)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #72647: origin
                    (not_at_a_p7)

                    ; #46467: <==negation-removal== 72647 (pos)
                    (not (at_a_p7))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #46826: origin
                    (at_a_p1)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #28219: origin
                    (not_at_a_p8)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #28219: origin
                    (not_at_a_p8)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #41391: origin
                    (at_a_p12)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #84006: origin
                    (at_a_p2)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #81361: origin
                    (at_a_p3)

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #83509: origin
                    (at_a_p4)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #28219: origin
                    (not_at_a_p8)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #76405: origin
                    (at_a_p6)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #46467: origin
                    (at_a_p7)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #28219: origin
                    (not_at_a_p8)

                    ; #34156: origin
                    (at_a_p8)

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #28219: origin
                    (not_at_a_p8)

                    ; #34156: <==negation-removal== 28219 (pos)
                    (not (at_a_p8))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #46826: origin
                    (at_a_p1)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #91705: <==negation-removal== 46826 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #24841: origin
                    (at_a_p10)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #83630: <==negation-removal== 24841 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #23591: origin
                    (at_a_p11)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #76630: <==negation-removal== 23591 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #41391: origin
                    (at_a_p12)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #86601: <==negation-removal== 41391 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #84006: origin
                    (at_a_p2)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #79397: <==negation-removal== 84006 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #81361: origin
                    (at_a_p3)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #22759: <==negation-removal== 81361 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #83509: origin
                    (at_a_p4)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #67729: <==negation-removal== 83509 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #10843: origin
                    (at_a_p5)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #51014: <==negation-removal== 10843 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #76405: origin
                    (at_a_p6)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #77964: <==negation-removal== 76405 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #46467: origin
                    (at_a_p7)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #72647: <==negation-removal== 46467 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #34156: origin
                    (at_a_p8)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #28219: <==negation-removal== 34156 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #16063: origin
                    (at_a_p9)

                    ; #84710: origin
                    (not_at_a_p9)

                    ; #16063: <==negation-removal== 84710 (pos)
                    (not (at_a_p9))

                    ; #84710: <==negation-removal== 16063 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #29536: origin
                    (at_b_p1)

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #53893: origin
                    (at_b_p11)

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #44993: origin
                    (at_b_p2)

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #51941: origin
                    (at_b_p3)

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #32574: origin
                    (at_b_p4)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #44850: origin
                    (at_b_p5)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #84910: origin
                    (at_b_p6)

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #24162: origin
                    (not_at_b_p10)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #24162: origin
                    (not_at_b_p10)

                    ; #66278: <==negation-removal== 24162 (pos)
                    (not (at_b_p10))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #66278: origin
                    (at_b_p10)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #71412: origin
                    (not_at_b_p11)

                    ; #84910: origin
                    (at_b_p6)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #71087: origin
                    (at_b_p7)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #71412: origin
                    (not_at_b_p11)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #71412: origin
                    (not_at_b_p11)

                    ; #53893: <==negation-removal== 71412 (pos)
                    (not (at_b_p11))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #29536: origin
                    (at_b_p1)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #53893: origin
                    (at_b_p11)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #44993: origin
                    (at_b_p2)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #51941: origin
                    (at_b_p3)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #32574: origin
                    (at_b_p4)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #44850: origin
                    (at_b_p5)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #84910: origin
                    (at_b_p6)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #20200: origin
                    (not_at_b_p12)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #20200: origin
                    (not_at_b_p12)

                    ; #43103: <==negation-removal== 20200 (pos)
                    (not (at_b_p12))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #61734: origin
                    (not_at_b_p1)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #61734: origin
                    (not_at_b_p1)

                    ; #84910: origin
                    (at_b_p6)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #61734: origin
                    (not_at_b_p1)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #61734: origin
                    (not_at_b_p1)

                    ; #72101: origin
                    (at_b_p8)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #61734: origin
                    (not_at_b_p1)

                    ; #29536: <==negation-removal== 61734 (pos)
                    (not (at_b_p1))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #57473: origin
                    (not_at_b_p2)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #57473: origin
                    (not_at_b_p2)

                    ; #84910: origin
                    (at_b_p6)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #57473: origin
                    (not_at_b_p2)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #57473: origin
                    (not_at_b_p2)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #57473: origin
                    (not_at_b_p2)

                    ; #44993: <==negation-removal== 57473 (pos)
                    (not (at_b_p2))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #66278: origin
                    (at_b_p10)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #79200: origin
                    (not_at_b_p3)

                    ; #84910: origin
                    (at_b_p6)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #71087: origin
                    (at_b_p7)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #72101: origin
                    (at_b_p8)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #79200: origin
                    (not_at_b_p3)

                    ; #51941: <==negation-removal== 79200 (pos)
                    (not (at_b_p3))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #34122: origin
                    (not_at_b_p4)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #53893: origin
                    (at_b_p11)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #44993: origin
                    (at_b_p2)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #51941: origin
                    (at_b_p3)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #34122: origin
                    (not_at_b_p4)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #44850: origin
                    (at_b_p5)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #84910: origin
                    (at_b_p6)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #34122: origin
                    (not_at_b_p4)

                    ; #72101: origin
                    (at_b_p8)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #34122: origin
                    (not_at_b_p4)

                    ; #32574: <==negation-removal== 34122 (pos)
                    (not (at_b_p4))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #35864: origin
                    (not_at_b_p5)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #53893: origin
                    (at_b_p11)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #44993: origin
                    (at_b_p2)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #51941: origin
                    (at_b_p3)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #35864: origin
                    (not_at_b_p5)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #44850: origin
                    (at_b_p5)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #84910: origin
                    (at_b_p6)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #35864: origin
                    (not_at_b_p5)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #35864: origin
                    (not_at_b_p5)

                    ; #44850: <==negation-removal== 35864 (pos)
                    (not (at_b_p5))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p6)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p6)

                    ; #84910: origin
                    (at_b_p6)

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p6)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #57132: origin
                    (not_at_b_p6)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #57132: origin
                    (not_at_b_p6)

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))

                    ; #84910: <==negation-removal== 57132 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #29536: origin
                    (at_b_p1)

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #53893: origin
                    (at_b_p11)

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #44993: origin
                    (at_b_p2)

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #51941: origin
                    (at_b_p3)

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #32574: origin
                    (at_b_p4)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #44850: origin
                    (at_b_p5)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #84910: origin
                    (at_b_p6)

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12692: origin
                    (not_at_b_p7)

                    ; #15018: origin
                    (at_b_p9)

                    ; #71087: <==negation-removal== 12692 (pos)
                    (not (at_b_p7))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #39567: origin
                    (not_at_b_p8)

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #66278: origin
                    (at_b_p10)

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #53893: origin
                    (at_b_p11)

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #43103: origin
                    (at_b_p12)

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #44993: origin
                    (at_b_p2)

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #51941: origin
                    (at_b_p3)

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #39567: origin
                    (not_at_b_p8)

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #44850: origin
                    (at_b_p5)

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #84910: origin
                    (at_b_p6)

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #71087: origin
                    (at_b_p7)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #39567: origin
                    (not_at_b_p8)

                    ; #72101: origin
                    (at_b_p8)

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #39567: origin
                    (not_at_b_p8)

                    ; #72101: <==negation-removal== 39567 (pos)
                    (not (at_b_p8))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #29536: origin
                    (at_b_p1)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #61734: <==negation-removal== 29536 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #66278: origin
                    (at_b_p10)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #24162: <==negation-removal== 66278 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #53893: origin
                    (at_b_p11)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #71412: <==negation-removal== 53893 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #43103: origin
                    (at_b_p12)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #20200: <==negation-removal== 43103 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #44993: origin
                    (at_b_p2)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #57473: <==negation-removal== 44993 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #51941: origin
                    (at_b_p3)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #79200: <==negation-removal== 51941 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #32574: origin
                    (at_b_p4)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #34122: <==negation-removal== 32574 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #44850: origin
                    (at_b_p5)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #35864: <==negation-removal== 44850 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #77727: origin
                    (not_at_b_p9)

                    ; #84910: origin
                    (at_b_p6)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #57132: <==negation-removal== 84910 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #71087: origin
                    (at_b_p7)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #12692: <==negation-removal== 71087 (pos)
                    (not (not_at_b_p7))

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #72101: origin
                    (at_b_p8)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #39567: <==negation-removal== 72101 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #15018: origin
                    (at_b_p9)

                    ; #77727: origin
                    (not_at_b_p9)

                    ; #15018: <==negation-removal== 77727 (pos)
                    (not (at_b_p9))

                    ; #77727: <==negation-removal== 15018 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #85987: origin
                    (at_c_p1)

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #76308: origin
                    (at_c_p10)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #89194: origin
                    (at_c_p11)

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #73515: origin
                    (at_c_p4)

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #59643: origin
                    (at_c_p5)

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #58231: origin
                    (not_at_c_p10)

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #58231: origin
                    (not_at_c_p10)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #76308: <==negation-removal== 58231 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #80023: origin
                    (not_at_c_p11)

                    ; #85987: origin
                    (at_c_p1)

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #76308: origin
                    (at_c_p10)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #80023: origin
                    (not_at_c_p11)

                    ; #89194: origin
                    (at_c_p11)

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #73515: origin
                    (at_c_p4)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #80023: origin
                    (not_at_c_p11)

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #80023: origin
                    (not_at_c_p11)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #89194: <==negation-removal== 80023 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #85987: origin
                    (at_c_p1)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #76308: origin
                    (at_c_p10)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #89194: origin
                    (at_c_p11)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #45574: origin
                    (at_c_p12)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #26901: origin
                    (at_c_p2)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #32908: origin
                    (at_c_p3)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #73515: origin
                    (at_c_p4)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #59643: origin
                    (at_c_p5)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #24454: origin
                    (at_c_p6)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #39453: origin
                    (at_c_p7)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #41773: origin
                    (at_c_p8)

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #16615: origin
                    (not_at_c_p12)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #45574: <==negation-removal== 16615 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #76098: origin
                    (not_at_c_p1)

                    ; #85987: origin
                    (at_c_p1)

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #76098: origin
                    (not_at_c_p1)

                    ; #76308: origin
                    (at_c_p10)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #76098: origin
                    (not_at_c_p1)

                    ; #89194: origin
                    (at_c_p11)

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #73515: origin
                    (at_c_p4)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #76098: origin
                    (not_at_c_p1)

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #76098: origin
                    (not_at_c_p1)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #85987: <==negation-removal== 76098 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #61183: origin
                    (not_at_c_p2)

                    ; #85987: origin
                    (at_c_p1)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #61183: origin
                    (not_at_c_p2)

                    ; #76308: origin
                    (at_c_p10)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #61183: origin
                    (not_at_c_p2)

                    ; #89194: origin
                    (at_c_p11)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #61183: origin
                    (not_at_c_p2)

                    ; #73515: origin
                    (at_c_p4)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #61183: origin
                    (not_at_c_p2)

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #61183: origin
                    (not_at_c_p2)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #26901: <==negation-removal== 61183 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #85987: origin
                    (at_c_p1)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #76308: origin
                    (at_c_p10)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #89194: origin
                    (at_c_p11)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #45574: origin
                    (at_c_p12)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #26901: origin
                    (at_c_p2)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #32908: origin
                    (at_c_p3)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #73515: origin
                    (at_c_p4)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #59643: origin
                    (at_c_p5)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #24454: origin
                    (at_c_p6)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #39453: origin
                    (at_c_p7)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #41773: origin
                    (at_c_p8)

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #23788: origin
                    (not_at_c_p3)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #32908: <==negation-removal== 23788 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #82160: origin
                    (not_at_c_p4)

                    ; #85987: origin
                    (at_c_p1)

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #76308: origin
                    (at_c_p10)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #82160: origin
                    (not_at_c_p4)

                    ; #89194: origin
                    (at_c_p11)

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #73515: origin
                    (at_c_p4)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #82160: origin
                    (not_at_c_p4)

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #82160: origin
                    (not_at_c_p4)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #73515: <==negation-removal== 82160 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #62069: origin
                    (not_at_c_p5)

                    ; #85987: origin
                    (at_c_p1)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #62069: origin
                    (not_at_c_p5)

                    ; #76308: origin
                    (at_c_p10)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #62069: origin
                    (not_at_c_p5)

                    ; #89194: origin
                    (at_c_p11)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #62069: origin
                    (not_at_c_p5)

                    ; #73515: origin
                    (at_c_p4)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #62069: origin
                    (not_at_c_p5)

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #62069: origin
                    (not_at_c_p5)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #59643: <==negation-removal== 62069 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #77010: origin
                    (not_at_c_p6)

                    ; #85987: origin
                    (at_c_p1)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #76308: origin
                    (at_c_p10)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #77010: origin
                    (not_at_c_p6)

                    ; #89194: origin
                    (at_c_p11)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #73515: origin
                    (at_c_p4)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #77010: origin
                    (not_at_c_p6)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #77010: origin
                    (not_at_c_p6)

                    ; #98961: origin
                    (at_c_p9)

                    ; #24454: <==negation-removal== 77010 (pos)
                    (not (at_c_p6))

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #85987: origin
                    (at_c_p1)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #76308: origin
                    (at_c_p10)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #89194: origin
                    (at_c_p11)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #45574: origin
                    (at_c_p12)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #26901: origin
                    (at_c_p2)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #32908: origin
                    (at_c_p3)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #73515: origin
                    (at_c_p4)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #59643: origin
                    (at_c_p5)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #24454: origin
                    (at_c_p6)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #39453: origin
                    (at_c_p7)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #41773: origin
                    (at_c_p8)

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #23537: origin
                    (not_at_c_p7)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #39453: <==negation-removal== 23537 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #77001: origin
                    (not_at_c_p8)

                    ; #85987: origin
                    (at_c_p1)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #76308: origin
                    (at_c_p10)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #77001: origin
                    (not_at_c_p8)

                    ; #89194: origin
                    (at_c_p11)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #45574: origin
                    (at_c_p12)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #26901: origin
                    (at_c_p2)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #32908: origin
                    (at_c_p3)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #73515: origin
                    (at_c_p4)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #59643: origin
                    (at_c_p5)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #39453: origin
                    (at_c_p7)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #41773: origin
                    (at_c_p8)

                    ; #77001: origin
                    (not_at_c_p8)

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #77001: origin
                    (not_at_c_p8)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #41773: <==negation-removal== 77001 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #85987: origin
                    (at_c_p1)

                    ; #76098: <==negation-removal== 85987 (pos)
                    (not (not_at_c_p1))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #76308: origin
                    (at_c_p10)

                    ; #58231: <==negation-removal== 76308 (pos)
                    (not (not_at_c_p10))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #89194: origin
                    (at_c_p11)

                    ; #80023: <==negation-removal== 89194 (pos)
                    (not (not_at_c_p11))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #45574: origin
                    (at_c_p12)

                    ; #16615: <==negation-removal== 45574 (pos)
                    (not (not_at_c_p12))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #26901: origin
                    (at_c_p2)

                    ; #61183: <==negation-removal== 26901 (pos)
                    (not (not_at_c_p2))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #32908: origin
                    (at_c_p3)

                    ; #23788: <==negation-removal== 32908 (pos)
                    (not (not_at_c_p3))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #73515: origin
                    (at_c_p4)

                    ; #82160: <==negation-removal== 73515 (pos)
                    (not (not_at_c_p4))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #59643: origin
                    (at_c_p5)

                    ; #62069: <==negation-removal== 59643 (pos)
                    (not (not_at_c_p5))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #24454: origin
                    (at_c_p6)

                    ; #25395: origin
                    (not_at_c_p9)

                    ; #77010: <==negation-removal== 24454 (pos)
                    (not (not_at_c_p6))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #39453: origin
                    (at_c_p7)

                    ; #23537: <==negation-removal== 39453 (pos)
                    (not (not_at_c_p7))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #41773: origin
                    (at_c_p8)

                    ; #77001: <==negation-removal== 41773 (pos)
                    (not (not_at_c_p8))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #25395: origin
                    (not_at_c_p9)

                    ; #98961: origin
                    (at_c_p9)

                    ; #25395: <==negation-removal== 98961 (pos)
                    (not (not_at_c_p9))

                    ; #98961: <==negation-removal== 25395 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #77321: origin
                    (at_d_p1)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #84838: origin
                    (at_d_p2)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #58673: origin
                    (at_d_p4)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #61652: origin
                    (at_d_p6)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #74541: origin
                    (at_d_p8)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #81842: origin
                    (at_d_p9)

                    ; #90324: origin
                    (not_at_d_p10)

                    ; #45073: <==negation-removal== 90324 (pos)
                    (not (at_d_p10))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #75776: origin
                    (not_at_d_p11)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #75776: origin
                    (not_at_d_p11)

                    ; #84838: origin
                    (at_d_p2)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (at_d_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #58673: origin
                    (at_d_p4)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #61652: origin
                    (at_d_p6)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #74541: origin
                    (at_d_p8)

                    ; #75776: origin
                    (not_at_d_p11)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #75776: origin
                    (not_at_d_p11)

                    ; #81842: origin
                    (at_d_p9)

                    ; #14584: <==negation-removal== 75776 (pos)
                    (not (at_d_p11))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #45073: origin
                    (at_d_p10)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_d_p12))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #19468: origin
                    (not_at_d_p12)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #19468: origin
                    (not_at_d_p12)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #84838: origin
                    (at_d_p2)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #30918: origin
                    (at_d_p3)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #58673: origin
                    (at_d_p4)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #22260: origin
                    (at_d_p5)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #61652: origin
                    (at_d_p6)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #45738: origin
                    (at_d_p7)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #74541: origin
                    (at_d_p8)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12))
        :effect (and
                    ; #19468: origin
                    (not_at_d_p12)

                    ; #81842: origin
                    (at_d_p9)

                    ; #18009: <==negation-removal== 19468 (pos)
                    (not (at_d_p12))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #45073: origin
                    (at_d_p10)

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #14584: origin
                    (at_d_p11)

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #18009: origin
                    (at_d_p12)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #84838: origin
                    (at_d_p2)

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #30918: origin
                    (at_d_p3)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #58673: origin
                    (at_d_p4)

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #22260: origin
                    (at_d_p5)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #61652: origin
                    (at_d_p6)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #45738: origin
                    (at_d_p7)

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #12398: origin
                    (not_at_d_p1)

                    ; #81842: origin
                    (at_d_p9)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #77321: <==negation-removal== 12398 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2))
        :effect (and
                    ; #77321: origin
                    (at_d_p1)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_d_p2))
        :effect (and
                    ; #84838: origin
                    (at_d_p2)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #58673: origin
                    (at_d_p4)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #61652: origin
                    (at_d_p6)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #74541: origin
                    (at_d_p8)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2))
        :effect (and
                    ; #81842: origin
                    (at_d_p9)

                    ; #87070: origin
                    (not_at_d_p2)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #84838: <==negation-removal== 87070 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #45073: origin
                    (at_d_p10)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #14584: origin
                    (at_d_p11)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #18009: origin
                    (at_d_p12)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #84838: origin
                    (at_d_p2)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #30918: origin
                    (at_d_p3)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #58673: origin
                    (at_d_p4)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #22260: origin
                    (at_d_p5)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #61652: origin
                    (at_d_p6)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #45738: origin
                    (at_d_p7)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #12394: origin
                    (not_at_d_p3)

                    ; #81842: origin
                    (at_d_p9)

                    ; #30918: <==negation-removal== 12394 (pos)
                    (not (at_d_p3))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4))
        :effect (and
                    ; #62723: origin
                    (not_at_d_p4)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_d_p4))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_d_p4))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #62723: origin
                    (not_at_d_p4)

                    ; #84838: origin
                    (at_d_p2)

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #58673: origin
                    (at_d_p4)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #61652: origin
                    (at_d_p6)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #62723: origin
                    (not_at_d_p4)

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4))
        :effect (and
                    ; #62723: origin
                    (not_at_d_p4)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #62723: origin
                    (not_at_d_p4)

                    ; #81842: origin
                    (at_d_p9)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #58673: <==negation-removal== 62723 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #45073: origin
                    (at_d_p10)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #31528: origin
                    (not_at_d_p5)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #31528: origin
                    (not_at_d_p5)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #84838: origin
                    (at_d_p2)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #31528: origin
                    (not_at_d_p5)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #58673: origin
                    (at_d_p4)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #31528: origin
                    (not_at_d_p5)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #61652: origin
                    (at_d_p6)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #45738: origin
                    (at_d_p7)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #31528: origin
                    (not_at_d_p5)

                    ; #81842: origin
                    (at_d_p9)

                    ; #22260: <==negation-removal== 31528 (pos)
                    (not (at_d_p5))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #84838: origin
                    (at_d_p2)

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #58673: origin
                    (at_d_p4)

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #61652: origin
                    (at_d_p6)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #55693: origin
                    (not_at_d_p6)

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #55693: origin
                    (not_at_d_p6)

                    ; #81842: origin
                    (at_d_p9)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #61652: <==negation-removal== 55693 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #60848: origin
                    (not_at_d_p7)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #60848: origin
                    (not_at_d_p7)

                    ; #84838: origin
                    (at_d_p2)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #58673: origin
                    (at_d_p4)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #60848: origin
                    (not_at_d_p7)

                    ; #61652: origin
                    (at_d_p6)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #60848: origin
                    (not_at_d_p7)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #60848: origin
                    (not_at_d_p7)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #60848: origin
                    (not_at_d_p7)

                    ; #81842: origin
                    (at_d_p9)

                    ; #45738: <==negation-removal== 60848 (pos)
                    (not (at_d_p7))

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #45073: origin
                    (at_d_p10)

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #19637: origin
                    (not_at_d_p8)

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #19637: origin
                    (not_at_d_p8)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #84838: origin
                    (at_d_p2)

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #30918: origin
                    (at_d_p3)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #58673: origin
                    (at_d_p4)

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #22260: origin
                    (at_d_p5)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #61652: origin
                    (at_d_p6)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #45738: origin
                    (at_d_p7)

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #19637: origin
                    (not_at_d_p8)

                    ; #81842: origin
                    (at_d_p9)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #74541: <==negation-removal== 19637 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #77321: origin
                    (at_d_p1)

                    ; #12398: <==negation-removal== 77321 (pos)
                    (not (not_at_d_p1))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #45073: origin
                    (at_d_p10)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))

                    ; #90324: <==negation-removal== 45073 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #14584: origin
                    (at_d_p11)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #75776: <==negation-removal== 14584 (pos)
                    (not (not_at_d_p11))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9))
        :effect (and
                    ; #18009: origin
                    (at_d_p12)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #19468: <==negation-removal== 18009 (pos)
                    (not (not_at_d_p12))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #84838: origin
                    (at_d_p2)

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))

                    ; #87070: <==negation-removal== 84838 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #30918: origin
                    (at_d_p3)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #12394: <==negation-removal== 30918 (pos)
                    (not (not_at_d_p3))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #58673: origin
                    (at_d_p4)

                    ; #62723: <==negation-removal== 58673 (pos)
                    (not (not_at_d_p4))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_d_p9))
        :effect (and
                    ; #22260: origin
                    (at_d_p5)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #31528: <==negation-removal== 22260 (pos)
                    (not (not_at_d_p5))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #61652: origin
                    (at_d_p6)

                    ; #55693: <==negation-removal== 61652 (pos)
                    (not (not_at_d_p6))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #45738: origin
                    (at_d_p7)

                    ; #48020: origin
                    (not_at_d_p9)

                    ; #60848: <==negation-removal== 45738 (pos)
                    (not (not_at_d_p7))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #74541: origin
                    (at_d_p8)

                    ; #19637: <==negation-removal== 74541 (pos)
                    (not (not_at_d_p8))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #48020: origin
                    (not_at_d_p9)

                    ; #81842: origin
                    (at_d_p9)

                    ; #48020: <==negation-removal== 81842 (pos)
                    (not (not_at_d_p9))

                    ; #81842: <==negation-removal== 48020 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #18088: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #20897: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #21729: <==commonly_known== 70475 (pos)
                    (Bc_checked_p10)

                    ; #32778: <==commonly_known== 70475 (pos)
                    (Ba_checked_p10)

                    ; #33897: <==commonly_known== 70475 (pos)
                    (Bd_checked_p10)

                    ; #40753: <==closure== 18088 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #50304: <==commonly_known== 56831 (neg)
                    (Pb_checked_p10)

                    ; #59710: <==closure== 20897 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #62382: <==commonly_known== 56831 (neg)
                    (Pd_checked_p10)

                    ; #68507: <==commonly_known== 56831 (neg)
                    (Pc_checked_p10)

                    ; #69031: <==commonly_known== 56831 (neg)
                    (Pa_checked_p10)

                    ; #70475: origin
                    (checked_p10)

                    ; #74554: <==commonly_known== 70475 (pos)
                    (Bb_checked_p10)

                    ; #11423: <==uncertain_firing== 40753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #19463: <==negation-removal== 62382 (pos)
                    (not (Bd_not_checked_p10))

                    ; #29224: <==negation-removal== 69031 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33217: <==negation-removal== 18088 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #33522: <==uncertain_firing== 59710 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #33742: <==negation-removal== 68507 (pos)
                    (not (Bc_not_checked_p10))

                    ; #36754: <==uncertain_firing== 18088 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #39044: <==negation-removal== 33897 (pos)
                    (not (Pd_not_checked_p10))

                    ; #44618: <==negation-removal== 50304 (pos)
                    (not (Bb_not_checked_p10))

                    ; #47565: <==uncertain_firing== 20897 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #49967: <==negation-removal== 32778 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52479: <==negation-removal== 74554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #56831: <==negation-removal== 70475 (pos)
                    (not (not_checked_p10))

                    ; #68722: <==negation-removal== 59710 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #71642: <==negation-removal== 21729 (pos)
                    (not (Pc_not_checked_p10))

                    ; #72819: <==negation-removal== 40753 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #86014: <==negation-removal== 20897 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10537: <==commonly_known== 26257 (pos)
                    (Bb_checked_p11)

                    ; #16826: <==commonly_known== 99526 (neg)
                    (Pc_checked_p11)

                    ; #17626: <==closure== 18062 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #17906: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #18062: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #26257: origin
                    (checked_p11)

                    ; #33289: <==closure== 17906 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #35289: <==commonly_known== 26257 (pos)
                    (Bc_checked_p11)

                    ; #50844: <==commonly_known== 99526 (neg)
                    (Pb_checked_p11)

                    ; #58005: <==commonly_known== 99526 (neg)
                    (Pd_checked_p11)

                    ; #61476: <==commonly_known== 26257 (pos)
                    (Ba_checked_p11)

                    ; #85529: <==commonly_known== 26257 (pos)
                    (Bd_checked_p11)

                    ; #87051: <==commonly_known== 99526 (neg)
                    (Pa_checked_p11)

                    ; #10196: <==uncertain_firing== 18062 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #13342: <==negation-removal== 58005 (pos)
                    (not (Bd_not_checked_p11))

                    ; #14806: <==negation-removal== 87051 (pos)
                    (not (Ba_not_checked_p11))

                    ; #30145: <==negation-removal== 17906 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #43869: <==uncertain_firing== 33289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #48652: <==negation-removal== 18062 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #60845: <==negation-removal== 50844 (pos)
                    (not (Bb_not_checked_p11))

                    ; #62538: <==uncertain_firing== 17626 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #64076: <==negation-removal== 33289 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69006: <==negation-removal== 17626 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #77584: <==negation-removal== 16826 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79244: <==negation-removal== 61476 (pos)
                    (not (Pa_not_checked_p11))

                    ; #80896: <==negation-removal== 35289 (pos)
                    (not (Pc_not_checked_p11))

                    ; #86298: <==uncertain_firing== 17906 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #88495: <==negation-removal== 10537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #97655: <==negation-removal== 85529 (pos)
                    (not (Pd_not_checked_p11))

                    ; #99526: <==negation-removal== 26257 (pos)
                    (not (not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12455: <==commonly_known== 85956 (pos)
                    (Bd_checked_p12)

                    ; #24485: <==commonly_known== 78345 (neg)
                    (Pa_checked_p12)

                    ; #34103: <==commonly_known== 78345 (neg)
                    (Pd_checked_p12)

                    ; #44370: <==commonly_known== 85956 (pos)
                    (Bc_checked_p12)

                    ; #46714: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #48290: <==commonly_known== 85956 (pos)
                    (Bb_checked_p12)

                    ; #57977: <==commonly_known== 78345 (neg)
                    (Pb_checked_p12)

                    ; #65419: <==commonly_known== 78345 (neg)
                    (Pc_checked_p12)

                    ; #85956: origin
                    (checked_p12)

                    ; #87044: <==closure== 46714 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #87870: <==commonly_known== 85956 (pos)
                    (Ba_checked_p12)

                    ; #88604: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #89848: <==closure== 88604 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #20259: <==negation-removal== 88604 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #20789: <==negation-removal== 87870 (pos)
                    (not (Pa_not_checked_p12))

                    ; #25148: <==negation-removal== 24485 (pos)
                    (not (Ba_not_checked_p12))

                    ; #26546: <==negation-removal== 57977 (pos)
                    (not (Bb_not_checked_p12))

                    ; #28734: <==negation-removal== 12455 (pos)
                    (not (Pd_not_checked_p12))

                    ; #34166: <==uncertain_firing== 46714 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #50103: <==uncertain_firing== 87044 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #57855: <==negation-removal== 87044 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #59251: <==negation-removal== 46714 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #60355: <==negation-removal== 89848 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #64365: <==negation-removal== 65419 (pos)
                    (not (Bc_not_checked_p12))

                    ; #71916: <==uncertain_firing== 89848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #72712: <==negation-removal== 48290 (pos)
                    (not (Pb_not_checked_p12))

                    ; #77913: <==negation-removal== 44370 (pos)
                    (not (Pc_not_checked_p12))

                    ; #78345: <==negation-removal== 85956 (pos)
                    (not (not_checked_p12))

                    ; #78539: <==negation-removal== 34103 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81079: <==uncertain_firing== 88604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17614: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #20741: <==commonly_known== 89100 (neg)
                    (Pa_checked_p1)

                    ; #24066: <==closure== 26184 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #26184: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #30911: <==commonly_known== 89100 (neg)
                    (Pc_checked_p1)

                    ; #36557: <==commonly_known== 89100 (neg)
                    (Pd_checked_p1)

                    ; #44063: origin
                    (checked_p1)

                    ; #59716: <==closure== 17614 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #64128: <==commonly_known== 44063 (pos)
                    (Bb_checked_p1)

                    ; #71347: <==commonly_known== 89100 (neg)
                    (Pb_checked_p1)

                    ; #76564: <==commonly_known== 44063 (pos)
                    (Bd_checked_p1)

                    ; #79348: <==commonly_known== 44063 (pos)
                    (Ba_checked_p1)

                    ; #92119: <==commonly_known== 44063 (pos)
                    (Bc_checked_p1)

                    ; #11356: <==negation-removal== 30911 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15837: <==negation-removal== 24066 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #25082: <==negation-removal== 76564 (pos)
                    (not (Pd_not_checked_p1))

                    ; #25758: <==negation-removal== 20741 (pos)
                    (not (Ba_not_checked_p1))

                    ; #40456: <==uncertain_firing== 59716 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #40631: <==negation-removal== 64128 (pos)
                    (not (Pb_not_checked_p1))

                    ; #43698: <==negation-removal== 36557 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48071: <==negation-removal== 92119 (pos)
                    (not (Pc_not_checked_p1))

                    ; #50132: <==uncertain_firing== 24066 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #52035: <==negation-removal== 26184 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #56219: <==negation-removal== 17614 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #57972: <==negation-removal== 71347 (pos)
                    (not (Bb_not_checked_p1))

                    ; #60379: <==uncertain_firing== 17614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #76817: <==uncertain_firing== 26184 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #88387: <==negation-removal== 79348 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89100: <==negation-removal== 44063 (pos)
                    (not (not_checked_p1))

                    ; #91541: <==negation-removal== 59716 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21792: <==commonly_known== 37499 (pos)
                    (Bb_checked_p2)

                    ; #22353: <==commonly_known== 47424 (neg)
                    (Pa_checked_p2)

                    ; #37499: origin
                    (checked_p2)

                    ; #46797: <==commonly_known== 47424 (neg)
                    (Pd_checked_p2)

                    ; #48689: <==commonly_known== 37499 (pos)
                    (Bd_checked_p2)

                    ; #63540: <==commonly_known== 37499 (pos)
                    (Bc_checked_p2)

                    ; #67718: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #67999: <==closure== 67718 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #72555: <==commonly_known== 37499 (pos)
                    (Ba_checked_p2)

                    ; #80218: <==commonly_known== 47424 (neg)
                    (Pc_checked_p2)

                    ; #85943: <==closure== 89255 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #88148: <==commonly_known== 47424 (neg)
                    (Pb_checked_p2)

                    ; #89255: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #12830: <==negation-removal== 85943 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #18802: <==uncertain_firing== 85943 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #31305: <==negation-removal== 22353 (pos)
                    (not (Ba_not_checked_p2))

                    ; #37408: <==negation-removal== 72555 (pos)
                    (not (Pa_not_checked_p2))

                    ; #46916: <==negation-removal== 67999 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #47424: <==negation-removal== 37499 (pos)
                    (not (not_checked_p2))

                    ; #49230: <==negation-removal== 63540 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54605: <==negation-removal== 80218 (pos)
                    (not (Bc_not_checked_p2))

                    ; #58084: <==negation-removal== 89255 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #62032: <==negation-removal== 46797 (pos)
                    (not (Bd_not_checked_p2))

                    ; #71037: <==uncertain_firing== 89255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #75235: <==uncertain_firing== 67718 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #75726: <==negation-removal== 21792 (pos)
                    (not (Pb_not_checked_p2))

                    ; #75803: <==uncertain_firing== 67999 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #81080: <==negation-removal== 88148 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82039: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89914: <==negation-removal== 67718 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16856: <==commonly_known== 25260 (neg)
                    (Pa_checked_p3)

                    ; #18696: <==commonly_known== 80356 (pos)
                    (Ba_checked_p3)

                    ; #20691: <==commonly_known== 80356 (pos)
                    (Bb_checked_p3)

                    ; #33584: <==commonly_known== 25260 (neg)
                    (Pd_checked_p3)

                    ; #34885: <==closure== 37921 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #37714: <==commonly_known== 80356 (pos)
                    (Bd_checked_p3)

                    ; #37921: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #54229: <==commonly_known== 25260 (neg)
                    (Pb_checked_p3)

                    ; #59123: <==commonly_known== 25260 (neg)
                    (Pc_checked_p3)

                    ; #63123: <==commonly_known== 80356 (pos)
                    (Bc_checked_p3)

                    ; #76758: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #80214: <==closure== 76758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #80356: origin
                    (checked_p3)

                    ; #13567: <==negation-removal== 18696 (pos)
                    (not (Pa_not_checked_p3))

                    ; #13839: <==negation-removal== 37714 (pos)
                    (not (Pd_not_checked_p3))

                    ; #14108: <==negation-removal== 37921 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #24791: <==negation-removal== 16856 (pos)
                    (not (Ba_not_checked_p3))

                    ; #25260: <==negation-removal== 80356 (pos)
                    (not (not_checked_p3))

                    ; #27888: <==negation-removal== 76758 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29412: <==negation-removal== 34885 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #31173: <==negation-removal== 20691 (pos)
                    (not (Pb_not_checked_p3))

                    ; #54483: <==negation-removal== 33584 (pos)
                    (not (Bd_not_checked_p3))

                    ; #58517: <==uncertain_firing== 37921 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #59015: <==uncertain_firing== 80214 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #59354: <==uncertain_firing== 76758 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #72732: <==negation-removal== 54229 (pos)
                    (not (Bb_not_checked_p3))

                    ; #72857: <==negation-removal== 63123 (pos)
                    (not (Pc_not_checked_p3))

                    ; #82915: <==uncertain_firing== 34885 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #89747: <==negation-removal== 80214 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #90881: <==negation-removal== 59123 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22251: origin
                    (checked_p4)

                    ; #23351: <==commonly_known== 22251 (pos)
                    (Ba_checked_p4)

                    ; #33323: <==commonly_known== 75398 (neg)
                    (Pb_checked_p4)

                    ; #45183: <==closure== 68144 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #46783: <==commonly_known== 75398 (neg)
                    (Pa_checked_p4)

                    ; #50353: <==commonly_known== 22251 (pos)
                    (Bc_checked_p4)

                    ; #52434: <==closure== 87545 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #62126: <==commonly_known== 75398 (neg)
                    (Pc_checked_p4)

                    ; #64478: <==commonly_known== 22251 (pos)
                    (Bd_checked_p4)

                    ; #67757: <==commonly_known== 22251 (pos)
                    (Bb_checked_p4)

                    ; #68144: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #87545: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #90105: <==commonly_known== 75398 (neg)
                    (Pd_checked_p4)

                    ; #12069: <==negation-removal== 33323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #13452: <==negation-removal== 62126 (pos)
                    (not (Bc_not_checked_p4))

                    ; #14087: <==uncertain_firing== 68144 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #14089: <==uncertain_firing== 87545 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #31340: <==negation-removal== 67757 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37256: <==negation-removal== 50353 (pos)
                    (not (Pc_not_checked_p4))

                    ; #45638: <==negation-removal== 64478 (pos)
                    (not (Pd_not_checked_p4))

                    ; #49019: <==uncertain_firing== 52434 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #49541: <==negation-removal== 87545 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #50740: <==uncertain_firing== 45183 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55273: <==negation-removal== 45183 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #60993: <==negation-removal== 68144 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #70081: <==negation-removal== 52434 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #75398: <==negation-removal== 22251 (pos)
                    (not (not_checked_p4))

                    ; #79711: <==negation-removal== 90105 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80074: <==negation-removal== 23351 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84865: <==negation-removal== 46783 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11833: origin
                    (checked_p5)

                    ; #13429: <==commonly_known== 44160 (neg)
                    (Pa_checked_p5)

                    ; #27854: <==commonly_known== 11833 (pos)
                    (Ba_checked_p5)

                    ; #43235: <==commonly_known== 44160 (neg)
                    (Pc_checked_p5)

                    ; #44155: <==closure== 54744 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #49567: <==commonly_known== 11833 (pos)
                    (Bc_checked_p5)

                    ; #54517: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #54744: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #57981: <==commonly_known== 44160 (neg)
                    (Pb_checked_p5)

                    ; #62987: <==commonly_known== 11833 (pos)
                    (Bd_checked_p5)

                    ; #76442: <==commonly_known== 44160 (neg)
                    (Pd_checked_p5)

                    ; #79754: <==closure== 54517 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #92085: <==commonly_known== 11833 (pos)
                    (Bb_checked_p5)

                    ; #19351: <==uncertain_firing== 44155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #24324: <==negation-removal== 79754 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #26103: <==negation-removal== 62987 (pos)
                    (not (Pd_not_checked_p5))

                    ; #42014: <==uncertain_firing== 54744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44160: <==negation-removal== 11833 (pos)
                    (not (not_checked_p5))

                    ; #44471: <==negation-removal== 43235 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52504: <==negation-removal== 49567 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55764: <==negation-removal== 57981 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58806: <==negation-removal== 27854 (pos)
                    (not (Pa_not_checked_p5))

                    ; #59808: <==negation-removal== 44155 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #62859: <==negation-removal== 76442 (pos)
                    (not (Bd_not_checked_p5))

                    ; #62919: <==uncertain_firing== 54517 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #64150: <==negation-removal== 54744 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #71241: <==negation-removal== 92085 (pos)
                    (not (Pb_not_checked_p5))

                    ; #75773: <==negation-removal== 54517 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #79139: <==uncertain_firing== 79754 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #79967: <==negation-removal== 13429 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #23169: <==commonly_known== 63786 (neg)
                    (Pc_checked_p6)

                    ; #23899: <==commonly_known== 68647 (pos)
                    (Ba_checked_p6)

                    ; #27176: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #27198: <==closure== 27176 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #33111: <==commonly_known== 63786 (neg)
                    (Pa_checked_p6)

                    ; #47724: <==commonly_known== 68647 (pos)
                    (Bc_checked_p6)

                    ; #48391: <==commonly_known== 68647 (pos)
                    (Bd_checked_p6)

                    ; #49147: <==closure== 67831 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #63798: <==commonly_known== 68647 (pos)
                    (Bb_checked_p6)

                    ; #67831: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #68647: origin
                    (checked_p6)

                    ; #71513: <==commonly_known== 63786 (neg)
                    (Pb_checked_p6)

                    ; #89453: <==commonly_known== 63786 (neg)
                    (Pd_checked_p6)

                    ; #10345: <==negation-removal== 49147 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #10806: <==uncertain_firing== 49147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #15715: <==negation-removal== 71513 (pos)
                    (not (Bb_not_checked_p6))

                    ; #17819: <==negation-removal== 33111 (pos)
                    (not (Ba_not_checked_p6))

                    ; #24381: <==uncertain_firing== 27198 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #24829: <==uncertain_firing== 27176 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #26254: <==negation-removal== 27176 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #28739: <==negation-removal== 23169 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36226: <==negation-removal== 89453 (pos)
                    (not (Bd_not_checked_p6))

                    ; #46141: <==negation-removal== 67831 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46291: <==negation-removal== 23899 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63786: <==negation-removal== 68647 (pos)
                    (not (not_checked_p6))

                    ; #76752: <==uncertain_firing== 67831 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77399: <==negation-removal== 63798 (pos)
                    (not (Pb_not_checked_p6))

                    ; #80954: <==negation-removal== 48391 (pos)
                    (not (Pd_not_checked_p6))

                    ; #89350: <==negation-removal== 47724 (pos)
                    (not (Pc_not_checked_p6))

                    ; #94880: <==negation-removal== 27198 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16530: <==commonly_known== 46952 (neg)
                    (Pd_checked_p7)

                    ; #22595: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #23077: <==commonly_known== 68314 (pos)
                    (Bb_checked_p7)

                    ; #33627: <==closure== 22595 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #46318: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #47011: <==commonly_known== 46952 (neg)
                    (Pa_checked_p7)

                    ; #53597: <==commonly_known== 68314 (pos)
                    (Bc_checked_p7)

                    ; #59213: <==commonly_known== 46952 (neg)
                    (Pb_checked_p7)

                    ; #63636: <==commonly_known== 46952 (neg)
                    (Pc_checked_p7)

                    ; #68314: origin
                    (checked_p7)

                    ; #79420: <==commonly_known== 68314 (pos)
                    (Ba_checked_p7)

                    ; #82593: <==commonly_known== 68314 (pos)
                    (Bd_checked_p7)

                    ; #83723: <==closure== 46318 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #18079: <==uncertain_firing== 46318 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #20966: <==negation-removal== 16530 (pos)
                    (not (Bd_not_checked_p7))

                    ; #23330: <==negation-removal== 23077 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34843: <==negation-removal== 59213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #46952: <==negation-removal== 68314 (pos)
                    (not (not_checked_p7))

                    ; #49272: <==uncertain_firing== 83723 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #52185: <==uncertain_firing== 22595 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54294: <==negation-removal== 63636 (pos)
                    (not (Bc_not_checked_p7))

                    ; #61963: <==negation-removal== 79420 (pos)
                    (not (Pa_not_checked_p7))

                    ; #62086: <==negation-removal== 33627 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #63386: <==negation-removal== 22595 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #73683: <==negation-removal== 83723 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #75429: <==negation-removal== 47011 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83077: <==negation-removal== 82593 (pos)
                    (not (Pd_not_checked_p7))

                    ; #84599: <==negation-removal== 46318 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88081: <==uncertain_firing== 33627 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #92386: <==negation-removal== 53597 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25799: <==commonly_known== 30635 (neg)
                    (Pb_checked_p8)

                    ; #31105: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #32282: <==closure== 39313 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #39313: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #43475: <==commonly_known== 95508 (pos)
                    (Bb_checked_p8)

                    ; #51354: <==commonly_known== 30635 (neg)
                    (Pa_checked_p8)

                    ; #56432: <==commonly_known== 95508 (pos)
                    (Ba_checked_p8)

                    ; #59691: <==commonly_known== 30635 (neg)
                    (Pd_checked_p8)

                    ; #78250: <==commonly_known== 95508 (pos)
                    (Bc_checked_p8)

                    ; #80242: <==commonly_known== 30635 (neg)
                    (Pc_checked_p8)

                    ; #87986: <==closure== 31105 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #89620: <==commonly_known== 95508 (pos)
                    (Bd_checked_p8)

                    ; #95508: origin
                    (checked_p8)

                    ; #17137: <==uncertain_firing== 32282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #19274: <==uncertain_firing== 31105 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #30635: <==negation-removal== 95508 (pos)
                    (not (not_checked_p8))

                    ; #31267: <==negation-removal== 78250 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35452: <==uncertain_firing== 39313 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #35899: <==negation-removal== 43475 (pos)
                    (not (Pb_not_checked_p8))

                    ; #36108: <==negation-removal== 56432 (pos)
                    (not (Pa_not_checked_p8))

                    ; #42651: <==uncertain_firing== 87986 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #49615: <==negation-removal== 25799 (pos)
                    (not (Bb_not_checked_p8))

                    ; #54443: <==negation-removal== 32282 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #64302: <==negation-removal== 51354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #68339: <==negation-removal== 87986 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #72440: <==negation-removal== 80242 (pos)
                    (not (Bc_not_checked_p8))

                    ; #76122: <==negation-removal== 31105 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #77202: <==negation-removal== 89620 (pos)
                    (not (Pd_not_checked_p8))

                    ; #82790: <==negation-removal== 59691 (pos)
                    (not (Bd_not_checked_p8))

                    ; #84870: <==negation-removal== 39313 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14724: <==commonly_known== 77167 (neg)
                    (Pa_checked_p9)

                    ; #19483: <==closure== 58998 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #21323: <==closure== 49694 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #24457: <==commonly_known== 77167 (neg)
                    (Pd_checked_p9)

                    ; #40628: <==commonly_known== 77167 (neg)
                    (Pc_checked_p9)

                    ; #45210: origin
                    (checked_p9)

                    ; #47649: <==commonly_known== 45210 (pos)
                    (Bb_checked_p9)

                    ; #49694: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #53204: <==commonly_known== 45210 (pos)
                    (Bd_checked_p9)

                    ; #54095: <==commonly_known== 77167 (neg)
                    (Pb_checked_p9)

                    ; #58998: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #60670: <==commonly_known== 45210 (pos)
                    (Bc_checked_p9)

                    ; #72886: <==commonly_known== 45210 (pos)
                    (Ba_checked_p9)

                    ; #15786: <==negation-removal== 49694 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32835: <==negation-removal== 54095 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33400: <==negation-removal== 47649 (pos)
                    (not (Pb_not_checked_p9))

                    ; #35538: <==negation-removal== 14724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #36976: <==uncertain_firing== 58998 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #38230: <==negation-removal== 19483 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #46000: <==negation-removal== 21323 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #54072: <==negation-removal== 72886 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56759: <==negation-removal== 40628 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57017: <==negation-removal== 60670 (pos)
                    (not (Pc_not_checked_p9))

                    ; #60419: <==negation-removal== 53204 (pos)
                    (not (Pd_not_checked_p9))

                    ; #66584: <==negation-removal== 58998 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #74738: <==uncertain_firing== 49694 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #76736: <==uncertain_firing== 21323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #77167: <==negation-removal== 45210 (pos)
                    (not (not_checked_p9))

                    ; #83970: <==uncertain_firing== 19483 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #86183: <==negation-removal== 24457 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #17897: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #21729: <==commonly_known== 70475 (pos)
                    (Bc_checked_p10)

                    ; #25163: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #30840: <==closure== 17897 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #32778: <==commonly_known== 70475 (pos)
                    (Ba_checked_p10)

                    ; #33897: <==commonly_known== 70475 (pos)
                    (Bd_checked_p10)

                    ; #41372: <==closure== 25163 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #50304: <==commonly_known== 56831 (neg)
                    (Pb_checked_p10)

                    ; #62382: <==commonly_known== 56831 (neg)
                    (Pd_checked_p10)

                    ; #68507: <==commonly_known== 56831 (neg)
                    (Pc_checked_p10)

                    ; #69031: <==commonly_known== 56831 (neg)
                    (Pa_checked_p10)

                    ; #70475: origin
                    (checked_p10)

                    ; #74554: <==commonly_known== 70475 (pos)
                    (Bb_checked_p10)

                    ; #19463: <==negation-removal== 62382 (pos)
                    (not (Bd_not_checked_p10))

                    ; #21390: <==negation-removal== 25163 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #27010: <==uncertain_firing== 30840 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #29224: <==negation-removal== 69031 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33742: <==negation-removal== 68507 (pos)
                    (not (Bc_not_checked_p10))

                    ; #34764: <==uncertain_firing== 17897 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #39044: <==negation-removal== 33897 (pos)
                    (not (Pd_not_checked_p10))

                    ; #44618: <==negation-removal== 50304 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49967: <==negation-removal== 32778 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52479: <==negation-removal== 74554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #55592: <==uncertain_firing== 41372 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #56831: <==negation-removal== 70475 (pos)
                    (not (not_checked_p10))

                    ; #59750: <==negation-removal== 30840 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #65238: <==uncertain_firing== 25163 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #67295: <==negation-removal== 41372 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #71642: <==negation-removal== 21729 (pos)
                    (not (Pc_not_checked_p10))

                    ; #89043: <==negation-removal== 17897 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10537: <==commonly_known== 26257 (pos)
                    (Bb_checked_p11)

                    ; #14934: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #16826: <==commonly_known== 99526 (neg)
                    (Pc_checked_p11)

                    ; #19802: <==closure== 14934 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #26257: origin
                    (checked_p11)

                    ; #35289: <==commonly_known== 26257 (pos)
                    (Bc_checked_p11)

                    ; #50844: <==commonly_known== 99526 (neg)
                    (Pb_checked_p11)

                    ; #58005: <==commonly_known== 99526 (neg)
                    (Pd_checked_p11)

                    ; #61476: <==commonly_known== 26257 (pos)
                    (Ba_checked_p11)

                    ; #69386: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #85199: <==closure== 69386 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #85529: <==commonly_known== 26257 (pos)
                    (Bd_checked_p11)

                    ; #87051: <==commonly_known== 99526 (neg)
                    (Pa_checked_p11)

                    ; #13342: <==negation-removal== 58005 (pos)
                    (not (Bd_not_checked_p11))

                    ; #14806: <==negation-removal== 87051 (pos)
                    (not (Ba_not_checked_p11))

                    ; #18017: <==negation-removal== 69386 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #21000: <==negation-removal== 19802 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #25307: <==uncertain_firing== 14934 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #37691: <==negation-removal== 14934 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #57440: <==uncertain_firing== 85199 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #60845: <==negation-removal== 50844 (pos)
                    (not (Bb_not_checked_p11))

                    ; #73088: <==uncertain_firing== 69386 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #77460: <==negation-removal== 85199 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #77584: <==negation-removal== 16826 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79244: <==negation-removal== 61476 (pos)
                    (not (Pa_not_checked_p11))

                    ; #80896: <==negation-removal== 35289 (pos)
                    (not (Pc_not_checked_p11))

                    ; #88495: <==negation-removal== 10537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #91835: <==uncertain_firing== 19802 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #97655: <==negation-removal== 85529 (pos)
                    (not (Pd_not_checked_p11))

                    ; #99526: <==negation-removal== 26257 (pos)
                    (not (not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12455: <==commonly_known== 85956 (pos)
                    (Bd_checked_p12)

                    ; #24485: <==commonly_known== 78345 (neg)
                    (Pa_checked_p12)

                    ; #34103: <==commonly_known== 78345 (neg)
                    (Pd_checked_p12)

                    ; #44370: <==commonly_known== 85956 (pos)
                    (Bc_checked_p12)

                    ; #48290: <==commonly_known== 85956 (pos)
                    (Bb_checked_p12)

                    ; #48629: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #56705: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #57977: <==commonly_known== 78345 (neg)
                    (Pb_checked_p12)

                    ; #63363: <==closure== 56705 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #65419: <==commonly_known== 78345 (neg)
                    (Pc_checked_p12)

                    ; #85956: origin
                    (checked_p12)

                    ; #87809: <==closure== 48629 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #87870: <==commonly_known== 85956 (pos)
                    (Ba_checked_p12)

                    ; #17572: <==negation-removal== 63363 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #20789: <==negation-removal== 87870 (pos)
                    (not (Pa_not_checked_p12))

                    ; #25148: <==negation-removal== 24485 (pos)
                    (not (Ba_not_checked_p12))

                    ; #26546: <==negation-removal== 57977 (pos)
                    (not (Bb_not_checked_p12))

                    ; #28734: <==negation-removal== 12455 (pos)
                    (not (Pd_not_checked_p12))

                    ; #32229: <==negation-removal== 87809 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #34389: <==uncertain_firing== 48629 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #37944: <==uncertain_firing== 63363 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #53651: <==uncertain_firing== 56705 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #58589: <==uncertain_firing== 87809 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #58953: <==negation-removal== 56705 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #64365: <==negation-removal== 65419 (pos)
                    (not (Bc_not_checked_p12))

                    ; #68732: <==negation-removal== 48629 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #72712: <==negation-removal== 48290 (pos)
                    (not (Pb_not_checked_p12))

                    ; #77913: <==negation-removal== 44370 (pos)
                    (not (Pc_not_checked_p12))

                    ; #78345: <==negation-removal== 85956 (pos)
                    (not (not_checked_p12))

                    ; #78539: <==negation-removal== 34103 (pos)
                    (not (Bd_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16635: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #20741: <==commonly_known== 89100 (neg)
                    (Pa_checked_p1)

                    ; #30911: <==commonly_known== 89100 (neg)
                    (Pc_checked_p1)

                    ; #31067: <==closure== 86216 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #36557: <==commonly_known== 89100 (neg)
                    (Pd_checked_p1)

                    ; #44063: origin
                    (checked_p1)

                    ; #64128: <==commonly_known== 44063 (pos)
                    (Bb_checked_p1)

                    ; #71347: <==commonly_known== 89100 (neg)
                    (Pb_checked_p1)

                    ; #75115: <==closure== 16635 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #76564: <==commonly_known== 44063 (pos)
                    (Bd_checked_p1)

                    ; #79348: <==commonly_known== 44063 (pos)
                    (Ba_checked_p1)

                    ; #86216: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #92119: <==commonly_known== 44063 (pos)
                    (Bc_checked_p1)

                    ; #11356: <==negation-removal== 30911 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15834: <==negation-removal== 16635 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #20687: <==negation-removal== 31067 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #22917: <==uncertain_firing== 31067 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #25082: <==negation-removal== 76564 (pos)
                    (not (Pd_not_checked_p1))

                    ; #25758: <==negation-removal== 20741 (pos)
                    (not (Ba_not_checked_p1))

                    ; #40253: <==uncertain_firing== 16635 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40631: <==negation-removal== 64128 (pos)
                    (not (Pb_not_checked_p1))

                    ; #43698: <==negation-removal== 36557 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48071: <==negation-removal== 92119 (pos)
                    (not (Pc_not_checked_p1))

                    ; #57972: <==negation-removal== 71347 (pos)
                    (not (Bb_not_checked_p1))

                    ; #60235: <==negation-removal== 75115 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #75275: <==uncertain_firing== 75115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #86754: <==uncertain_firing== 86216 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #87970: <==negation-removal== 86216 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #88387: <==negation-removal== 79348 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89100: <==negation-removal== 44063 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21792: <==commonly_known== 37499 (pos)
                    (Bb_checked_p2)

                    ; #22019: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #22353: <==commonly_known== 47424 (neg)
                    (Pa_checked_p2)

                    ; #37289: <==closure== 22019 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #37499: origin
                    (checked_p2)

                    ; #43078: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #46797: <==commonly_known== 47424 (neg)
                    (Pd_checked_p2)

                    ; #48689: <==commonly_known== 37499 (pos)
                    (Bd_checked_p2)

                    ; #55485: <==closure== 43078 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #63540: <==commonly_known== 37499 (pos)
                    (Bc_checked_p2)

                    ; #72555: <==commonly_known== 37499 (pos)
                    (Ba_checked_p2)

                    ; #80218: <==commonly_known== 47424 (neg)
                    (Pc_checked_p2)

                    ; #88148: <==commonly_known== 47424 (neg)
                    (Pb_checked_p2)

                    ; #27697: <==uncertain_firing== 55485 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #31305: <==negation-removal== 22353 (pos)
                    (not (Ba_not_checked_p2))

                    ; #34451: <==negation-removal== 22019 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #37408: <==negation-removal== 72555 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45641: <==uncertain_firing== 22019 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #47424: <==negation-removal== 37499 (pos)
                    (not (not_checked_p2))

                    ; #49230: <==negation-removal== 63540 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54605: <==negation-removal== 80218 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62032: <==negation-removal== 46797 (pos)
                    (not (Bd_not_checked_p2))

                    ; #71012: <==uncertain_firing== 43078 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #74547: <==negation-removal== 55485 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #75726: <==negation-removal== 21792 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81080: <==negation-removal== 88148 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82039: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p2))

                    ; #87409: <==uncertain_firing== 37289 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #88028: <==negation-removal== 43078 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89544: <==negation-removal== 37289 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16856: <==commonly_known== 25260 (neg)
                    (Pa_checked_p3)

                    ; #18696: <==commonly_known== 80356 (pos)
                    (Ba_checked_p3)

                    ; #20691: <==commonly_known== 80356 (pos)
                    (Bb_checked_p3)

                    ; #33584: <==commonly_known== 25260 (neg)
                    (Pd_checked_p3)

                    ; #35841: <==closure== 50248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #37714: <==commonly_known== 80356 (pos)
                    (Bd_checked_p3)

                    ; #50248: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #54229: <==commonly_known== 25260 (neg)
                    (Pb_checked_p3)

                    ; #59123: <==commonly_known== 25260 (neg)
                    (Pc_checked_p3)

                    ; #63123: <==commonly_known== 80356 (pos)
                    (Bc_checked_p3)

                    ; #80356: origin
                    (checked_p3)

                    ; #82274: <==closure== 88773 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #88773: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11874: <==uncertain_firing== 50248 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13567: <==negation-removal== 18696 (pos)
                    (not (Pa_not_checked_p3))

                    ; #13839: <==negation-removal== 37714 (pos)
                    (not (Pd_not_checked_p3))

                    ; #24791: <==negation-removal== 16856 (pos)
                    (not (Ba_not_checked_p3))

                    ; #25260: <==negation-removal== 80356 (pos)
                    (not (not_checked_p3))

                    ; #31173: <==negation-removal== 20691 (pos)
                    (not (Pb_not_checked_p3))

                    ; #31361: <==negation-removal== 82274 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #33957: <==negation-removal== 50248 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #46072: <==negation-removal== 88773 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #54483: <==negation-removal== 33584 (pos)
                    (not (Bd_not_checked_p3))

                    ; #60232: <==uncertain_firing== 35841 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #72732: <==negation-removal== 54229 (pos)
                    (not (Bb_not_checked_p3))

                    ; #72857: <==negation-removal== 63123 (pos)
                    (not (Pc_not_checked_p3))

                    ; #73994: <==negation-removal== 35841 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #76050: <==uncertain_firing== 88773 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90881: <==negation-removal== 59123 (pos)
                    (not (Bc_not_checked_p3))

                    ; #90913: <==uncertain_firing== 82274 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22251: origin
                    (checked_p4)

                    ; #23351: <==commonly_known== 22251 (pos)
                    (Ba_checked_p4)

                    ; #31179: <==closure== 60420 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #33323: <==commonly_known== 75398 (neg)
                    (Pb_checked_p4)

                    ; #46783: <==commonly_known== 75398 (neg)
                    (Pa_checked_p4)

                    ; #49879: <==closure== 65468 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #50353: <==commonly_known== 22251 (pos)
                    (Bc_checked_p4)

                    ; #60420: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #62126: <==commonly_known== 75398 (neg)
                    (Pc_checked_p4)

                    ; #64478: <==commonly_known== 22251 (pos)
                    (Bd_checked_p4)

                    ; #65468: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #67757: <==commonly_known== 22251 (pos)
                    (Bb_checked_p4)

                    ; #90105: <==commonly_known== 75398 (neg)
                    (Pd_checked_p4)

                    ; #12069: <==negation-removal== 33323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #13452: <==negation-removal== 62126 (pos)
                    (not (Bc_not_checked_p4))

                    ; #13556: <==uncertain_firing== 60420 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #14476: <==uncertain_firing== 49879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #31340: <==negation-removal== 67757 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37256: <==negation-removal== 50353 (pos)
                    (not (Pc_not_checked_p4))

                    ; #44303: <==uncertain_firing== 31179 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #45638: <==negation-removal== 64478 (pos)
                    (not (Pd_not_checked_p4))

                    ; #55519: <==negation-removal== 31179 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #57566: <==negation-removal== 49879 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #75398: <==negation-removal== 22251 (pos)
                    (not (not_checked_p4))

                    ; #79711: <==negation-removal== 90105 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80074: <==negation-removal== 23351 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84033: <==uncertain_firing== 65468 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84865: <==negation-removal== 46783 (pos)
                    (not (Ba_not_checked_p4))

                    ; #91014: <==negation-removal== 65468 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #91613: <==negation-removal== 60420 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11833: origin
                    (checked_p5)

                    ; #13429: <==commonly_known== 44160 (neg)
                    (Pa_checked_p5)

                    ; #27854: <==commonly_known== 11833 (pos)
                    (Ba_checked_p5)

                    ; #31160: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #43235: <==commonly_known== 44160 (neg)
                    (Pc_checked_p5)

                    ; #49567: <==commonly_known== 11833 (pos)
                    (Bc_checked_p5)

                    ; #57981: <==commonly_known== 44160 (neg)
                    (Pb_checked_p5)

                    ; #58106: <==closure== 61988 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #61988: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #62987: <==commonly_known== 11833 (pos)
                    (Bd_checked_p5)

                    ; #70588: <==closure== 31160 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #76442: <==commonly_known== 44160 (neg)
                    (Pd_checked_p5)

                    ; #92085: <==commonly_known== 11833 (pos)
                    (Bb_checked_p5)

                    ; #10151: <==negation-removal== 58106 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #11232: <==negation-removal== 61988 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #12920: <==uncertain_firing== 61988 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #26103: <==negation-removal== 62987 (pos)
                    (not (Pd_not_checked_p5))

                    ; #44160: <==negation-removal== 11833 (pos)
                    (not (not_checked_p5))

                    ; #44471: <==negation-removal== 43235 (pos)
                    (not (Bc_not_checked_p5))

                    ; #48512: <==negation-removal== 31160 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #48748: <==negation-removal== 70588 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #51951: <==uncertain_firing== 31160 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #52504: <==negation-removal== 49567 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55764: <==negation-removal== 57981 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58806: <==negation-removal== 27854 (pos)
                    (not (Pa_not_checked_p5))

                    ; #62859: <==negation-removal== 76442 (pos)
                    (not (Bd_not_checked_p5))

                    ; #71241: <==negation-removal== 92085 (pos)
                    (not (Pb_not_checked_p5))

                    ; #73681: <==uncertain_firing== 58106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #79967: <==negation-removal== 13429 (pos)
                    (not (Ba_not_checked_p5))

                    ; #92193: <==uncertain_firing== 70588 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #23169: <==commonly_known== 63786 (neg)
                    (Pc_checked_p6)

                    ; #23899: <==commonly_known== 68647 (pos)
                    (Ba_checked_p6)

                    ; #33111: <==commonly_known== 63786 (neg)
                    (Pa_checked_p6)

                    ; #35533: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #47724: <==commonly_known== 68647 (pos)
                    (Bc_checked_p6)

                    ; #48391: <==commonly_known== 68647 (pos)
                    (Bd_checked_p6)

                    ; #63798: <==commonly_known== 68647 (pos)
                    (Bb_checked_p6)

                    ; #65357: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #68647: origin
                    (checked_p6)

                    ; #71513: <==commonly_known== 63786 (neg)
                    (Pb_checked_p6)

                    ; #73800: <==closure== 35533 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #85641: <==closure== 65357 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #89453: <==commonly_known== 63786 (neg)
                    (Pd_checked_p6)

                    ; #10432: <==negation-removal== 35533 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #15715: <==negation-removal== 71513 (pos)
                    (not (Bb_not_checked_p6))

                    ; #17819: <==negation-removal== 33111 (pos)
                    (not (Ba_not_checked_p6))

                    ; #25678: <==uncertain_firing== 65357 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28739: <==negation-removal== 23169 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36226: <==negation-removal== 89453 (pos)
                    (not (Bd_not_checked_p6))

                    ; #46291: <==negation-removal== 23899 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52295: <==negation-removal== 85641 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #58952: <==uncertain_firing== 85641 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #59137: <==negation-removal== 65357 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #63349: <==uncertain_firing== 35533 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #63786: <==negation-removal== 68647 (pos)
                    (not (not_checked_p6))

                    ; #77399: <==negation-removal== 63798 (pos)
                    (not (Pb_not_checked_p6))

                    ; #80954: <==negation-removal== 48391 (pos)
                    (not (Pd_not_checked_p6))

                    ; #87706: <==uncertain_firing== 73800 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #89350: <==negation-removal== 47724 (pos)
                    (not (Pc_not_checked_p6))

                    ; #92033: <==negation-removal== 73800 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10201: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #16530: <==commonly_known== 46952 (neg)
                    (Pd_checked_p7)

                    ; #23077: <==commonly_known== 68314 (pos)
                    (Bb_checked_p7)

                    ; #26096: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #47011: <==commonly_known== 46952 (neg)
                    (Pa_checked_p7)

                    ; #53597: <==commonly_known== 68314 (pos)
                    (Bc_checked_p7)

                    ; #56277: <==closure== 10201 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #59213: <==commonly_known== 46952 (neg)
                    (Pb_checked_p7)

                    ; #63636: <==commonly_known== 46952 (neg)
                    (Pc_checked_p7)

                    ; #68314: origin
                    (checked_p7)

                    ; #79420: <==commonly_known== 68314 (pos)
                    (Ba_checked_p7)

                    ; #82593: <==commonly_known== 68314 (pos)
                    (Bd_checked_p7)

                    ; #87129: <==closure== 26096 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #13434: <==uncertain_firing== 56277 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #20966: <==negation-removal== 16530 (pos)
                    (not (Bd_not_checked_p7))

                    ; #23330: <==negation-removal== 23077 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34312: <==uncertain_firing== 26096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #34843: <==negation-removal== 59213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #37699: <==negation-removal== 10201 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #38509: <==uncertain_firing== 87129 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45488: <==negation-removal== 87129 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46952: <==negation-removal== 68314 (pos)
                    (not (not_checked_p7))

                    ; #47685: <==negation-removal== 56277 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #54294: <==negation-removal== 63636 (pos)
                    (not (Bc_not_checked_p7))

                    ; #57220: <==uncertain_firing== 10201 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #57465: <==negation-removal== 26096 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61963: <==negation-removal== 79420 (pos)
                    (not (Pa_not_checked_p7))

                    ; #75429: <==negation-removal== 47011 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83077: <==negation-removal== 82593 (pos)
                    (not (Pd_not_checked_p7))

                    ; #92386: <==negation-removal== 53597 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25799: <==commonly_known== 30635 (neg)
                    (Pb_checked_p8)

                    ; #43475: <==commonly_known== 95508 (pos)
                    (Bb_checked_p8)

                    ; #51354: <==commonly_known== 30635 (neg)
                    (Pa_checked_p8)

                    ; #56432: <==commonly_known== 95508 (pos)
                    (Ba_checked_p8)

                    ; #59691: <==commonly_known== 30635 (neg)
                    (Pd_checked_p8)

                    ; #61443: <==closure== 95840 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #78250: <==commonly_known== 95508 (pos)
                    (Bc_checked_p8)

                    ; #80242: <==commonly_known== 30635 (neg)
                    (Pc_checked_p8)

                    ; #81109: <==closure== 91826 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #89620: <==commonly_known== 95508 (pos)
                    (Bd_checked_p8)

                    ; #91826: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #95508: origin
                    (checked_p8)

                    ; #95840: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #11598: <==negation-removal== 61443 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #13217: <==negation-removal== 81109 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #19274: <==uncertain_firing== 91826 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #30635: <==negation-removal== 95508 (pos)
                    (not (not_checked_p8))

                    ; #31267: <==negation-removal== 78250 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35899: <==negation-removal== 43475 (pos)
                    (not (Pb_not_checked_p8))

                    ; #36108: <==negation-removal== 56432 (pos)
                    (not (Pa_not_checked_p8))

                    ; #36677: <==negation-removal== 95840 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #39377: <==negation-removal== 91826 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #39408: <==uncertain_firing== 81109 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #49615: <==negation-removal== 25799 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64302: <==negation-removal== 51354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #67167: <==uncertain_firing== 61443 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #72440: <==negation-removal== 80242 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77202: <==negation-removal== 89620 (pos)
                    (not (Pd_not_checked_p8))

                    ; #78857: <==uncertain_firing== 95840 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #82790: <==negation-removal== 59691 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11511: <==closure== 85404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #14724: <==commonly_known== 77167 (neg)
                    (Pa_checked_p9)

                    ; #19957: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #24457: <==commonly_known== 77167 (neg)
                    (Pd_checked_p9)

                    ; #34500: <==closure== 19957 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #40628: <==commonly_known== 77167 (neg)
                    (Pc_checked_p9)

                    ; #45210: origin
                    (checked_p9)

                    ; #47649: <==commonly_known== 45210 (pos)
                    (Bb_checked_p9)

                    ; #53204: <==commonly_known== 45210 (pos)
                    (Bd_checked_p9)

                    ; #54095: <==commonly_known== 77167 (neg)
                    (Pb_checked_p9)

                    ; #60670: <==commonly_known== 45210 (pos)
                    (Bc_checked_p9)

                    ; #72886: <==commonly_known== 45210 (pos)
                    (Ba_checked_p9)

                    ; #85404: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #21389: <==uncertain_firing== 34500 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #23974: <==uncertain_firing== 11511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #32835: <==negation-removal== 54095 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33400: <==negation-removal== 47649 (pos)
                    (not (Pb_not_checked_p9))

                    ; #35538: <==negation-removal== 14724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #37154: <==negation-removal== 19957 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #44141: <==negation-removal== 34500 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #52108: <==negation-removal== 85404 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #52896: <==uncertain_firing== 85404 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #54072: <==negation-removal== 72886 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56759: <==negation-removal== 40628 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57017: <==negation-removal== 60670 (pos)
                    (not (Pc_not_checked_p9))

                    ; #60419: <==negation-removal== 53204 (pos)
                    (not (Pd_not_checked_p9))

                    ; #73215: <==negation-removal== 11511 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #77167: <==negation-removal== 45210 (pos)
                    (not (not_checked_p9))

                    ; #86183: <==negation-removal== 24457 (pos)
                    (not (Bd_not_checked_p9))

                    ; #88093: <==uncertain_firing== 19957 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #21729: <==commonly_known== 70475 (pos)
                    (Bc_checked_p10)

                    ; #26625: <==closure== 55120 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #32778: <==commonly_known== 70475 (pos)
                    (Ba_checked_p10)

                    ; #33897: <==commonly_known== 70475 (pos)
                    (Bd_checked_p10)

                    ; #50304: <==commonly_known== 56831 (neg)
                    (Pb_checked_p10)

                    ; #55120: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #62382: <==commonly_known== 56831 (neg)
                    (Pd_checked_p10)

                    ; #68507: <==commonly_known== 56831 (neg)
                    (Pc_checked_p10)

                    ; #69031: <==commonly_known== 56831 (neg)
                    (Pa_checked_p10)

                    ; #70475: origin
                    (checked_p10)

                    ; #74554: <==commonly_known== 70475 (pos)
                    (Bb_checked_p10)

                    ; #77948: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #83165: <==closure== 77948 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #19463: <==negation-removal== 62382 (pos)
                    (not (Bd_not_checked_p10))

                    ; #22640: <==uncertain_firing== 55120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27487: <==negation-removal== 83165 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #29224: <==negation-removal== 69031 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33340: <==negation-removal== 55120 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #33742: <==negation-removal== 68507 (pos)
                    (not (Bc_not_checked_p10))

                    ; #39044: <==negation-removal== 33897 (pos)
                    (not (Pd_not_checked_p10))

                    ; #42830: <==negation-removal== 77948 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #44618: <==negation-removal== 50304 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49967: <==negation-removal== 32778 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52479: <==negation-removal== 74554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #56831: <==negation-removal== 70475 (pos)
                    (not (not_checked_p10))

                    ; #59492: <==negation-removal== 26625 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67206: <==uncertain_firing== 77948 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #71642: <==negation-removal== 21729 (pos)
                    (not (Pc_not_checked_p10))

                    ; #74916: <==uncertain_firing== 83165 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #91980: <==uncertain_firing== 26625 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10537: <==commonly_known== 26257 (pos)
                    (Bb_checked_p11)

                    ; #16826: <==commonly_known== 99526 (neg)
                    (Pc_checked_p11)

                    ; #26257: origin
                    (checked_p11)

                    ; #35289: <==commonly_known== 26257 (pos)
                    (Bc_checked_p11)

                    ; #37869: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #40566: <==closure== 37869 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #50844: <==commonly_known== 99526 (neg)
                    (Pb_checked_p11)

                    ; #58005: <==commonly_known== 99526 (neg)
                    (Pd_checked_p11)

                    ; #61476: <==commonly_known== 26257 (pos)
                    (Ba_checked_p11)

                    ; #63631: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #66987: <==closure== 63631 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #85529: <==commonly_known== 26257 (pos)
                    (Bd_checked_p11)

                    ; #87051: <==commonly_known== 99526 (neg)
                    (Pa_checked_p11)

                    ; #13342: <==negation-removal== 58005 (pos)
                    (not (Bd_not_checked_p11))

                    ; #14773: <==negation-removal== 66987 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #14806: <==negation-removal== 87051 (pos)
                    (not (Ba_not_checked_p11))

                    ; #26122: <==negation-removal== 40566 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #40215: <==uncertain_firing== 37869 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #47728: <==negation-removal== 63631 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53339: <==negation-removal== 37869 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #60845: <==negation-removal== 50844 (pos)
                    (not (Bb_not_checked_p11))

                    ; #64656: <==uncertain_firing== 66987 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #66770: <==uncertain_firing== 63631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #77584: <==negation-removal== 16826 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79244: <==negation-removal== 61476 (pos)
                    (not (Pa_not_checked_p11))

                    ; #80896: <==negation-removal== 35289 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84012: <==uncertain_firing== 40566 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #88495: <==negation-removal== 10537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #97655: <==negation-removal== 85529 (pos)
                    (not (Pd_not_checked_p11))

                    ; #99526: <==negation-removal== 26257 (pos)
                    (not (not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12455: <==commonly_known== 85956 (pos)
                    (Bd_checked_p12)

                    ; #24485: <==commonly_known== 78345 (neg)
                    (Pa_checked_p12)

                    ; #34103: <==commonly_known== 78345 (neg)
                    (Pd_checked_p12)

                    ; #44370: <==commonly_known== 85956 (pos)
                    (Bc_checked_p12)

                    ; #44698: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #45940: <==closure== 80012 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #48290: <==commonly_known== 85956 (pos)
                    (Bb_checked_p12)

                    ; #57977: <==commonly_known== 78345 (neg)
                    (Pb_checked_p12)

                    ; #65419: <==commonly_known== 78345 (neg)
                    (Pc_checked_p12)

                    ; #68402: <==closure== 44698 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #80012: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #85956: origin
                    (checked_p12)

                    ; #87870: <==commonly_known== 85956 (pos)
                    (Ba_checked_p12)

                    ; #13257: <==uncertain_firing== 44698 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #17259: <==negation-removal== 80012 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #20789: <==negation-removal== 87870 (pos)
                    (not (Pa_not_checked_p12))

                    ; #25148: <==negation-removal== 24485 (pos)
                    (not (Ba_not_checked_p12))

                    ; #26546: <==negation-removal== 57977 (pos)
                    (not (Bb_not_checked_p12))

                    ; #28734: <==negation-removal== 12455 (pos)
                    (not (Pd_not_checked_p12))

                    ; #29022: <==uncertain_firing== 45940 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #53164: <==negation-removal== 45940 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #64365: <==negation-removal== 65419 (pos)
                    (not (Bc_not_checked_p12))

                    ; #65648: <==uncertain_firing== 68402 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #72712: <==negation-removal== 48290 (pos)
                    (not (Pb_not_checked_p12))

                    ; #74035: <==uncertain_firing== 80012 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #75244: <==negation-removal== 68402 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #77913: <==negation-removal== 44370 (pos)
                    (not (Pc_not_checked_p12))

                    ; #78345: <==negation-removal== 85956 (pos)
                    (not (not_checked_p12))

                    ; #78539: <==negation-removal== 34103 (pos)
                    (not (Bd_not_checked_p12))

                    ; #82061: <==negation-removal== 44698 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #20741: <==commonly_known== 89100 (neg)
                    (Pa_checked_p1)

                    ; #30911: <==commonly_known== 89100 (neg)
                    (Pc_checked_p1)

                    ; #36557: <==commonly_known== 89100 (neg)
                    (Pd_checked_p1)

                    ; #44063: origin
                    (checked_p1)

                    ; #63650: <==closure== 74159 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #64128: <==commonly_known== 44063 (pos)
                    (Bb_checked_p1)

                    ; #71347: <==commonly_known== 89100 (neg)
                    (Pb_checked_p1)

                    ; #74159: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #75338: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #76564: <==commonly_known== 44063 (pos)
                    (Bd_checked_p1)

                    ; #79348: <==commonly_known== 44063 (pos)
                    (Ba_checked_p1)

                    ; #81589: <==closure== 75338 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #92119: <==commonly_known== 44063 (pos)
                    (Bc_checked_p1)

                    ; #11356: <==negation-removal== 30911 (pos)
                    (not (Bc_not_checked_p1))

                    ; #14835: <==uncertain_firing== 81589 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #15936: <==negation-removal== 75338 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #25082: <==negation-removal== 76564 (pos)
                    (not (Pd_not_checked_p1))

                    ; #25758: <==negation-removal== 20741 (pos)
                    (not (Ba_not_checked_p1))

                    ; #32437: <==uncertain_firing== 75338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #40631: <==negation-removal== 64128 (pos)
                    (not (Pb_not_checked_p1))

                    ; #43698: <==negation-removal== 36557 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48071: <==negation-removal== 92119 (pos)
                    (not (Pc_not_checked_p1))

                    ; #57972: <==negation-removal== 71347 (pos)
                    (not (Bb_not_checked_p1))

                    ; #58596: <==uncertain_firing== 63650 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #67079: <==negation-removal== 74159 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #67219: <==negation-removal== 63650 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78462: <==uncertain_firing== 74159 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #88387: <==negation-removal== 79348 (pos)
                    (not (Pa_not_checked_p1))

                    ; #88441: <==negation-removal== 81589 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #89100: <==negation-removal== 44063 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21792: <==commonly_known== 37499 (pos)
                    (Bb_checked_p2)

                    ; #22353: <==commonly_known== 47424 (neg)
                    (Pa_checked_p2)

                    ; #22964: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #23981: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #37499: origin
                    (checked_p2)

                    ; #46797: <==commonly_known== 47424 (neg)
                    (Pd_checked_p2)

                    ; #48689: <==commonly_known== 37499 (pos)
                    (Bd_checked_p2)

                    ; #63540: <==commonly_known== 37499 (pos)
                    (Bc_checked_p2)

                    ; #68794: <==closure== 22964 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #72555: <==commonly_known== 37499 (pos)
                    (Ba_checked_p2)

                    ; #80218: <==commonly_known== 47424 (neg)
                    (Pc_checked_p2)

                    ; #85582: <==closure== 23981 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #88148: <==commonly_known== 47424 (neg)
                    (Pb_checked_p2)

                    ; #18417: <==uncertain_firing== 23981 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #28315: <==negation-removal== 22964 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #31305: <==negation-removal== 22353 (pos)
                    (not (Ba_not_checked_p2))

                    ; #37408: <==negation-removal== 72555 (pos)
                    (not (Pa_not_checked_p2))

                    ; #40961: <==uncertain_firing== 22964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42412: <==uncertain_firing== 68794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #44336: <==negation-removal== 23981 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #47424: <==negation-removal== 37499 (pos)
                    (not (not_checked_p2))

                    ; #49230: <==negation-removal== 63540 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54605: <==negation-removal== 80218 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62032: <==negation-removal== 46797 (pos)
                    (not (Bd_not_checked_p2))

                    ; #64051: <==negation-removal== 85582 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #75280: <==uncertain_firing== 85582 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #75726: <==negation-removal== 21792 (pos)
                    (not (Pb_not_checked_p2))

                    ; #80179: <==negation-removal== 68794 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #81080: <==negation-removal== 88148 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82039: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16856: <==commonly_known== 25260 (neg)
                    (Pa_checked_p3)

                    ; #18696: <==commonly_known== 80356 (pos)
                    (Ba_checked_p3)

                    ; #20691: <==commonly_known== 80356 (pos)
                    (Bb_checked_p3)

                    ; #30682: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #31514: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #33584: <==commonly_known== 25260 (neg)
                    (Pd_checked_p3)

                    ; #37714: <==commonly_known== 80356 (pos)
                    (Bd_checked_p3)

                    ; #54229: <==commonly_known== 25260 (neg)
                    (Pb_checked_p3)

                    ; #59123: <==commonly_known== 25260 (neg)
                    (Pc_checked_p3)

                    ; #63123: <==commonly_known== 80356 (pos)
                    (Bc_checked_p3)

                    ; #67700: <==closure== 30682 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #80356: origin
                    (checked_p3)

                    ; #85169: <==closure== 31514 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #13567: <==negation-removal== 18696 (pos)
                    (not (Pa_not_checked_p3))

                    ; #13839: <==negation-removal== 37714 (pos)
                    (not (Pd_not_checked_p3))

                    ; #15583: <==negation-removal== 31514 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #20483: <==uncertain_firing== 31514 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #24791: <==negation-removal== 16856 (pos)
                    (not (Ba_not_checked_p3))

                    ; #25260: <==negation-removal== 80356 (pos)
                    (not (not_checked_p3))

                    ; #28185: <==negation-removal== 30682 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #31173: <==negation-removal== 20691 (pos)
                    (not (Pb_not_checked_p3))

                    ; #33533: <==negation-removal== 85169 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #54483: <==negation-removal== 33584 (pos)
                    (not (Bd_not_checked_p3))

                    ; #58673: <==uncertain_firing== 30682 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #68156: <==uncertain_firing== 67700 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #72732: <==negation-removal== 54229 (pos)
                    (not (Bb_not_checked_p3))

                    ; #72857: <==negation-removal== 63123 (pos)
                    (not (Pc_not_checked_p3))

                    ; #86414: <==negation-removal== 67700 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87520: <==uncertain_firing== 85169 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #90881: <==negation-removal== 59123 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13698: <==closure== 30382 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #22251: origin
                    (checked_p4)

                    ; #23351: <==commonly_known== 22251 (pos)
                    (Ba_checked_p4)

                    ; #30382: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #33323: <==commonly_known== 75398 (neg)
                    (Pb_checked_p4)

                    ; #46783: <==commonly_known== 75398 (neg)
                    (Pa_checked_p4)

                    ; #50353: <==commonly_known== 22251 (pos)
                    (Bc_checked_p4)

                    ; #52042: <==closure== 87351 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #62126: <==commonly_known== 75398 (neg)
                    (Pc_checked_p4)

                    ; #64478: <==commonly_known== 22251 (pos)
                    (Bd_checked_p4)

                    ; #67757: <==commonly_known== 22251 (pos)
                    (Bb_checked_p4)

                    ; #87351: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #90105: <==commonly_known== 75398 (neg)
                    (Pd_checked_p4)

                    ; #11235: <==uncertain_firing== 13698 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #12069: <==negation-removal== 33323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #13452: <==negation-removal== 62126 (pos)
                    (not (Bc_not_checked_p4))

                    ; #28471: <==uncertain_firing== 30382 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29044: <==negation-removal== 30382 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #31340: <==negation-removal== 67757 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37256: <==negation-removal== 50353 (pos)
                    (not (Pc_not_checked_p4))

                    ; #44193: <==negation-removal== 13698 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45638: <==negation-removal== 64478 (pos)
                    (not (Pd_not_checked_p4))

                    ; #45896: <==uncertain_firing== 52042 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #67611: <==uncertain_firing== 87351 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #69196: <==negation-removal== 87351 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #75117: <==negation-removal== 52042 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75398: <==negation-removal== 22251 (pos)
                    (not (not_checked_p4))

                    ; #79711: <==negation-removal== 90105 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80074: <==negation-removal== 23351 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84865: <==negation-removal== 46783 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11833: origin
                    (checked_p5)

                    ; #13429: <==commonly_known== 44160 (neg)
                    (Pa_checked_p5)

                    ; #15512: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #27854: <==commonly_known== 11833 (pos)
                    (Ba_checked_p5)

                    ; #29902: <==closure== 15512 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #42117: <==closure== 59815 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #43235: <==commonly_known== 44160 (neg)
                    (Pc_checked_p5)

                    ; #49567: <==commonly_known== 11833 (pos)
                    (Bc_checked_p5)

                    ; #57981: <==commonly_known== 44160 (neg)
                    (Pb_checked_p5)

                    ; #59815: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #62987: <==commonly_known== 11833 (pos)
                    (Bd_checked_p5)

                    ; #76442: <==commonly_known== 44160 (neg)
                    (Pd_checked_p5)

                    ; #92085: <==commonly_known== 11833 (pos)
                    (Bb_checked_p5)

                    ; #13095: <==uncertain_firing== 15512 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #17952: <==negation-removal== 29902 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #26103: <==negation-removal== 62987 (pos)
                    (not (Pd_not_checked_p5))

                    ; #26806: <==negation-removal== 42117 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #44160: <==negation-removal== 11833 (pos)
                    (not (not_checked_p5))

                    ; #44471: <==negation-removal== 43235 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52504: <==negation-removal== 49567 (pos)
                    (not (Pc_not_checked_p5))

                    ; #53458: <==negation-removal== 15512 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #55764: <==negation-removal== 57981 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58806: <==negation-removal== 27854 (pos)
                    (not (Pa_not_checked_p5))

                    ; #62859: <==negation-removal== 76442 (pos)
                    (not (Bd_not_checked_p5))

                    ; #71241: <==negation-removal== 92085 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74264: <==uncertain_firing== 29902 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #75292: <==uncertain_firing== 59815 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76989: <==uncertain_firing== 42117 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #79967: <==negation-removal== 13429 (pos)
                    (not (Ba_not_checked_p5))

                    ; #88322: <==negation-removal== 59815 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #15525: <==closure== 41626 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #15753: <==closure== 71598 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #23169: <==commonly_known== 63786 (neg)
                    (Pc_checked_p6)

                    ; #23899: <==commonly_known== 68647 (pos)
                    (Ba_checked_p6)

                    ; #33111: <==commonly_known== 63786 (neg)
                    (Pa_checked_p6)

                    ; #41626: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #47724: <==commonly_known== 68647 (pos)
                    (Bc_checked_p6)

                    ; #48391: <==commonly_known== 68647 (pos)
                    (Bd_checked_p6)

                    ; #63798: <==commonly_known== 68647 (pos)
                    (Bb_checked_p6)

                    ; #68647: origin
                    (checked_p6)

                    ; #71513: <==commonly_known== 63786 (neg)
                    (Pb_checked_p6)

                    ; #71598: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #89453: <==commonly_known== 63786 (neg)
                    (Pd_checked_p6)

                    ; #15715: <==negation-removal== 71513 (pos)
                    (not (Bb_not_checked_p6))

                    ; #17819: <==negation-removal== 33111 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27920: <==uncertain_firing== 15525 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #28739: <==negation-removal== 23169 (pos)
                    (not (Bc_not_checked_p6))

                    ; #28770: <==uncertain_firing== 41626 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36226: <==negation-removal== 89453 (pos)
                    (not (Bd_not_checked_p6))

                    ; #46291: <==negation-removal== 23899 (pos)
                    (not (Pa_not_checked_p6))

                    ; #62237: <==uncertain_firing== 71598 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #63786: <==negation-removal== 68647 (pos)
                    (not (not_checked_p6))

                    ; #66934: <==negation-removal== 71598 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #74483: <==negation-removal== 15753 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #77399: <==negation-removal== 63798 (pos)
                    (not (Pb_not_checked_p6))

                    ; #80954: <==negation-removal== 48391 (pos)
                    (not (Pd_not_checked_p6))

                    ; #83825: <==negation-removal== 15525 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #88725: <==negation-removal== 41626 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #89350: <==negation-removal== 47724 (pos)
                    (not (Pc_not_checked_p6))

                    ; #98374: <==uncertain_firing== 15753 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16530: <==commonly_known== 46952 (neg)
                    (Pd_checked_p7)

                    ; #23077: <==commonly_known== 68314 (pos)
                    (Bb_checked_p7)

                    ; #29771: <==closure== 62416 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #47011: <==commonly_known== 46952 (neg)
                    (Pa_checked_p7)

                    ; #53597: <==commonly_known== 68314 (pos)
                    (Bc_checked_p7)

                    ; #59213: <==commonly_known== 46952 (neg)
                    (Pb_checked_p7)

                    ; #62416: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #63636: <==commonly_known== 46952 (neg)
                    (Pc_checked_p7)

                    ; #68096: <==closure== 86901 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #68314: origin
                    (checked_p7)

                    ; #79420: <==commonly_known== 68314 (pos)
                    (Ba_checked_p7)

                    ; #82593: <==commonly_known== 68314 (pos)
                    (Bd_checked_p7)

                    ; #86901: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #13655: <==negation-removal== 86901 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #15127: <==negation-removal== 29771 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #20966: <==negation-removal== 16530 (pos)
                    (not (Bd_not_checked_p7))

                    ; #23330: <==negation-removal== 23077 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34843: <==negation-removal== 59213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38166: <==uncertain_firing== 62416 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #46198: <==negation-removal== 68096 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #46952: <==negation-removal== 68314 (pos)
                    (not (not_checked_p7))

                    ; #52072: <==uncertain_firing== 86901 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #54294: <==negation-removal== 63636 (pos)
                    (not (Bc_not_checked_p7))

                    ; #61963: <==negation-removal== 79420 (pos)
                    (not (Pa_not_checked_p7))

                    ; #68092: <==negation-removal== 62416 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #75429: <==negation-removal== 47011 (pos)
                    (not (Ba_not_checked_p7))

                    ; #77873: <==uncertain_firing== 68096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #83077: <==negation-removal== 82593 (pos)
                    (not (Pd_not_checked_p7))

                    ; #89960: <==uncertain_firing== 29771 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #92386: <==negation-removal== 53597 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16316: <==closure== 60856 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #25799: <==commonly_known== 30635 (neg)
                    (Pb_checked_p8)

                    ; #43475: <==commonly_known== 95508 (pos)
                    (Bb_checked_p8)

                    ; #49373: <==closure== 55650 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #51354: <==commonly_known== 30635 (neg)
                    (Pa_checked_p8)

                    ; #55650: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #56432: <==commonly_known== 95508 (pos)
                    (Ba_checked_p8)

                    ; #59691: <==commonly_known== 30635 (neg)
                    (Pd_checked_p8)

                    ; #60856: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #78250: <==commonly_known== 95508 (pos)
                    (Bc_checked_p8)

                    ; #80242: <==commonly_known== 30635 (neg)
                    (Pc_checked_p8)

                    ; #89620: <==commonly_known== 95508 (pos)
                    (Bd_checked_p8)

                    ; #95508: origin
                    (checked_p8)

                    ; #30635: <==negation-removal== 95508 (pos)
                    (not (not_checked_p8))

                    ; #31267: <==negation-removal== 78250 (pos)
                    (not (Pc_not_checked_p8))

                    ; #32318: <==negation-removal== 60856 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #35899: <==negation-removal== 43475 (pos)
                    (not (Pb_not_checked_p8))

                    ; #36108: <==negation-removal== 56432 (pos)
                    (not (Pa_not_checked_p8))

                    ; #40155: <==uncertain_firing== 55650 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #42415: <==negation-removal== 49373 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #49615: <==negation-removal== 25799 (pos)
                    (not (Bb_not_checked_p8))

                    ; #50798: <==negation-removal== 55650 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #54840: <==uncertain_firing== 49373 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #56674: <==uncertain_firing== 60856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #64302: <==negation-removal== 51354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #72440: <==negation-removal== 80242 (pos)
                    (not (Bc_not_checked_p8))

                    ; #77202: <==negation-removal== 89620 (pos)
                    (not (Pd_not_checked_p8))

                    ; #82524: <==negation-removal== 16316 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #82790: <==negation-removal== 59691 (pos)
                    (not (Bd_not_checked_p8))

                    ; #87737: <==uncertain_firing== 16316 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14724: <==commonly_known== 77167 (neg)
                    (Pa_checked_p9)

                    ; #24457: <==commonly_known== 77167 (neg)
                    (Pd_checked_p9)

                    ; #40628: <==commonly_known== 77167 (neg)
                    (Pc_checked_p9)

                    ; #41110: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #45210: origin
                    (checked_p9)

                    ; #47649: <==commonly_known== 45210 (pos)
                    (Bb_checked_p9)

                    ; #53204: <==commonly_known== 45210 (pos)
                    (Bd_checked_p9)

                    ; #54095: <==commonly_known== 77167 (neg)
                    (Pb_checked_p9)

                    ; #55473: <==closure== 41110 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #60670: <==commonly_known== 45210 (pos)
                    (Bc_checked_p9)

                    ; #61766: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #72886: <==commonly_known== 45210 (pos)
                    (Ba_checked_p9)

                    ; #94561: <==closure== 61766 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #26677: <==negation-removal== 61766 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #26967: <==uncertain_firing== 55473 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #32835: <==negation-removal== 54095 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33400: <==negation-removal== 47649 (pos)
                    (not (Pb_not_checked_p9))

                    ; #35538: <==negation-removal== 14724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #38784: <==uncertain_firing== 41110 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #44728: <==negation-removal== 94561 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #54072: <==negation-removal== 72886 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56759: <==negation-removal== 40628 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57017: <==negation-removal== 60670 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58959: <==uncertain_firing== 94561 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #59582: <==negation-removal== 55473 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #60419: <==negation-removal== 53204 (pos)
                    (not (Pd_not_checked_p9))

                    ; #64217: <==uncertain_firing== 61766 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #77167: <==negation-removal== 45210 (pos)
                    (not (not_checked_p9))

                    ; #86183: <==negation-removal== 24457 (pos)
                    (not (Bd_not_checked_p9))

                    ; #92101: <==negation-removal== 41110 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #14949: <==closure== 82791 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #21729: <==commonly_known== 70475 (pos)
                    (Bc_checked_p10)

                    ; #32778: <==commonly_known== 70475 (pos)
                    (Ba_checked_p10)

                    ; #33897: <==commonly_known== 70475 (pos)
                    (Bd_checked_p10)

                    ; #37282: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #45514: <==closure== 37282 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #50304: <==commonly_known== 56831 (neg)
                    (Pb_checked_p10)

                    ; #62382: <==commonly_known== 56831 (neg)
                    (Pd_checked_p10)

                    ; #68507: <==commonly_known== 56831 (neg)
                    (Pc_checked_p10)

                    ; #69031: <==commonly_known== 56831 (neg)
                    (Pa_checked_p10)

                    ; #70475: origin
                    (checked_p10)

                    ; #74554: <==commonly_known== 70475 (pos)
                    (Bb_checked_p10)

                    ; #82791: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #19463: <==negation-removal== 62382 (pos)
                    (not (Bd_not_checked_p10))

                    ; #22248: <==uncertain_firing== 82791 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #29224: <==negation-removal== 69031 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33742: <==negation-removal== 68507 (pos)
                    (not (Bc_not_checked_p10))

                    ; #35314: <==negation-removal== 82791 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #39044: <==negation-removal== 33897 (pos)
                    (not (Pd_not_checked_p10))

                    ; #39675: <==uncertain_firing== 14949 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #44618: <==negation-removal== 50304 (pos)
                    (not (Bb_not_checked_p10))

                    ; #49967: <==negation-removal== 32778 (pos)
                    (not (Pa_not_checked_p10))

                    ; #52479: <==negation-removal== 74554 (pos)
                    (not (Pb_not_checked_p10))

                    ; #56831: <==negation-removal== 70475 (pos)
                    (not (not_checked_p10))

                    ; #65126: <==uncertain_firing== 37282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #68853: <==negation-removal== 14949 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #69257: <==negation-removal== 45514 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #71642: <==negation-removal== 21729 (pos)
                    (not (Pc_not_checked_p10))

                    ; #77351: <==uncertain_firing== 45514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #82318: <==negation-removal== 37282 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10537: <==commonly_known== 26257 (pos)
                    (Bb_checked_p11)

                    ; #11732: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #16826: <==commonly_known== 99526 (neg)
                    (Pc_checked_p11)

                    ; #26257: origin
                    (checked_p11)

                    ; #35289: <==commonly_known== 26257 (pos)
                    (Bc_checked_p11)

                    ; #50844: <==commonly_known== 99526 (neg)
                    (Pb_checked_p11)

                    ; #58005: <==commonly_known== 99526 (neg)
                    (Pd_checked_p11)

                    ; #61476: <==commonly_known== 26257 (pos)
                    (Ba_checked_p11)

                    ; #69425: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #70333: <==closure== 69425 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #78900: <==closure== 11732 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #85529: <==commonly_known== 26257 (pos)
                    (Bd_checked_p11)

                    ; #87051: <==commonly_known== 99526 (neg)
                    (Pa_checked_p11)

                    ; #13342: <==negation-removal== 58005 (pos)
                    (not (Bd_not_checked_p11))

                    ; #14806: <==negation-removal== 87051 (pos)
                    (not (Ba_not_checked_p11))

                    ; #14904: <==negation-removal== 11732 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #37462: <==uncertain_firing== 78900 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #42868: <==uncertain_firing== 70333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #46350: <==uncertain_firing== 69425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #51703: <==negation-removal== 69425 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #52462: <==negation-removal== 78900 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #60845: <==negation-removal== 50844 (pos)
                    (not (Bb_not_checked_p11))

                    ; #72817: <==uncertain_firing== 11732 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #77584: <==negation-removal== 16826 (pos)
                    (not (Bc_not_checked_p11))

                    ; #79244: <==negation-removal== 61476 (pos)
                    (not (Pa_not_checked_p11))

                    ; #80896: <==negation-removal== 35289 (pos)
                    (not (Pc_not_checked_p11))

                    ; #88495: <==negation-removal== 10537 (pos)
                    (not (Pb_not_checked_p11))

                    ; #92086: <==negation-removal== 70333 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #97655: <==negation-removal== 85529 (pos)
                    (not (Pd_not_checked_p11))

                    ; #99526: <==negation-removal== 26257 (pos)
                    (not (not_checked_p11))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12455: <==commonly_known== 85956 (pos)
                    (Bd_checked_p12)

                    ; #14264: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #24485: <==commonly_known== 78345 (neg)
                    (Pa_checked_p12)

                    ; #34103: <==commonly_known== 78345 (neg)
                    (Pd_checked_p12)

                    ; #44370: <==commonly_known== 85956 (pos)
                    (Bc_checked_p12)

                    ; #46755: <==closure== 83789 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #48290: <==commonly_known== 85956 (pos)
                    (Bb_checked_p12)

                    ; #57977: <==commonly_known== 78345 (neg)
                    (Pb_checked_p12)

                    ; #65419: <==commonly_known== 78345 (neg)
                    (Pc_checked_p12)

                    ; #67467: <==closure== 14264 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #83789: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #85956: origin
                    (checked_p12)

                    ; #87870: <==commonly_known== 85956 (pos)
                    (Ba_checked_p12)

                    ; #14030: <==uncertain_firing== 14264 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #20789: <==negation-removal== 87870 (pos)
                    (not (Pa_not_checked_p12))

                    ; #25148: <==negation-removal== 24485 (pos)
                    (not (Ba_not_checked_p12))

                    ; #26546: <==negation-removal== 57977 (pos)
                    (not (Bb_not_checked_p12))

                    ; #27447: <==negation-removal== 67467 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #28734: <==negation-removal== 12455 (pos)
                    (not (Pd_not_checked_p12))

                    ; #49302: <==uncertain_firing== 67467 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #53664: <==negation-removal== 83789 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #54564: <==uncertain_firing== 83789 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #58254: <==negation-removal== 14264 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #64365: <==negation-removal== 65419 (pos)
                    (not (Bc_not_checked_p12))

                    ; #69170: <==uncertain_firing== 46755 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #72712: <==negation-removal== 48290 (pos)
                    (not (Pb_not_checked_p12))

                    ; #77913: <==negation-removal== 44370 (pos)
                    (not (Pc_not_checked_p12))

                    ; #78345: <==negation-removal== 85956 (pos)
                    (not (not_checked_p12))

                    ; #78539: <==negation-removal== 34103 (pos)
                    (not (Bd_not_checked_p12))

                    ; #89747: <==negation-removal== 46755 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14854: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #20741: <==commonly_known== 89100 (neg)
                    (Pa_checked_p1)

                    ; #30911: <==commonly_known== 89100 (neg)
                    (Pc_checked_p1)

                    ; #36557: <==commonly_known== 89100 (neg)
                    (Pd_checked_p1)

                    ; #44063: origin
                    (checked_p1)

                    ; #55511: <==closure== 14854 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #64128: <==commonly_known== 44063 (pos)
                    (Bb_checked_p1)

                    ; #68031: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #68161: <==closure== 68031 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #71347: <==commonly_known== 89100 (neg)
                    (Pb_checked_p1)

                    ; #76564: <==commonly_known== 44063 (pos)
                    (Bd_checked_p1)

                    ; #79348: <==commonly_known== 44063 (pos)
                    (Ba_checked_p1)

                    ; #92119: <==commonly_known== 44063 (pos)
                    (Bc_checked_p1)

                    ; #11356: <==negation-removal== 30911 (pos)
                    (not (Bc_not_checked_p1))

                    ; #16686: <==negation-removal== 55511 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #25082: <==negation-removal== 76564 (pos)
                    (not (Pd_not_checked_p1))

                    ; #25758: <==negation-removal== 20741 (pos)
                    (not (Ba_not_checked_p1))

                    ; #35102: <==negation-removal== 68031 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #40631: <==negation-removal== 64128 (pos)
                    (not (Pb_not_checked_p1))

                    ; #43698: <==negation-removal== 36557 (pos)
                    (not (Bd_not_checked_p1))

                    ; #47080: <==uncertain_firing== 68161 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #48071: <==negation-removal== 92119 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53220: <==uncertain_firing== 68031 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #57972: <==negation-removal== 71347 (pos)
                    (not (Bb_not_checked_p1))

                    ; #68919: <==uncertain_firing== 14854 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #71974: <==negation-removal== 68161 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #77367: <==uncertain_firing== 55511 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #81364: <==negation-removal== 14854 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #88387: <==negation-removal== 79348 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89100: <==negation-removal== 44063 (pos)
                    (not (not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #21792: <==commonly_known== 37499 (pos)
                    (Bb_checked_p2)

                    ; #22353: <==commonly_known== 47424 (neg)
                    (Pa_checked_p2)

                    ; #29804: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #37499: origin
                    (checked_p2)

                    ; #46697: <==closure== 85926 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #46797: <==commonly_known== 47424 (neg)
                    (Pd_checked_p2)

                    ; #48689: <==commonly_known== 37499 (pos)
                    (Bd_checked_p2)

                    ; #63540: <==commonly_known== 37499 (pos)
                    (Bc_checked_p2)

                    ; #72555: <==commonly_known== 37499 (pos)
                    (Ba_checked_p2)

                    ; #80218: <==commonly_known== 47424 (neg)
                    (Pc_checked_p2)

                    ; #80369: <==closure== 29804 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #85926: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #88148: <==commonly_known== 47424 (neg)
                    (Pb_checked_p2)

                    ; #12419: <==uncertain_firing== 80369 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #31305: <==negation-removal== 22353 (pos)
                    (not (Ba_not_checked_p2))

                    ; #33903: <==negation-removal== 46697 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #37408: <==negation-removal== 72555 (pos)
                    (not (Pa_not_checked_p2))

                    ; #42254: <==uncertain_firing== 29804 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #45215: <==negation-removal== 29804 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #47424: <==negation-removal== 37499 (pos)
                    (not (not_checked_p2))

                    ; #49230: <==negation-removal== 63540 (pos)
                    (not (Pc_not_checked_p2))

                    ; #50330: <==uncertain_firing== 46697 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #52893: <==negation-removal== 85926 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #54605: <==negation-removal== 80218 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62032: <==negation-removal== 46797 (pos)
                    (not (Bd_not_checked_p2))

                    ; #62808: <==uncertain_firing== 85926 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #75726: <==negation-removal== 21792 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81080: <==negation-removal== 88148 (pos)
                    (not (Bb_not_checked_p2))

                    ; #82039: <==negation-removal== 48689 (pos)
                    (not (Pd_not_checked_p2))

                    ; #91191: <==negation-removal== 80369 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11038: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #16856: <==commonly_known== 25260 (neg)
                    (Pa_checked_p3)

                    ; #18696: <==commonly_known== 80356 (pos)
                    (Ba_checked_p3)

                    ; #20691: <==commonly_known== 80356 (pos)
                    (Bb_checked_p3)

                    ; #32658: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #33584: <==commonly_known== 25260 (neg)
                    (Pd_checked_p3)

                    ; #37714: <==commonly_known== 80356 (pos)
                    (Bd_checked_p3)

                    ; #50263: <==closure== 11038 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #54229: <==commonly_known== 25260 (neg)
                    (Pb_checked_p3)

                    ; #59123: <==commonly_known== 25260 (neg)
                    (Pc_checked_p3)

                    ; #63123: <==commonly_known== 80356 (pos)
                    (Bc_checked_p3)

                    ; #80356: origin
                    (checked_p3)

                    ; #84951: <==closure== 32658 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #13567: <==negation-removal== 18696 (pos)
                    (not (Pa_not_checked_p3))

                    ; #13839: <==negation-removal== 37714 (pos)
                    (not (Pd_not_checked_p3))

                    ; #24791: <==negation-removal== 16856 (pos)
                    (not (Ba_not_checked_p3))

                    ; #25260: <==negation-removal== 80356 (pos)
                    (not (not_checked_p3))

                    ; #26068: <==uncertain_firing== 84951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #27656: <==negation-removal== 84951 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #31173: <==negation-removal== 20691 (pos)
                    (not (Pb_not_checked_p3))

                    ; #35341: <==uncertain_firing== 11038 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #37904: <==negation-removal== 11038 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #53840: <==uncertain_firing== 32658 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #54483: <==negation-removal== 33584 (pos)
                    (not (Bd_not_checked_p3))

                    ; #58866: <==negation-removal== 50263 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #72732: <==negation-removal== 54229 (pos)
                    (not (Bb_not_checked_p3))

                    ; #72857: <==negation-removal== 63123 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75563: <==uncertain_firing== 50263 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #82475: <==negation-removal== 32658 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #90881: <==negation-removal== 59123 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16254: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #22251: origin
                    (checked_p4)

                    ; #23351: <==commonly_known== 22251 (pos)
                    (Ba_checked_p4)

                    ; #27728: <==closure== 16254 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #33323: <==commonly_known== 75398 (neg)
                    (Pb_checked_p4)

                    ; #46783: <==commonly_known== 75398 (neg)
                    (Pa_checked_p4)

                    ; #50353: <==commonly_known== 22251 (pos)
                    (Bc_checked_p4)

                    ; #53845: <==closure== 78747 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #62126: <==commonly_known== 75398 (neg)
                    (Pc_checked_p4)

                    ; #64478: <==commonly_known== 22251 (pos)
                    (Bd_checked_p4)

                    ; #67757: <==commonly_known== 22251 (pos)
                    (Bb_checked_p4)

                    ; #78747: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #90105: <==commonly_known== 75398 (neg)
                    (Pd_checked_p4)

                    ; #12069: <==negation-removal== 33323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #12858: <==uncertain_firing== 78747 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #13452: <==negation-removal== 62126 (pos)
                    (not (Bc_not_checked_p4))

                    ; #13641: <==uncertain_firing== 53845 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #21905: <==negation-removal== 78747 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #31340: <==negation-removal== 67757 (pos)
                    (not (Pb_not_checked_p4))

                    ; #37256: <==negation-removal== 50353 (pos)
                    (not (Pc_not_checked_p4))

                    ; #45638: <==negation-removal== 64478 (pos)
                    (not (Pd_not_checked_p4))

                    ; #47504: <==negation-removal== 16254 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #47518: <==negation-removal== 27728 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #65835: <==negation-removal== 53845 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #67348: <==uncertain_firing== 27728 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #73324: <==uncertain_firing== 16254 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #75398: <==negation-removal== 22251 (pos)
                    (not (not_checked_p4))

                    ; #79711: <==negation-removal== 90105 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80074: <==negation-removal== 23351 (pos)
                    (not (Pa_not_checked_p4))

                    ; #84865: <==negation-removal== 46783 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11833: origin
                    (checked_p5)

                    ; #13429: <==commonly_known== 44160 (neg)
                    (Pa_checked_p5)

                    ; #20049: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #25681: <==closure== 20049 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #27854: <==commonly_known== 11833 (pos)
                    (Ba_checked_p5)

                    ; #43235: <==commonly_known== 44160 (neg)
                    (Pc_checked_p5)

                    ; #43965: <==closure== 73119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #49567: <==commonly_known== 11833 (pos)
                    (Bc_checked_p5)

                    ; #57981: <==commonly_known== 44160 (neg)
                    (Pb_checked_p5)

                    ; #62987: <==commonly_known== 11833 (pos)
                    (Bd_checked_p5)

                    ; #73119: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #76442: <==commonly_known== 44160 (neg)
                    (Pd_checked_p5)

                    ; #92085: <==commonly_known== 11833 (pos)
                    (Bb_checked_p5)

                    ; #19401: <==uncertain_firing== 73119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #21340: <==negation-removal== 73119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #26103: <==negation-removal== 62987 (pos)
                    (not (Pd_not_checked_p5))

                    ; #43909: <==negation-removal== 25681 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #44160: <==negation-removal== 11833 (pos)
                    (not (not_checked_p5))

                    ; #44471: <==negation-removal== 43235 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52504: <==negation-removal== 49567 (pos)
                    (not (Pc_not_checked_p5))

                    ; #55764: <==negation-removal== 57981 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58806: <==negation-removal== 27854 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60439: <==negation-removal== 43965 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #62859: <==negation-removal== 76442 (pos)
                    (not (Bd_not_checked_p5))

                    ; #71241: <==negation-removal== 92085 (pos)
                    (not (Pb_not_checked_p5))

                    ; #72711: <==negation-removal== 20049 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #76623: <==uncertain_firing== 43965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #79967: <==negation-removal== 13429 (pos)
                    (not (Ba_not_checked_p5))

                    ; #80874: <==uncertain_firing== 20049 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #88683: <==uncertain_firing== 25681 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22461: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #23169: <==commonly_known== 63786 (neg)
                    (Pc_checked_p6)

                    ; #23899: <==commonly_known== 68647 (pos)
                    (Ba_checked_p6)

                    ; #25371: <==closure== 50289 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #31372: <==closure== 22461 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #33111: <==commonly_known== 63786 (neg)
                    (Pa_checked_p6)

                    ; #47724: <==commonly_known== 68647 (pos)
                    (Bc_checked_p6)

                    ; #48391: <==commonly_known== 68647 (pos)
                    (Bd_checked_p6)

                    ; #50289: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #63798: <==commonly_known== 68647 (pos)
                    (Bb_checked_p6)

                    ; #68647: origin
                    (checked_p6)

                    ; #71513: <==commonly_known== 63786 (neg)
                    (Pb_checked_p6)

                    ; #89453: <==commonly_known== 63786 (neg)
                    (Pd_checked_p6)

                    ; #14796: <==negation-removal== 31372 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #15715: <==negation-removal== 71513 (pos)
                    (not (Bb_not_checked_p6))

                    ; #17819: <==negation-removal== 33111 (pos)
                    (not (Ba_not_checked_p6))

                    ; #18931: <==negation-removal== 25371 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #28739: <==negation-removal== 23169 (pos)
                    (not (Bc_not_checked_p6))

                    ; #33551: <==uncertain_firing== 50289 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #33934: <==uncertain_firing== 25371 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #36226: <==negation-removal== 89453 (pos)
                    (not (Bd_not_checked_p6))

                    ; #46291: <==negation-removal== 23899 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63786: <==negation-removal== 68647 (pos)
                    (not (not_checked_p6))

                    ; #73049: <==negation-removal== 50289 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #77399: <==negation-removal== 63798 (pos)
                    (not (Pb_not_checked_p6))

                    ; #79261: <==uncertain_firing== 22461 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #80658: <==uncertain_firing== 31372 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #80954: <==negation-removal== 48391 (pos)
                    (not (Pd_not_checked_p6))

                    ; #87630: <==negation-removal== 22461 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #89350: <==negation-removal== 47724 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16530: <==commonly_known== 46952 (neg)
                    (Pd_checked_p7)

                    ; #23077: <==commonly_known== 68314 (pos)
                    (Bb_checked_p7)

                    ; #28357: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #47011: <==commonly_known== 46952 (neg)
                    (Pa_checked_p7)

                    ; #53597: <==commonly_known== 68314 (pos)
                    (Bc_checked_p7)

                    ; #56492: <==closure== 83156 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #59213: <==commonly_known== 46952 (neg)
                    (Pb_checked_p7)

                    ; #63636: <==commonly_known== 46952 (neg)
                    (Pc_checked_p7)

                    ; #68314: origin
                    (checked_p7)

                    ; #79420: <==commonly_known== 68314 (pos)
                    (Ba_checked_p7)

                    ; #81442: <==closure== 28357 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #82593: <==commonly_known== 68314 (pos)
                    (Bd_checked_p7)

                    ; #83156: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #12400: <==negation-removal== 28357 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #20966: <==negation-removal== 16530 (pos)
                    (not (Bd_not_checked_p7))

                    ; #23330: <==negation-removal== 23077 (pos)
                    (not (Pb_not_checked_p7))

                    ; #34843: <==negation-removal== 59213 (pos)
                    (not (Bb_not_checked_p7))

                    ; #37209: <==negation-removal== 81442 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #37478: <==negation-removal== 56492 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #41799: <==uncertain_firing== 56492 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #43961: <==uncertain_firing== 81442 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #46952: <==negation-removal== 68314 (pos)
                    (not (not_checked_p7))

                    ; #54294: <==negation-removal== 63636 (pos)
                    (not (Bc_not_checked_p7))

                    ; #61963: <==negation-removal== 79420 (pos)
                    (not (Pa_not_checked_p7))

                    ; #75075: <==uncertain_firing== 28357 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #75429: <==negation-removal== 47011 (pos)
                    (not (Ba_not_checked_p7))

                    ; #83077: <==negation-removal== 82593 (pos)
                    (not (Pd_not_checked_p7))

                    ; #84203: <==negation-removal== 83156 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #91398: <==uncertain_firing== 83156 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #92386: <==negation-removal== 53597 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #22152: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #25799: <==commonly_known== 30635 (neg)
                    (Pb_checked_p8)

                    ; #43475: <==commonly_known== 95508 (pos)
                    (Bb_checked_p8)

                    ; #48272: <==closure== 49606 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #49606: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #51354: <==commonly_known== 30635 (neg)
                    (Pa_checked_p8)

                    ; #51924: <==closure== 22152 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #56432: <==commonly_known== 95508 (pos)
                    (Ba_checked_p8)

                    ; #59691: <==commonly_known== 30635 (neg)
                    (Pd_checked_p8)

                    ; #78250: <==commonly_known== 95508 (pos)
                    (Bc_checked_p8)

                    ; #80242: <==commonly_known== 30635 (neg)
                    (Pc_checked_p8)

                    ; #89620: <==commonly_known== 95508 (pos)
                    (Bd_checked_p8)

                    ; #95508: origin
                    (checked_p8)

                    ; #24874: <==uncertain_firing== 51924 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #30635: <==negation-removal== 95508 (pos)
                    (not (not_checked_p8))

                    ; #31267: <==negation-removal== 78250 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35899: <==negation-removal== 43475 (pos)
                    (not (Pb_not_checked_p8))

                    ; #36108: <==negation-removal== 56432 (pos)
                    (not (Pa_not_checked_p8))

                    ; #40838: <==negation-removal== 22152 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #41644: <==negation-removal== 49606 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #46456: <==uncertain_firing== 48272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #49615: <==negation-removal== 25799 (pos)
                    (not (Bb_not_checked_p8))

                    ; #51196: <==negation-removal== 51924 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #60746: <==uncertain_firing== 49606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #61641: <==uncertain_firing== 22152 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #64302: <==negation-removal== 51354 (pos)
                    (not (Ba_not_checked_p8))

                    ; #72440: <==negation-removal== 80242 (pos)
                    (not (Bc_not_checked_p8))

                    ; #74966: <==negation-removal== 48272 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #77202: <==negation-removal== 89620 (pos)
                    (not (Pd_not_checked_p8))

                    ; #82790: <==negation-removal== 59691 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10736: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #14724: <==commonly_known== 77167 (neg)
                    (Pa_checked_p9)

                    ; #24457: <==commonly_known== 77167 (neg)
                    (Pd_checked_p9)

                    ; #39073: <==closure== 10736 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #40628: <==commonly_known== 77167 (neg)
                    (Pc_checked_p9)

                    ; #45210: origin
                    (checked_p9)

                    ; #47649: <==commonly_known== 45210 (pos)
                    (Bb_checked_p9)

                    ; #53204: <==commonly_known== 45210 (pos)
                    (Bd_checked_p9)

                    ; #54095: <==commonly_known== 77167 (neg)
                    (Pb_checked_p9)

                    ; #60670: <==commonly_known== 45210 (pos)
                    (Bc_checked_p9)

                    ; #72359: <==closure== 91467 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #72886: <==commonly_known== 45210 (pos)
                    (Ba_checked_p9)

                    ; #91467: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #20714: <==negation-removal== 39073 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #32835: <==negation-removal== 54095 (pos)
                    (not (Bb_not_checked_p9))

                    ; #33400: <==negation-removal== 47649 (pos)
                    (not (Pb_not_checked_p9))

                    ; #35538: <==negation-removal== 14724 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42813: <==negation-removal== 91467 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #43988: <==negation-removal== 72359 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #54072: <==negation-removal== 72886 (pos)
                    (not (Pa_not_checked_p9))

                    ; #54769: <==uncertain_firing== 10736 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #56273: <==uncertain_firing== 39073 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #56759: <==negation-removal== 40628 (pos)
                    (not (Bc_not_checked_p9))

                    ; #57017: <==negation-removal== 60670 (pos)
                    (not (Pc_not_checked_p9))

                    ; #60419: <==negation-removal== 53204 (pos)
                    (not (Pd_not_checked_p9))

                    ; #60638: <==negation-removal== 10736 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #68175: <==uncertain_firing== 72359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #70369: <==uncertain_firing== 91467 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #77167: <==negation-removal== 45210 (pos)
                    (not (not_checked_p9))

                    ; #86183: <==negation-removal== 24457 (pos)
                    (not (Bd_not_checked_p9))))

)