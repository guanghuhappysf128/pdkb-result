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
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #12695: <==closure== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #13673: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #20814: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #42173: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #52355: <==closure== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #76828: <==closure== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #79967: <==closure== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #90482: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #18838: <==negation-removal== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22121: <==negation-removal== 12695 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #25435: <==negation-removal== 76828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25935: <==uncertain_firing== 76828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #26381: <==uncertain_firing== 79967 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #27780: <==uncertain_firing== 12695 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30959: <==negation-removal== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #41396: <==uncertain_firing== 13673 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49815: <==uncertain_firing== 52355 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 79967 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67209: <==uncertain_firing== 90482 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #71505: <==negation-removal== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75469: <==negation-removal== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #80154: <==uncertain_firing== 20814 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #86159: <==uncertain_firing== 42173 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89116: <==negation-removal== 52355 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #12695: <==closure== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #13673: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #20814: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #42173: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #52355: <==closure== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #76828: <==closure== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #79967: <==closure== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #90482: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #18838: <==negation-removal== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22121: <==negation-removal== 12695 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #25435: <==negation-removal== 76828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25935: <==uncertain_firing== 76828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #26381: <==uncertain_firing== 79967 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #27780: <==uncertain_firing== 12695 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30959: <==negation-removal== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #41396: <==uncertain_firing== 13673 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49815: <==uncertain_firing== 52355 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 79967 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67209: <==uncertain_firing== 90482 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #71505: <==negation-removal== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75469: <==negation-removal== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #80154: <==uncertain_firing== 20814 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #86159: <==uncertain_firing== 42173 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89116: <==negation-removal== 52355 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #12695: <==closure== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #13673: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #20814: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #42173: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #52355: <==closure== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #76828: <==closure== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #79967: <==closure== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #90482: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #18838: <==negation-removal== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22121: <==negation-removal== 12695 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #25435: <==negation-removal== 76828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25935: <==uncertain_firing== 76828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #26381: <==uncertain_firing== 79967 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #27780: <==uncertain_firing== 12695 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30959: <==negation-removal== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #41396: <==uncertain_firing== 13673 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49815: <==uncertain_firing== 52355 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 79967 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67209: <==uncertain_firing== 90482 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #71505: <==negation-removal== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75469: <==negation-removal== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #80154: <==uncertain_firing== 20814 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #86159: <==uncertain_firing== 42173 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89116: <==negation-removal== 52355 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #12695: <==closure== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #13673: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #20814: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #42173: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #52355: <==closure== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #76828: <==closure== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #79967: <==closure== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #90482: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #18838: <==negation-removal== 90482 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #22121: <==negation-removal== 12695 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #25435: <==negation-removal== 76828 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #25935: <==uncertain_firing== 76828 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #26381: <==uncertain_firing== 79967 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #27780: <==uncertain_firing== 12695 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30959: <==negation-removal== 13673 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #41396: <==uncertain_firing== 13673 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #49815: <==uncertain_firing== 52355 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #53583: <==negation-removal== 79967 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #67209: <==uncertain_firing== 90482 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #71505: <==negation-removal== 20814 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #75469: <==negation-removal== 42173 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #80154: <==uncertain_firing== 20814 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #86159: <==uncertain_firing== 42173 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89116: <==negation-removal== 52355 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #27336: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #30326: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #32355: <==closure== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #34582: <==closure== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #48867: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #52466: <==closure== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #62149: <==closure== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #79743: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16489: <==uncertain_firing== 34582 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #19584: <==negation-removal== 62149 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #24561: <==negation-removal== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #29046: <==negation-removal== 52466 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #31272: <==uncertain_firing== 62149 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #37050: <==negation-removal== 34582 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #40468: <==negation-removal== 32355 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #40551: <==uncertain_firing== 30326 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50509: <==negation-removal== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50690: <==uncertain_firing== 79743 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #51853: <==negation-removal== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53965: <==uncertain_firing== 52466 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54921: <==uncertain_firing== 48867 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #65455: <==negation-removal== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #67163: <==uncertain_firing== 32355 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #74445: <==uncertain_firing== 27336 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #27336: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #30326: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #32355: <==closure== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #34582: <==closure== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #48867: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #52466: <==closure== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #62149: <==closure== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #79743: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16489: <==uncertain_firing== 34582 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #19584: <==negation-removal== 62149 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #24561: <==negation-removal== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #29046: <==negation-removal== 52466 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #31272: <==uncertain_firing== 62149 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #37050: <==negation-removal== 34582 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #40468: <==negation-removal== 32355 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #40551: <==uncertain_firing== 30326 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50509: <==negation-removal== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50690: <==uncertain_firing== 79743 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #51853: <==negation-removal== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53965: <==uncertain_firing== 52466 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54921: <==uncertain_firing== 48867 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #65455: <==negation-removal== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #67163: <==uncertain_firing== 32355 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #74445: <==uncertain_firing== 27336 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #27336: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #30326: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #32355: <==closure== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #34582: <==closure== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #48867: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #52466: <==closure== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #62149: <==closure== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #79743: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16489: <==uncertain_firing== 34582 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #19584: <==negation-removal== 62149 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #24561: <==negation-removal== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #29046: <==negation-removal== 52466 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #31272: <==uncertain_firing== 62149 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #37050: <==negation-removal== 34582 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #40468: <==negation-removal== 32355 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #40551: <==uncertain_firing== 30326 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50509: <==negation-removal== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50690: <==uncertain_firing== 79743 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #51853: <==negation-removal== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53965: <==uncertain_firing== 52466 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54921: <==uncertain_firing== 48867 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #65455: <==negation-removal== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #67163: <==uncertain_firing== 32355 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #74445: <==uncertain_firing== 27336 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #27336: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #30326: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #32355: <==closure== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #34582: <==closure== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #48867: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #52466: <==closure== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #62149: <==closure== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #79743: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16489: <==uncertain_firing== 34582 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #19584: <==negation-removal== 62149 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #24561: <==negation-removal== 27336 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #29046: <==negation-removal== 52466 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #31272: <==uncertain_firing== 62149 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #37050: <==negation-removal== 34582 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #40468: <==negation-removal== 32355 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #40551: <==uncertain_firing== 30326 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50509: <==negation-removal== 30326 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #50690: <==uncertain_firing== 79743 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #51853: <==negation-removal== 79743 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #53965: <==uncertain_firing== 52466 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #54921: <==uncertain_firing== 48867 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #65455: <==negation-removal== 48867 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #67163: <==uncertain_firing== 32355 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #74445: <==uncertain_firing== 27336 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #15921: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #25252: <==closure== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #40415: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #42805: <==closure== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #43035: <==closure== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #56351: <==closure== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #63687: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #74004: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10852: <==uncertain_firing== 43035 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #13644: <==negation-removal== 42805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #14468: <==negation-removal== 25252 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #28448: <==negation-removal== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28472: <==uncertain_firing== 15921 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #29779: <==negation-removal== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31954: <==uncertain_firing== 25252 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #38760: <==uncertain_firing== 40415 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #41488: <==uncertain_firing== 63687 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #50243: <==negation-removal== 43035 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #54510: <==negation-removal== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65121: <==uncertain_firing== 42805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67342: <==negation-removal== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #76631: <==uncertain_firing== 56351 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #80967: <==negation-removal== 56351 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #88611: <==uncertain_firing== 74004 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #15921: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #25252: <==closure== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #40415: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #42805: <==closure== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #43035: <==closure== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #56351: <==closure== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #63687: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #74004: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10852: <==uncertain_firing== 43035 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #13644: <==negation-removal== 42805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #14468: <==negation-removal== 25252 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #28448: <==negation-removal== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28472: <==uncertain_firing== 15921 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #29779: <==negation-removal== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31954: <==uncertain_firing== 25252 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #38760: <==uncertain_firing== 40415 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #41488: <==uncertain_firing== 63687 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #50243: <==negation-removal== 43035 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #54510: <==negation-removal== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65121: <==uncertain_firing== 42805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67342: <==negation-removal== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #76631: <==uncertain_firing== 56351 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #80967: <==negation-removal== 56351 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #88611: <==uncertain_firing== 74004 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #15921: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #25252: <==closure== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #40415: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #42805: <==closure== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #43035: <==closure== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #56351: <==closure== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #63687: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #74004: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10852: <==uncertain_firing== 43035 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #13644: <==negation-removal== 42805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #14468: <==negation-removal== 25252 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #28448: <==negation-removal== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28472: <==uncertain_firing== 15921 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #29779: <==negation-removal== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31954: <==uncertain_firing== 25252 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #38760: <==uncertain_firing== 40415 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #41488: <==uncertain_firing== 63687 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #50243: <==negation-removal== 43035 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #54510: <==negation-removal== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65121: <==uncertain_firing== 42805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67342: <==negation-removal== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #76631: <==uncertain_firing== 56351 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #80967: <==negation-removal== 56351 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #88611: <==uncertain_firing== 74004 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #15921: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #25252: <==closure== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #40415: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #42805: <==closure== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #43035: <==closure== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #56351: <==closure== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #63687: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #74004: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10852: <==uncertain_firing== 43035 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #13644: <==negation-removal== 42805 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #14468: <==negation-removal== 25252 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #28448: <==negation-removal== 63687 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #28472: <==uncertain_firing== 15921 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #29779: <==negation-removal== 74004 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #31954: <==uncertain_firing== 25252 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #38760: <==uncertain_firing== 40415 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #41488: <==uncertain_firing== 63687 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #50243: <==negation-removal== 43035 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #54510: <==negation-removal== 40415 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #65121: <==uncertain_firing== 42805 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #67342: <==negation-removal== 15921 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #76631: <==uncertain_firing== 56351 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #80967: <==negation-removal== 56351 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #88611: <==uncertain_firing== 74004 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #15416: <==closure== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #21537: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #22433: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40885: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #57011: <==closure== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #57507: <==closure== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #62425: <==closure== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #88364: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #11648: <==uncertain_firing== 21537 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16715: <==negation-removal== 15416 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20609: <==uncertain_firing== 62425 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20858: <==uncertain_firing== 40885 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #24711: <==uncertain_firing== 88364 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32864: <==uncertain_firing== 15416 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36082: <==negation-removal== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54295: <==negation-removal== 62425 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65060: <==negation-removal== 57507 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65278: <==negation-removal== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65484: <==negation-removal== 57011 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #67631: <==uncertain_firing== 57507 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #80628: <==negation-removal== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #83442: <==uncertain_firing== 22433 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88074: <==uncertain_firing== 57011 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88493: <==negation-removal== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #15416: <==closure== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #21537: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #22433: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40885: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #57011: <==closure== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #57507: <==closure== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #62425: <==closure== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #88364: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #11648: <==uncertain_firing== 21537 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16715: <==negation-removal== 15416 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20609: <==uncertain_firing== 62425 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20858: <==uncertain_firing== 40885 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #24711: <==uncertain_firing== 88364 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32864: <==uncertain_firing== 15416 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36082: <==negation-removal== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54295: <==negation-removal== 62425 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65060: <==negation-removal== 57507 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65278: <==negation-removal== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65484: <==negation-removal== 57011 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #67631: <==uncertain_firing== 57507 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #80628: <==negation-removal== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #83442: <==uncertain_firing== 22433 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88074: <==uncertain_firing== 57011 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88493: <==negation-removal== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #15416: <==closure== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #21537: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #22433: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40885: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #57011: <==closure== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #57507: <==closure== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #62425: <==closure== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #88364: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #11648: <==uncertain_firing== 21537 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16715: <==negation-removal== 15416 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20609: <==uncertain_firing== 62425 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20858: <==uncertain_firing== 40885 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #24711: <==uncertain_firing== 88364 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32864: <==uncertain_firing== 15416 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36082: <==negation-removal== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54295: <==negation-removal== 62425 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65060: <==negation-removal== 57507 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65278: <==negation-removal== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65484: <==negation-removal== 57011 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #67631: <==uncertain_firing== 57507 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #80628: <==negation-removal== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #83442: <==uncertain_firing== 22433 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88074: <==uncertain_firing== 57011 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88493: <==negation-removal== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #15416: <==closure== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #21537: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #22433: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #40885: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #57011: <==closure== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #57507: <==closure== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #62425: <==closure== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #88364: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #11648: <==uncertain_firing== 21537 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #16715: <==negation-removal== 15416 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20609: <==uncertain_firing== 62425 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20858: <==uncertain_firing== 40885 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #24711: <==uncertain_firing== 88364 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #32864: <==uncertain_firing== 15416 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #36082: <==negation-removal== 88364 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54295: <==negation-removal== 62425 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65060: <==negation-removal== 57507 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #65278: <==negation-removal== 21537 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #65484: <==negation-removal== 57011 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #67631: <==uncertain_firing== 57507 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #80628: <==negation-removal== 40885 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #83442: <==uncertain_firing== 22433 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88074: <==uncertain_firing== 57011 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88493: <==negation-removal== 22433 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #26579: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40880: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #57876: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #58256: <==closure== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #60214: <==closure== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #74876: <==closure== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #85990: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #90279: <==closure== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #27220: <==uncertain_firing== 85990 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29574: <==uncertain_firing== 26579 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31723: <==uncertain_firing== 40880 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33051: <==negation-removal== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41728: <==uncertain_firing== 74876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #43034: <==negation-removal== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #45729: <==negation-removal== 90279 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52509: <==negation-removal== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #53266: <==uncertain_firing== 90279 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53884: <==negation-removal== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70440: <==negation-removal== 58256 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71025: <==uncertain_firing== 57876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #78070: <==negation-removal== 60214 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83356: <==uncertain_firing== 60214 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84600: <==negation-removal== 74876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89898: <==uncertain_firing== 58256 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #26579: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40880: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #57876: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #58256: <==closure== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #60214: <==closure== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #74876: <==closure== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #85990: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #90279: <==closure== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #27220: <==uncertain_firing== 85990 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29574: <==uncertain_firing== 26579 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31723: <==uncertain_firing== 40880 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33051: <==negation-removal== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41728: <==uncertain_firing== 74876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #43034: <==negation-removal== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #45729: <==negation-removal== 90279 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52509: <==negation-removal== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #53266: <==uncertain_firing== 90279 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53884: <==negation-removal== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70440: <==negation-removal== 58256 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71025: <==uncertain_firing== 57876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #78070: <==negation-removal== 60214 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83356: <==uncertain_firing== 60214 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84600: <==negation-removal== 74876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89898: <==uncertain_firing== 58256 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #26579: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40880: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #57876: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #58256: <==closure== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #60214: <==closure== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #74876: <==closure== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #85990: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #90279: <==closure== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #27220: <==uncertain_firing== 85990 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29574: <==uncertain_firing== 26579 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31723: <==uncertain_firing== 40880 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33051: <==negation-removal== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41728: <==uncertain_firing== 74876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #43034: <==negation-removal== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #45729: <==negation-removal== 90279 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52509: <==negation-removal== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #53266: <==uncertain_firing== 90279 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53884: <==negation-removal== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70440: <==negation-removal== 58256 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71025: <==uncertain_firing== 57876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #78070: <==negation-removal== 60214 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83356: <==uncertain_firing== 60214 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84600: <==negation-removal== 74876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89898: <==uncertain_firing== 58256 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #26579: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #40880: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #57876: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #58256: <==closure== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #60214: <==closure== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #74876: <==closure== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #85990: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #90279: <==closure== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #27220: <==uncertain_firing== 85990 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #29574: <==uncertain_firing== 26579 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #31723: <==uncertain_firing== 40880 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #33051: <==negation-removal== 40880 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41728: <==uncertain_firing== 74876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #43034: <==negation-removal== 85990 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #45729: <==negation-removal== 90279 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #52509: <==negation-removal== 57876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #53266: <==uncertain_firing== 90279 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53884: <==negation-removal== 26579 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #70440: <==negation-removal== 58256 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #71025: <==uncertain_firing== 57876 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #78070: <==negation-removal== 60214 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83356: <==uncertain_firing== 60214 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #84600: <==negation-removal== 74876 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89898: <==uncertain_firing== 58256 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #17032: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #37929: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #52384: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #69817: <==closure== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71424: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #71455: <==closure== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #85059: <==closure== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #94050: <==closure== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10258: <==uncertain_firing== 69817 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #10887: <==negation-removal== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #13817: <==negation-removal== 94050 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #16236: <==uncertain_firing== 17032 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35761: <==negation-removal== 85059 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44652: <==negation-removal== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46960: <==uncertain_firing== 71424 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49268: <==negation-removal== 71455 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #53030: <==uncertain_firing== 94050 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56310: <==uncertain_firing== 71455 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59349: <==negation-removal== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #71165: <==uncertain_firing== 85059 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71690: <==uncertain_firing== 37929 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #72614: <==negation-removal== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #73138: <==negation-removal== 69817 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75129: <==uncertain_firing== 52384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #17032: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #37929: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #52384: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #69817: <==closure== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71424: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #71455: <==closure== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #85059: <==closure== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #94050: <==closure== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10258: <==uncertain_firing== 69817 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #10887: <==negation-removal== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #13817: <==negation-removal== 94050 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #16236: <==uncertain_firing== 17032 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35761: <==negation-removal== 85059 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44652: <==negation-removal== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46960: <==uncertain_firing== 71424 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49268: <==negation-removal== 71455 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #53030: <==uncertain_firing== 94050 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56310: <==uncertain_firing== 71455 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59349: <==negation-removal== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #71165: <==uncertain_firing== 85059 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71690: <==uncertain_firing== 37929 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #72614: <==negation-removal== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #73138: <==negation-removal== 69817 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75129: <==uncertain_firing== 52384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #17032: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #37929: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #52384: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #69817: <==closure== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71424: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #71455: <==closure== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #85059: <==closure== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #94050: <==closure== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10258: <==uncertain_firing== 69817 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #10887: <==negation-removal== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #13817: <==negation-removal== 94050 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #16236: <==uncertain_firing== 17032 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35761: <==negation-removal== 85059 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44652: <==negation-removal== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46960: <==uncertain_firing== 71424 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49268: <==negation-removal== 71455 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #53030: <==uncertain_firing== 94050 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56310: <==uncertain_firing== 71455 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59349: <==negation-removal== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #71165: <==uncertain_firing== 85059 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71690: <==uncertain_firing== 37929 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #72614: <==negation-removal== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #73138: <==negation-removal== 69817 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75129: <==uncertain_firing== 52384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #17032: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #37929: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #52384: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #69817: <==closure== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #71424: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #71455: <==closure== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #85059: <==closure== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #94050: <==closure== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #10258: <==uncertain_firing== 69817 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #10887: <==negation-removal== 52384 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #13817: <==negation-removal== 94050 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #16236: <==uncertain_firing== 17032 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35761: <==negation-removal== 85059 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #44652: <==negation-removal== 17032 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #46960: <==uncertain_firing== 71424 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49268: <==negation-removal== 71455 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #53030: <==uncertain_firing== 94050 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56310: <==uncertain_firing== 71455 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59349: <==negation-removal== 37929 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #71165: <==uncertain_firing== 85059 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71690: <==uncertain_firing== 37929 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #72614: <==negation-removal== 71424 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #73138: <==negation-removal== 69817 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #75129: <==uncertain_firing== 52384 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #25968: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #30740: <==closure== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31238: <==closure== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #46540: <==closure== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48739: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49590: <==closure== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #54964: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #64885: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12297: <==uncertain_firing== 64885 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14086: <==uncertain_firing== 49590 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #14494: <==uncertain_firing== 54964 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #25614: <==uncertain_firing== 46540 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31618: <==negation-removal== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37572: <==uncertain_firing== 25968 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41212: <==negation-removal== 49590 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #47565: <==uncertain_firing== 31238 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #52814: <==negation-removal== 31238 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #53711: <==uncertain_firing== 48739 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #57404: <==negation-removal== 46540 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59099: <==negation-removal== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63642: <==negation-removal== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #64686: <==negation-removal== 30740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77805: <==uncertain_firing== 30740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90892: <==negation-removal== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #25968: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #30740: <==closure== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31238: <==closure== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #46540: <==closure== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48739: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49590: <==closure== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #54964: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #64885: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12297: <==uncertain_firing== 64885 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14086: <==uncertain_firing== 49590 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #14494: <==uncertain_firing== 54964 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #25614: <==uncertain_firing== 46540 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31618: <==negation-removal== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37572: <==uncertain_firing== 25968 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41212: <==negation-removal== 49590 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #47565: <==uncertain_firing== 31238 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #52814: <==negation-removal== 31238 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #53711: <==uncertain_firing== 48739 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #57404: <==negation-removal== 46540 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59099: <==negation-removal== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63642: <==negation-removal== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #64686: <==negation-removal== 30740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77805: <==uncertain_firing== 30740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90892: <==negation-removal== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #25968: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #30740: <==closure== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31238: <==closure== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #46540: <==closure== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48739: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49590: <==closure== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #54964: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #64885: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12297: <==uncertain_firing== 64885 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14086: <==uncertain_firing== 49590 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #14494: <==uncertain_firing== 54964 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #25614: <==uncertain_firing== 46540 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31618: <==negation-removal== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37572: <==uncertain_firing== 25968 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41212: <==negation-removal== 49590 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #47565: <==uncertain_firing== 31238 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #52814: <==negation-removal== 31238 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #53711: <==uncertain_firing== 48739 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #57404: <==negation-removal== 46540 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59099: <==negation-removal== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63642: <==negation-removal== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #64686: <==negation-removal== 30740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77805: <==uncertain_firing== 30740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90892: <==negation-removal== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #25968: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #30740: <==closure== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #31238: <==closure== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #46540: <==closure== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #48739: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #49590: <==closure== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #54964: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #64885: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #12297: <==uncertain_firing== 64885 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #14086: <==uncertain_firing== 49590 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #14494: <==uncertain_firing== 54964 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #25614: <==uncertain_firing== 46540 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31618: <==negation-removal== 25968 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37572: <==uncertain_firing== 25968 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41212: <==negation-removal== 49590 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #47565: <==uncertain_firing== 31238 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #52814: <==negation-removal== 31238 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #53711: <==uncertain_firing== 48739 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #57404: <==negation-removal== 46540 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59099: <==negation-removal== 48739 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63642: <==negation-removal== 54964 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #64686: <==negation-removal== 30740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77805: <==uncertain_firing== 30740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #90892: <==negation-removal== 64885 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #22495: <==closure== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #33206: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #47555: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #53049: <==closure== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #81584: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #84470: <==closure== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #85807: <==closure== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #88320: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #13775: <==uncertain_firing== 81584 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20128: <==negation-removal== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22453: <==negation-removal== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28234: <==uncertain_firing== 53049 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #30620: <==uncertain_firing== 84470 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #33160: <==uncertain_firing== 33206 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42384: <==uncertain_firing== 22495 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47076: <==uncertain_firing== 85807 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64544: <==negation-removal== 85807 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65369: <==negation-removal== 22495 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #68756: <==negation-removal== 84470 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72095: <==negation-removal== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73131: <==uncertain_firing== 47555 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77952: <==negation-removal== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #83590: <==uncertain_firing== 88320 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #87834: <==negation-removal== 53049 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #22495: <==closure== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #33206: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #47555: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #53049: <==closure== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #81584: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #84470: <==closure== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #85807: <==closure== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #88320: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #13775: <==uncertain_firing== 81584 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20128: <==negation-removal== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22453: <==negation-removal== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28234: <==uncertain_firing== 53049 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #30620: <==uncertain_firing== 84470 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #33160: <==uncertain_firing== 33206 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42384: <==uncertain_firing== 22495 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47076: <==uncertain_firing== 85807 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64544: <==negation-removal== 85807 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65369: <==negation-removal== 22495 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #68756: <==negation-removal== 84470 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72095: <==negation-removal== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73131: <==uncertain_firing== 47555 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77952: <==negation-removal== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #83590: <==uncertain_firing== 88320 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #87834: <==negation-removal== 53049 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #22495: <==closure== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #33206: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #47555: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #53049: <==closure== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #81584: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #84470: <==closure== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #85807: <==closure== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #88320: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #13775: <==uncertain_firing== 81584 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20128: <==negation-removal== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22453: <==negation-removal== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28234: <==uncertain_firing== 53049 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #30620: <==uncertain_firing== 84470 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #33160: <==uncertain_firing== 33206 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42384: <==uncertain_firing== 22495 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47076: <==uncertain_firing== 85807 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64544: <==negation-removal== 85807 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65369: <==negation-removal== 22495 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #68756: <==negation-removal== 84470 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72095: <==negation-removal== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73131: <==uncertain_firing== 47555 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77952: <==negation-removal== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #83590: <==uncertain_firing== 88320 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #87834: <==negation-removal== 53049 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #22495: <==closure== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #33206: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #47555: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #53049: <==closure== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #81584: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #84470: <==closure== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #85807: <==closure== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #88320: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #13775: <==uncertain_firing== 81584 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #20128: <==negation-removal== 33206 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #22453: <==negation-removal== 47555 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #28234: <==uncertain_firing== 53049 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #30620: <==uncertain_firing== 84470 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #33160: <==uncertain_firing== 33206 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42384: <==uncertain_firing== 22495 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #47076: <==uncertain_firing== 85807 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64544: <==negation-removal== 85807 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #65369: <==negation-removal== 22495 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #68756: <==negation-removal== 84470 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72095: <==negation-removal== 81584 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73131: <==uncertain_firing== 47555 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #77952: <==negation-removal== 88320 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #83590: <==uncertain_firing== 88320 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #87834: <==negation-removal== 53049 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #13499: <==closure== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #28964: <==closure== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #56679: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #67934: <==closure== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #68816: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #76064: <==closure== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88831: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #92099: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12712: <==uncertain_firing== 76064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #14776: <==negation-removal== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22065: <==negation-removal== 76064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23547: <==uncertain_firing== 67934 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29135: <==uncertain_firing== 56679 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33837: <==uncertain_firing== 13499 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #34402: <==uncertain_firing== 88831 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62439: <==negation-removal== 28964 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65298: <==uncertain_firing== 68816 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70236: <==uncertain_firing== 92099 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #70404: <==negation-removal== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #71181: <==negation-removal== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75109: <==negation-removal== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79125: <==uncertain_firing== 28964 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #81115: <==negation-removal== 67934 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85193: <==negation-removal== 13499 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #13499: <==closure== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #28964: <==closure== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #56679: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #67934: <==closure== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #68816: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #76064: <==closure== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88831: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #92099: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12712: <==uncertain_firing== 76064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #14776: <==negation-removal== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22065: <==negation-removal== 76064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23547: <==uncertain_firing== 67934 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29135: <==uncertain_firing== 56679 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33837: <==uncertain_firing== 13499 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #34402: <==uncertain_firing== 88831 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62439: <==negation-removal== 28964 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65298: <==uncertain_firing== 68816 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70236: <==uncertain_firing== 92099 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #70404: <==negation-removal== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #71181: <==negation-removal== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75109: <==negation-removal== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79125: <==uncertain_firing== 28964 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #81115: <==negation-removal== 67934 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85193: <==negation-removal== 13499 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #13499: <==closure== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #28964: <==closure== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #56679: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #67934: <==closure== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #68816: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #76064: <==closure== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88831: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #92099: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12712: <==uncertain_firing== 76064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #14776: <==negation-removal== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22065: <==negation-removal== 76064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23547: <==uncertain_firing== 67934 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29135: <==uncertain_firing== 56679 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33837: <==uncertain_firing== 13499 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #34402: <==uncertain_firing== 88831 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62439: <==negation-removal== 28964 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65298: <==uncertain_firing== 68816 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70236: <==uncertain_firing== 92099 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #70404: <==negation-removal== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #71181: <==negation-removal== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75109: <==negation-removal== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79125: <==uncertain_firing== 28964 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #81115: <==negation-removal== 67934 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85193: <==negation-removal== 13499 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #13499: <==closure== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #28964: <==closure== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #56679: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #67934: <==closure== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #68816: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #76064: <==closure== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #88831: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #92099: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #12712: <==uncertain_firing== 76064 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #14776: <==negation-removal== 56679 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22065: <==negation-removal== 76064 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23547: <==uncertain_firing== 67934 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #29135: <==uncertain_firing== 56679 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33837: <==uncertain_firing== 13499 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #34402: <==uncertain_firing== 88831 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #62439: <==negation-removal== 28964 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #65298: <==uncertain_firing== 68816 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70236: <==uncertain_firing== 92099 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #70404: <==negation-removal== 88831 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #71181: <==negation-removal== 68816 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #75109: <==negation-removal== 92099 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #79125: <==uncertain_firing== 28964 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #81115: <==negation-removal== 67934 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85193: <==negation-removal== 13499 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #24907: <==closure== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #25069: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #28486: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #32361: <==closure== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41953: <==closure== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #76849: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #79812: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90612: <==closure== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #15699: <==uncertain_firing== 32361 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27419: <==uncertain_firing== 25069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37774: <==negation-removal== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38666: <==negation-removal== 32361 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40402: <==negation-removal== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #45111: <==uncertain_firing== 28486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #64303: <==negation-removal== 24907 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66478: <==uncertain_firing== 76849 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70413: <==negation-removal== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75600: <==uncertain_firing== 24907 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76301: <==negation-removal== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83292: <==negation-removal== 41953 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #87175: <==negation-removal== 90612 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #88497: <==uncertain_firing== 41953 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88813: <==uncertain_firing== 79812 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #92194: <==uncertain_firing== 90612 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #24907: <==closure== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #25069: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #28486: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #32361: <==closure== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41953: <==closure== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #76849: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #79812: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90612: <==closure== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #15699: <==uncertain_firing== 32361 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27419: <==uncertain_firing== 25069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37774: <==negation-removal== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38666: <==negation-removal== 32361 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40402: <==negation-removal== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #45111: <==uncertain_firing== 28486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #64303: <==negation-removal== 24907 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66478: <==uncertain_firing== 76849 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70413: <==negation-removal== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75600: <==uncertain_firing== 24907 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76301: <==negation-removal== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83292: <==negation-removal== 41953 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #87175: <==negation-removal== 90612 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #88497: <==uncertain_firing== 41953 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88813: <==uncertain_firing== 79812 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #92194: <==uncertain_firing== 90612 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #24907: <==closure== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #25069: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #28486: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #32361: <==closure== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41953: <==closure== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #76849: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #79812: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90612: <==closure== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #15699: <==uncertain_firing== 32361 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27419: <==uncertain_firing== 25069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37774: <==negation-removal== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38666: <==negation-removal== 32361 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40402: <==negation-removal== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #45111: <==uncertain_firing== 28486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #64303: <==negation-removal== 24907 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66478: <==uncertain_firing== 76849 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70413: <==negation-removal== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75600: <==uncertain_firing== 24907 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76301: <==negation-removal== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83292: <==negation-removal== 41953 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #87175: <==negation-removal== 90612 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #88497: <==uncertain_firing== 41953 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88813: <==uncertain_firing== 79812 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #92194: <==uncertain_firing== 90612 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #24907: <==closure== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #25069: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #28486: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #32361: <==closure== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #41953: <==closure== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #76849: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #79812: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #90612: <==closure== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #15699: <==uncertain_firing== 32361 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #27419: <==uncertain_firing== 25069 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37774: <==negation-removal== 25069 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #38666: <==negation-removal== 32361 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40402: <==negation-removal== 28486 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #45111: <==uncertain_firing== 28486 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #64303: <==negation-removal== 24907 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66478: <==uncertain_firing== 76849 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #70413: <==negation-removal== 76849 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #75600: <==uncertain_firing== 24907 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #76301: <==negation-removal== 79812 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #83292: <==negation-removal== 41953 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #87175: <==negation-removal== 90612 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #88497: <==uncertain_firing== 41953 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #88813: <==uncertain_firing== 79812 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #92194: <==uncertain_firing== 90612 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #23969: <==closure== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #40942: <==closure== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #42201: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #50815: <==closure== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #59042: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #75481: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #91737: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #92127: <==closure== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #12080: <==uncertain_firing== 92127 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20269: <==negation-removal== 40942 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27308: <==uncertain_firing== 50815 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33160: <==negation-removal== 23969 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34397: <==negation-removal== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38027: <==uncertain_firing== 59042 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42341: <==negation-removal== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51547: <==negation-removal== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #52498: <==uncertain_firing== 42201 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55483: <==uncertain_firing== 40942 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #63446: <==negation-removal== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #78947: <==uncertain_firing== 91737 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #79103: <==uncertain_firing== 23969 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79858: <==negation-removal== 50815 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86576: <==uncertain_firing== 75481 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90050: <==negation-removal== 92127 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #23969: <==closure== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #40942: <==closure== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #42201: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #50815: <==closure== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #59042: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #75481: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #91737: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #92127: <==closure== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #12080: <==uncertain_firing== 92127 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20269: <==negation-removal== 40942 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27308: <==uncertain_firing== 50815 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33160: <==negation-removal== 23969 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34397: <==negation-removal== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38027: <==uncertain_firing== 59042 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42341: <==negation-removal== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51547: <==negation-removal== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #52498: <==uncertain_firing== 42201 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55483: <==uncertain_firing== 40942 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #63446: <==negation-removal== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #78947: <==uncertain_firing== 91737 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #79103: <==uncertain_firing== 23969 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79858: <==negation-removal== 50815 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86576: <==uncertain_firing== 75481 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90050: <==negation-removal== 92127 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #23969: <==closure== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #40942: <==closure== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #42201: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #50815: <==closure== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #59042: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #75481: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #91737: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #92127: <==closure== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #12080: <==uncertain_firing== 92127 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20269: <==negation-removal== 40942 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27308: <==uncertain_firing== 50815 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33160: <==negation-removal== 23969 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34397: <==negation-removal== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38027: <==uncertain_firing== 59042 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42341: <==negation-removal== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51547: <==negation-removal== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #52498: <==uncertain_firing== 42201 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55483: <==uncertain_firing== 40942 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #63446: <==negation-removal== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #78947: <==uncertain_firing== 91737 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #79103: <==uncertain_firing== 23969 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79858: <==negation-removal== 50815 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86576: <==uncertain_firing== 75481 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90050: <==negation-removal== 92127 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #23969: <==closure== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #40942: <==closure== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #42201: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #50815: <==closure== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #59042: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #75481: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #91737: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #92127: <==closure== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #12080: <==uncertain_firing== 92127 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #20269: <==negation-removal== 40942 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27308: <==uncertain_firing== 50815 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33160: <==negation-removal== 23969 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #34397: <==negation-removal== 75481 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #38027: <==uncertain_firing== 59042 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #42341: <==negation-removal== 59042 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51547: <==negation-removal== 42201 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #52498: <==uncertain_firing== 42201 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55483: <==uncertain_firing== 40942 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #63446: <==negation-removal== 91737 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #78947: <==uncertain_firing== 91737 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #79103: <==uncertain_firing== 23969 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79858: <==negation-removal== 50815 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #86576: <==uncertain_firing== 75481 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90050: <==negation-removal== 92127 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #16062: <==closure== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #34349: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #51060: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #73187: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #76921: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81289: <==closure== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #85588: <==closure== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #88398: <==closure== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #11994: <==negation-removal== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #18720: <==negation-removal== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #19206: <==uncertain_firing== 81289 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25418: <==negation-removal== 81289 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28861: <==uncertain_firing== 85588 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31939: <==negation-removal== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #32730: <==negation-removal== 16062 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36881: <==negation-removal== 85588 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #36983: <==negation-removal== 88398 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45574: <==uncertain_firing== 16062 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51488: <==uncertain_firing== 73187 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #63943: <==negation-removal== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67268: <==uncertain_firing== 51060 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72983: <==uncertain_firing== 34349 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73182: <==uncertain_firing== 76921 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83059: <==uncertain_firing== 88398 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #16062: <==closure== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #34349: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #51060: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #73187: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #76921: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81289: <==closure== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #85588: <==closure== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #88398: <==closure== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #11994: <==negation-removal== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #18720: <==negation-removal== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #19206: <==uncertain_firing== 81289 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25418: <==negation-removal== 81289 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28861: <==uncertain_firing== 85588 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31939: <==negation-removal== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #32730: <==negation-removal== 16062 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36881: <==negation-removal== 85588 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #36983: <==negation-removal== 88398 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45574: <==uncertain_firing== 16062 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51488: <==uncertain_firing== 73187 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #63943: <==negation-removal== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67268: <==uncertain_firing== 51060 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72983: <==uncertain_firing== 34349 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73182: <==uncertain_firing== 76921 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83059: <==uncertain_firing== 88398 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #16062: <==closure== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #34349: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #51060: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #73187: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #76921: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81289: <==closure== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #85588: <==closure== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #88398: <==closure== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #11994: <==negation-removal== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #18720: <==negation-removal== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #19206: <==uncertain_firing== 81289 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25418: <==negation-removal== 81289 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28861: <==uncertain_firing== 85588 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31939: <==negation-removal== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #32730: <==negation-removal== 16062 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36881: <==negation-removal== 85588 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #36983: <==negation-removal== 88398 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45574: <==uncertain_firing== 16062 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51488: <==uncertain_firing== 73187 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #63943: <==negation-removal== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67268: <==uncertain_firing== 51060 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72983: <==uncertain_firing== 34349 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73182: <==uncertain_firing== 76921 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83059: <==uncertain_firing== 88398 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #16062: <==closure== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #34349: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #51060: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #73187: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #76921: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #81289: <==closure== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #85588: <==closure== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #88398: <==closure== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #11994: <==negation-removal== 76921 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #18720: <==negation-removal== 73187 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #19206: <==uncertain_firing== 81289 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #25418: <==negation-removal== 81289 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28861: <==uncertain_firing== 85588 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #31939: <==negation-removal== 34349 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #32730: <==negation-removal== 16062 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36881: <==negation-removal== 85588 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #36983: <==negation-removal== 88398 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45574: <==uncertain_firing== 16062 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #51488: <==uncertain_firing== 73187 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #63943: <==negation-removal== 51060 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67268: <==uncertain_firing== 51060 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #72983: <==uncertain_firing== 34349 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #73182: <==uncertain_firing== 76921 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #83059: <==uncertain_firing== 88398 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #15721: <==closure== 88865 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21218: origin
                    (Bd_survivorat_s_p10)

                    ; #55686: <==closure== 66535 (pos)
                    (Pc_survivorat_s_p10)

                    ; #66535: origin
                    (Bc_survivorat_s_p10)

                    ; #73498: origin
                    (Bb_survivorat_s_p10)

                    ; #77490: <==closure== 73498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #80686: <==closure== 21218 (pos)
                    (Pd_survivorat_s_p10)

                    ; #88865: origin
                    (Ba_survivorat_s_p10)

                    ; #11453: <==negation-removal== 80686 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #14614: <==negation-removal== 77490 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #23258: <==negation-removal== 88865 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #32143: <==negation-removal== 73498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #42144: <==negation-removal== 15721 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #49041: <==negation-removal== 66535 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57697: <==negation-removal== 55686 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #78803: <==negation-removal== 21218 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #15721: <==closure== 88865 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21218: origin
                    (Bd_survivorat_s_p10)

                    ; #55686: <==closure== 66535 (pos)
                    (Pc_survivorat_s_p10)

                    ; #66535: origin
                    (Bc_survivorat_s_p10)

                    ; #73498: origin
                    (Bb_survivorat_s_p10)

                    ; #77490: <==closure== 73498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #80686: <==closure== 21218 (pos)
                    (Pd_survivorat_s_p10)

                    ; #88865: origin
                    (Ba_survivorat_s_p10)

                    ; #11453: <==negation-removal== 80686 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #14614: <==negation-removal== 77490 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #23258: <==negation-removal== 88865 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #32143: <==negation-removal== 73498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #42144: <==negation-removal== 15721 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #49041: <==negation-removal== 66535 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57697: <==negation-removal== 55686 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #78803: <==negation-removal== 21218 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #15721: <==closure== 88865 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21218: origin
                    (Bd_survivorat_s_p10)

                    ; #55686: <==closure== 66535 (pos)
                    (Pc_survivorat_s_p10)

                    ; #66535: origin
                    (Bc_survivorat_s_p10)

                    ; #73498: origin
                    (Bb_survivorat_s_p10)

                    ; #77490: <==closure== 73498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #80686: <==closure== 21218 (pos)
                    (Pd_survivorat_s_p10)

                    ; #88865: origin
                    (Ba_survivorat_s_p10)

                    ; #11453: <==negation-removal== 80686 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #14614: <==negation-removal== 77490 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #23258: <==negation-removal== 88865 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #32143: <==negation-removal== 73498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #42144: <==negation-removal== 15721 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #49041: <==negation-removal== 66535 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57697: <==negation-removal== 55686 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #78803: <==negation-removal== 21218 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #15721: <==closure== 88865 (pos)
                    (Pa_survivorat_s_p10)

                    ; #21218: origin
                    (Bd_survivorat_s_p10)

                    ; #55686: <==closure== 66535 (pos)
                    (Pc_survivorat_s_p10)

                    ; #66535: origin
                    (Bc_survivorat_s_p10)

                    ; #73498: origin
                    (Bb_survivorat_s_p10)

                    ; #77490: <==closure== 73498 (pos)
                    (Pb_survivorat_s_p10)

                    ; #80686: <==closure== 21218 (pos)
                    (Pd_survivorat_s_p10)

                    ; #88865: origin
                    (Ba_survivorat_s_p10)

                    ; #11453: <==negation-removal== 80686 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #14614: <==negation-removal== 77490 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #23258: <==negation-removal== 88865 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #32143: <==negation-removal== 73498 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #42144: <==negation-removal== 15721 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #49041: <==negation-removal== 66535 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #57697: <==negation-removal== 55686 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #78803: <==negation-removal== 21218 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #18320: origin
                    (Bd_survivorat_s_p11)

                    ; #35667: origin
                    (Ba_survivorat_s_p11)

                    ; #38584: <==closure== 18320 (pos)
                    (Pd_survivorat_s_p11)

                    ; #60003: <==closure== 81620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #81620: origin
                    (Bc_survivorat_s_p11)

                    ; #84417: origin
                    (Bb_survivorat_s_p11)

                    ; #85928: <==closure== 35667 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88448: <==closure== 84417 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11788: <==negation-removal== 88448 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #18365: <==negation-removal== 38584 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #19457: <==negation-removal== 35667 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #24073: <==negation-removal== 60003 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #26863: <==negation-removal== 18320 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27297: <==negation-removal== 85928 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30369: <==negation-removal== 81620 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #60123: <==negation-removal== 84417 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #18320: origin
                    (Bd_survivorat_s_p11)

                    ; #35667: origin
                    (Ba_survivorat_s_p11)

                    ; #38584: <==closure== 18320 (pos)
                    (Pd_survivorat_s_p11)

                    ; #60003: <==closure== 81620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #81620: origin
                    (Bc_survivorat_s_p11)

                    ; #84417: origin
                    (Bb_survivorat_s_p11)

                    ; #85928: <==closure== 35667 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88448: <==closure== 84417 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11788: <==negation-removal== 88448 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #18365: <==negation-removal== 38584 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #19457: <==negation-removal== 35667 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #24073: <==negation-removal== 60003 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #26863: <==negation-removal== 18320 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27297: <==negation-removal== 85928 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30369: <==negation-removal== 81620 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #60123: <==negation-removal== 84417 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #18320: origin
                    (Bd_survivorat_s_p11)

                    ; #35667: origin
                    (Ba_survivorat_s_p11)

                    ; #38584: <==closure== 18320 (pos)
                    (Pd_survivorat_s_p11)

                    ; #60003: <==closure== 81620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #81620: origin
                    (Bc_survivorat_s_p11)

                    ; #84417: origin
                    (Bb_survivorat_s_p11)

                    ; #85928: <==closure== 35667 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88448: <==closure== 84417 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11788: <==negation-removal== 88448 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #18365: <==negation-removal== 38584 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #19457: <==negation-removal== 35667 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #24073: <==negation-removal== 60003 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #26863: <==negation-removal== 18320 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27297: <==negation-removal== 85928 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30369: <==negation-removal== 81620 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #60123: <==negation-removal== 84417 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #18320: origin
                    (Bd_survivorat_s_p11)

                    ; #35667: origin
                    (Ba_survivorat_s_p11)

                    ; #38584: <==closure== 18320 (pos)
                    (Pd_survivorat_s_p11)

                    ; #60003: <==closure== 81620 (pos)
                    (Pc_survivorat_s_p11)

                    ; #81620: origin
                    (Bc_survivorat_s_p11)

                    ; #84417: origin
                    (Bb_survivorat_s_p11)

                    ; #85928: <==closure== 35667 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88448: <==closure== 84417 (pos)
                    (Pb_survivorat_s_p11)

                    ; #11788: <==negation-removal== 88448 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #18365: <==negation-removal== 38584 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #19457: <==negation-removal== 35667 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #24073: <==negation-removal== 60003 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #26863: <==negation-removal== 18320 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #27297: <==negation-removal== 85928 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #30369: <==negation-removal== 81620 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #60123: <==negation-removal== 84417 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #17810: origin
                    (Bd_survivorat_s_p12)

                    ; #24807: <==closure== 73306 (pos)
                    (Pc_survivorat_s_p12)

                    ; #31373: <==closure== 17810 (pos)
                    (Pd_survivorat_s_p12)

                    ; #36092: <==closure== 55755 (pos)
                    (Pa_survivorat_s_p12)

                    ; #54463: origin
                    (Bb_survivorat_s_p12)

                    ; #55755: origin
                    (Ba_survivorat_s_p12)

                    ; #73306: origin
                    (Bc_survivorat_s_p12)

                    ; #87096: <==closure== 54463 (pos)
                    (Pb_survivorat_s_p12)

                    ; #12995: <==negation-removal== 24807 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #14074: <==negation-removal== 31373 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #47544: <==negation-removal== 54463 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49538: <==negation-removal== 36092 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #56171: <==negation-removal== 73306 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #59681: <==negation-removal== 55755 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #64383: <==negation-removal== 17810 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #83131: <==negation-removal== 87096 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #17810: origin
                    (Bd_survivorat_s_p12)

                    ; #24807: <==closure== 73306 (pos)
                    (Pc_survivorat_s_p12)

                    ; #31373: <==closure== 17810 (pos)
                    (Pd_survivorat_s_p12)

                    ; #36092: <==closure== 55755 (pos)
                    (Pa_survivorat_s_p12)

                    ; #54463: origin
                    (Bb_survivorat_s_p12)

                    ; #55755: origin
                    (Ba_survivorat_s_p12)

                    ; #73306: origin
                    (Bc_survivorat_s_p12)

                    ; #87096: <==closure== 54463 (pos)
                    (Pb_survivorat_s_p12)

                    ; #12995: <==negation-removal== 24807 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #14074: <==negation-removal== 31373 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #47544: <==negation-removal== 54463 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49538: <==negation-removal== 36092 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #56171: <==negation-removal== 73306 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #59681: <==negation-removal== 55755 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #64383: <==negation-removal== 17810 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #83131: <==negation-removal== 87096 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #17810: origin
                    (Bd_survivorat_s_p12)

                    ; #24807: <==closure== 73306 (pos)
                    (Pc_survivorat_s_p12)

                    ; #31373: <==closure== 17810 (pos)
                    (Pd_survivorat_s_p12)

                    ; #36092: <==closure== 55755 (pos)
                    (Pa_survivorat_s_p12)

                    ; #54463: origin
                    (Bb_survivorat_s_p12)

                    ; #55755: origin
                    (Ba_survivorat_s_p12)

                    ; #73306: origin
                    (Bc_survivorat_s_p12)

                    ; #87096: <==closure== 54463 (pos)
                    (Pb_survivorat_s_p12)

                    ; #12995: <==negation-removal== 24807 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #14074: <==negation-removal== 31373 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #47544: <==negation-removal== 54463 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49538: <==negation-removal== 36092 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #56171: <==negation-removal== 73306 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #59681: <==negation-removal== 55755 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #64383: <==negation-removal== 17810 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #83131: <==negation-removal== 87096 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (at_d_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #17810: origin
                    (Bd_survivorat_s_p12)

                    ; #24807: <==closure== 73306 (pos)
                    (Pc_survivorat_s_p12)

                    ; #31373: <==closure== 17810 (pos)
                    (Pd_survivorat_s_p12)

                    ; #36092: <==closure== 55755 (pos)
                    (Pa_survivorat_s_p12)

                    ; #54463: origin
                    (Bb_survivorat_s_p12)

                    ; #55755: origin
                    (Ba_survivorat_s_p12)

                    ; #73306: origin
                    (Bc_survivorat_s_p12)

                    ; #87096: <==closure== 54463 (pos)
                    (Pb_survivorat_s_p12)

                    ; #12995: <==negation-removal== 24807 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #14074: <==negation-removal== 31373 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #47544: <==negation-removal== 54463 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #49538: <==negation-removal== 36092 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #56171: <==negation-removal== 73306 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #59681: <==negation-removal== 55755 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #64383: <==negation-removal== 17810 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #83131: <==negation-removal== 87096 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #36849: origin
                    (Bc_survivorat_s_p1)

                    ; #43928: origin
                    (Bd_survivorat_s_p1)

                    ; #46337: <==closure== 43928 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76046: origin
                    (Ba_survivorat_s_p1)

                    ; #78177: <==closure== 92064 (pos)
                    (Pb_survivorat_s_p1)

                    ; #84620: <==closure== 36849 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85810: <==closure== 76046 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92064: origin
                    (Bb_survivorat_s_p1)

                    ; #16814: <==negation-removal== 84620 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21092: <==negation-removal== 43928 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #27285: <==negation-removal== 46337 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32755: <==negation-removal== 36849 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39329: <==negation-removal== 76046 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #56880: <==negation-removal== 92064 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81983: <==negation-removal== 85810 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #85588: <==negation-removal== 78177 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #36849: origin
                    (Bc_survivorat_s_p1)

                    ; #43928: origin
                    (Bd_survivorat_s_p1)

                    ; #46337: <==closure== 43928 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76046: origin
                    (Ba_survivorat_s_p1)

                    ; #78177: <==closure== 92064 (pos)
                    (Pb_survivorat_s_p1)

                    ; #84620: <==closure== 36849 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85810: <==closure== 76046 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92064: origin
                    (Bb_survivorat_s_p1)

                    ; #16814: <==negation-removal== 84620 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21092: <==negation-removal== 43928 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #27285: <==negation-removal== 46337 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32755: <==negation-removal== 36849 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39329: <==negation-removal== 76046 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #56880: <==negation-removal== 92064 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81983: <==negation-removal== 85810 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #85588: <==negation-removal== 78177 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #36849: origin
                    (Bc_survivorat_s_p1)

                    ; #43928: origin
                    (Bd_survivorat_s_p1)

                    ; #46337: <==closure== 43928 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76046: origin
                    (Ba_survivorat_s_p1)

                    ; #78177: <==closure== 92064 (pos)
                    (Pb_survivorat_s_p1)

                    ; #84620: <==closure== 36849 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85810: <==closure== 76046 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92064: origin
                    (Bb_survivorat_s_p1)

                    ; #16814: <==negation-removal== 84620 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21092: <==negation-removal== 43928 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #27285: <==negation-removal== 46337 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32755: <==negation-removal== 36849 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39329: <==negation-removal== 76046 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #56880: <==negation-removal== 92064 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81983: <==negation-removal== 85810 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #85588: <==negation-removal== 78177 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #36849: origin
                    (Bc_survivorat_s_p1)

                    ; #43928: origin
                    (Bd_survivorat_s_p1)

                    ; #46337: <==closure== 43928 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76046: origin
                    (Ba_survivorat_s_p1)

                    ; #78177: <==closure== 92064 (pos)
                    (Pb_survivorat_s_p1)

                    ; #84620: <==closure== 36849 (pos)
                    (Pc_survivorat_s_p1)

                    ; #85810: <==closure== 76046 (pos)
                    (Pa_survivorat_s_p1)

                    ; #92064: origin
                    (Bb_survivorat_s_p1)

                    ; #16814: <==negation-removal== 84620 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #21092: <==negation-removal== 43928 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #27285: <==negation-removal== 46337 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #32755: <==negation-removal== 36849 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #39329: <==negation-removal== 76046 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #56880: <==negation-removal== 92064 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #81983: <==negation-removal== 85810 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #85588: <==negation-removal== 78177 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #12007: origin
                    (Bd_survivorat_s_p2)

                    ; #17005: <==closure== 48423 (pos)
                    (Pb_survivorat_s_p2)

                    ; #30265: <==closure== 54543 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48423: origin
                    (Bb_survivorat_s_p2)

                    ; #54543: origin
                    (Ba_survivorat_s_p2)

                    ; #61170: <==closure== 12007 (pos)
                    (Pd_survivorat_s_p2)

                    ; #69293: <==closure== 86468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #86468: origin
                    (Bc_survivorat_s_p2)

                    ; #24145: <==negation-removal== 30265 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29992: <==negation-removal== 86468 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #34256: <==negation-removal== 12007 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #37118: <==negation-removal== 69293 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #65169: <==negation-removal== 17005 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75676: <==negation-removal== 54543 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #88266: <==negation-removal== 48423 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #89326: <==negation-removal== 61170 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12007: origin
                    (Bd_survivorat_s_p2)

                    ; #17005: <==closure== 48423 (pos)
                    (Pb_survivorat_s_p2)

                    ; #30265: <==closure== 54543 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48423: origin
                    (Bb_survivorat_s_p2)

                    ; #54543: origin
                    (Ba_survivorat_s_p2)

                    ; #61170: <==closure== 12007 (pos)
                    (Pd_survivorat_s_p2)

                    ; #69293: <==closure== 86468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #86468: origin
                    (Bc_survivorat_s_p2)

                    ; #24145: <==negation-removal== 30265 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29992: <==negation-removal== 86468 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #34256: <==negation-removal== 12007 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #37118: <==negation-removal== 69293 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #65169: <==negation-removal== 17005 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75676: <==negation-removal== 54543 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #88266: <==negation-removal== 48423 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #89326: <==negation-removal== 61170 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #12007: origin
                    (Bd_survivorat_s_p2)

                    ; #17005: <==closure== 48423 (pos)
                    (Pb_survivorat_s_p2)

                    ; #30265: <==closure== 54543 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48423: origin
                    (Bb_survivorat_s_p2)

                    ; #54543: origin
                    (Ba_survivorat_s_p2)

                    ; #61170: <==closure== 12007 (pos)
                    (Pd_survivorat_s_p2)

                    ; #69293: <==closure== 86468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #86468: origin
                    (Bc_survivorat_s_p2)

                    ; #24145: <==negation-removal== 30265 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29992: <==negation-removal== 86468 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #34256: <==negation-removal== 12007 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #37118: <==negation-removal== 69293 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #65169: <==negation-removal== 17005 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75676: <==negation-removal== 54543 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #88266: <==negation-removal== 48423 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #89326: <==negation-removal== 61170 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #12007: origin
                    (Bd_survivorat_s_p2)

                    ; #17005: <==closure== 48423 (pos)
                    (Pb_survivorat_s_p2)

                    ; #30265: <==closure== 54543 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48423: origin
                    (Bb_survivorat_s_p2)

                    ; #54543: origin
                    (Ba_survivorat_s_p2)

                    ; #61170: <==closure== 12007 (pos)
                    (Pd_survivorat_s_p2)

                    ; #69293: <==closure== 86468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #86468: origin
                    (Bc_survivorat_s_p2)

                    ; #24145: <==negation-removal== 30265 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29992: <==negation-removal== 86468 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #34256: <==negation-removal== 12007 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #37118: <==negation-removal== 69293 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #65169: <==negation-removal== 17005 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #75676: <==negation-removal== 54543 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #88266: <==negation-removal== 48423 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #89326: <==negation-removal== 61170 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #30628: origin
                    (Bb_survivorat_s_p3)

                    ; #33681: <==closure== 68608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46408: origin
                    (Bc_survivorat_s_p3)

                    ; #50969: <==closure== 46408 (pos)
                    (Pc_survivorat_s_p3)

                    ; #52338: origin
                    (Bd_survivorat_s_p3)

                    ; #67755: <==closure== 52338 (pos)
                    (Pd_survivorat_s_p3)

                    ; #68608: origin
                    (Ba_survivorat_s_p3)

                    ; #80535: <==closure== 30628 (pos)
                    (Pb_survivorat_s_p3)

                    ; #20028: <==negation-removal== 67755 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #36776: <==negation-removal== 52338 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #39184: <==negation-removal== 68608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62720: <==negation-removal== 33681 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #71723: <==negation-removal== 30628 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76439: <==negation-removal== 50969 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81033: <==negation-removal== 80535 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #81732: <==negation-removal== 46408 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #30628: origin
                    (Bb_survivorat_s_p3)

                    ; #33681: <==closure== 68608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46408: origin
                    (Bc_survivorat_s_p3)

                    ; #50969: <==closure== 46408 (pos)
                    (Pc_survivorat_s_p3)

                    ; #52338: origin
                    (Bd_survivorat_s_p3)

                    ; #67755: <==closure== 52338 (pos)
                    (Pd_survivorat_s_p3)

                    ; #68608: origin
                    (Ba_survivorat_s_p3)

                    ; #80535: <==closure== 30628 (pos)
                    (Pb_survivorat_s_p3)

                    ; #20028: <==negation-removal== 67755 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #36776: <==negation-removal== 52338 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #39184: <==negation-removal== 68608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62720: <==negation-removal== 33681 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #71723: <==negation-removal== 30628 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76439: <==negation-removal== 50969 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81033: <==negation-removal== 80535 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #81732: <==negation-removal== 46408 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #30628: origin
                    (Bb_survivorat_s_p3)

                    ; #33681: <==closure== 68608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46408: origin
                    (Bc_survivorat_s_p3)

                    ; #50969: <==closure== 46408 (pos)
                    (Pc_survivorat_s_p3)

                    ; #52338: origin
                    (Bd_survivorat_s_p3)

                    ; #67755: <==closure== 52338 (pos)
                    (Pd_survivorat_s_p3)

                    ; #68608: origin
                    (Ba_survivorat_s_p3)

                    ; #80535: <==closure== 30628 (pos)
                    (Pb_survivorat_s_p3)

                    ; #20028: <==negation-removal== 67755 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #36776: <==negation-removal== 52338 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #39184: <==negation-removal== 68608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62720: <==negation-removal== 33681 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #71723: <==negation-removal== 30628 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76439: <==negation-removal== 50969 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81033: <==negation-removal== 80535 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #81732: <==negation-removal== 46408 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #30628: origin
                    (Bb_survivorat_s_p3)

                    ; #33681: <==closure== 68608 (pos)
                    (Pa_survivorat_s_p3)

                    ; #46408: origin
                    (Bc_survivorat_s_p3)

                    ; #50969: <==closure== 46408 (pos)
                    (Pc_survivorat_s_p3)

                    ; #52338: origin
                    (Bd_survivorat_s_p3)

                    ; #67755: <==closure== 52338 (pos)
                    (Pd_survivorat_s_p3)

                    ; #68608: origin
                    (Ba_survivorat_s_p3)

                    ; #80535: <==closure== 30628 (pos)
                    (Pb_survivorat_s_p3)

                    ; #20028: <==negation-removal== 67755 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #36776: <==negation-removal== 52338 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #39184: <==negation-removal== 68608 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #62720: <==negation-removal== 33681 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #71723: <==negation-removal== 30628 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #76439: <==negation-removal== 50969 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #81033: <==negation-removal== 80535 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #81732: <==negation-removal== 46408 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #24400: origin
                    (Bb_survivorat_s_p4)

                    ; #26607: <==closure== 34095 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34095: origin
                    (Ba_survivorat_s_p4)

                    ; #38063: <==closure== 55178 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55178: origin
                    (Bc_survivorat_s_p4)

                    ; #63131: <==closure== 24400 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89144: <==closure== 91463 (pos)
                    (Pd_survivorat_s_p4)

                    ; #91463: origin
                    (Bd_survivorat_s_p4)

                    ; #13027: <==negation-removal== 38063 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #42925: <==negation-removal== 63131 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #51285: <==negation-removal== 89144 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #65472: <==negation-removal== 91463 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #65631: <==negation-removal== 24400 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67714: <==negation-removal== 26607 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #79723: <==negation-removal== 34095 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #88472: <==negation-removal== 55178 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #24400: origin
                    (Bb_survivorat_s_p4)

                    ; #26607: <==closure== 34095 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34095: origin
                    (Ba_survivorat_s_p4)

                    ; #38063: <==closure== 55178 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55178: origin
                    (Bc_survivorat_s_p4)

                    ; #63131: <==closure== 24400 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89144: <==closure== 91463 (pos)
                    (Pd_survivorat_s_p4)

                    ; #91463: origin
                    (Bd_survivorat_s_p4)

                    ; #13027: <==negation-removal== 38063 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #42925: <==negation-removal== 63131 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #51285: <==negation-removal== 89144 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #65472: <==negation-removal== 91463 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #65631: <==negation-removal== 24400 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67714: <==negation-removal== 26607 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #79723: <==negation-removal== 34095 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #88472: <==negation-removal== 55178 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #24400: origin
                    (Bb_survivorat_s_p4)

                    ; #26607: <==closure== 34095 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34095: origin
                    (Ba_survivorat_s_p4)

                    ; #38063: <==closure== 55178 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55178: origin
                    (Bc_survivorat_s_p4)

                    ; #63131: <==closure== 24400 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89144: <==closure== 91463 (pos)
                    (Pd_survivorat_s_p4)

                    ; #91463: origin
                    (Bd_survivorat_s_p4)

                    ; #13027: <==negation-removal== 38063 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #42925: <==negation-removal== 63131 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #51285: <==negation-removal== 89144 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #65472: <==negation-removal== 91463 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #65631: <==negation-removal== 24400 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67714: <==negation-removal== 26607 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #79723: <==negation-removal== 34095 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #88472: <==negation-removal== 55178 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Bd_survivorat_s_p4)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #24400: origin
                    (Bb_survivorat_s_p4)

                    ; #26607: <==closure== 34095 (pos)
                    (Pa_survivorat_s_p4)

                    ; #34095: origin
                    (Ba_survivorat_s_p4)

                    ; #38063: <==closure== 55178 (pos)
                    (Pc_survivorat_s_p4)

                    ; #55178: origin
                    (Bc_survivorat_s_p4)

                    ; #63131: <==closure== 24400 (pos)
                    (Pb_survivorat_s_p4)

                    ; #89144: <==closure== 91463 (pos)
                    (Pd_survivorat_s_p4)

                    ; #91463: origin
                    (Bd_survivorat_s_p4)

                    ; #13027: <==negation-removal== 38063 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #42925: <==negation-removal== 63131 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #51285: <==negation-removal== 89144 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #65472: <==negation-removal== 91463 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #65631: <==negation-removal== 24400 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #67714: <==negation-removal== 26607 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #79723: <==negation-removal== 34095 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #88472: <==negation-removal== 55178 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10981: <==closure== 51863 (pos)
                    (Pd_survivorat_s_p5)

                    ; #26328: <==closure== 77574 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31789: <==closure== 88317 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37386: <==closure== 38135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38135: origin
                    (Bb_survivorat_s_p5)

                    ; #51863: origin
                    (Bd_survivorat_s_p5)

                    ; #77574: origin
                    (Ba_survivorat_s_p5)

                    ; #88317: origin
                    (Bc_survivorat_s_p5)

                    ; #18758: <==negation-removal== 31789 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #21354: <==negation-removal== 26328 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29305: <==negation-removal== 88317 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59779: <==negation-removal== 38135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #75675: <==negation-removal== 77574 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77249: <==negation-removal== 37386 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91195: <==negation-removal== 10981 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #91480: <==negation-removal== 51863 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #10981: <==closure== 51863 (pos)
                    (Pd_survivorat_s_p5)

                    ; #26328: <==closure== 77574 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31789: <==closure== 88317 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37386: <==closure== 38135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38135: origin
                    (Bb_survivorat_s_p5)

                    ; #51863: origin
                    (Bd_survivorat_s_p5)

                    ; #77574: origin
                    (Ba_survivorat_s_p5)

                    ; #88317: origin
                    (Bc_survivorat_s_p5)

                    ; #18758: <==negation-removal== 31789 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #21354: <==negation-removal== 26328 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29305: <==negation-removal== 88317 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59779: <==negation-removal== 38135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #75675: <==negation-removal== 77574 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77249: <==negation-removal== 37386 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91195: <==negation-removal== 10981 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #91480: <==negation-removal== 51863 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10981: <==closure== 51863 (pos)
                    (Pd_survivorat_s_p5)

                    ; #26328: <==closure== 77574 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31789: <==closure== 88317 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37386: <==closure== 38135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38135: origin
                    (Bb_survivorat_s_p5)

                    ; #51863: origin
                    (Bd_survivorat_s_p5)

                    ; #77574: origin
                    (Ba_survivorat_s_p5)

                    ; #88317: origin
                    (Bc_survivorat_s_p5)

                    ; #18758: <==negation-removal== 31789 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #21354: <==negation-removal== 26328 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29305: <==negation-removal== 88317 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59779: <==negation-removal== 38135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #75675: <==negation-removal== 77574 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77249: <==negation-removal== 37386 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91195: <==negation-removal== 10981 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #91480: <==negation-removal== 51863 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #10981: <==closure== 51863 (pos)
                    (Pd_survivorat_s_p5)

                    ; #26328: <==closure== 77574 (pos)
                    (Pa_survivorat_s_p5)

                    ; #31789: <==closure== 88317 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37386: <==closure== 38135 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38135: origin
                    (Bb_survivorat_s_p5)

                    ; #51863: origin
                    (Bd_survivorat_s_p5)

                    ; #77574: origin
                    (Ba_survivorat_s_p5)

                    ; #88317: origin
                    (Bc_survivorat_s_p5)

                    ; #18758: <==negation-removal== 31789 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #21354: <==negation-removal== 26328 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29305: <==negation-removal== 88317 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #59779: <==negation-removal== 38135 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #75675: <==negation-removal== 77574 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #77249: <==negation-removal== 37386 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #91195: <==negation-removal== 10981 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #91480: <==negation-removal== 51863 (pos)
                    (not (Pd_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11482: <==closure== 76893 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18229: origin
                    (Bb_survivorat_s_p6)

                    ; #28222: origin
                    (Bc_survivorat_s_p6)

                    ; #56759: origin
                    (Ba_survivorat_s_p6)

                    ; #56862: <==closure== 56759 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59844: <==closure== 18229 (pos)
                    (Pb_survivorat_s_p6)

                    ; #69397: <==closure== 28222 (pos)
                    (Pc_survivorat_s_p6)

                    ; #76893: origin
                    (Bd_survivorat_s_p6)

                    ; #10011: <==negation-removal== 76893 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #11559: <==negation-removal== 69397 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #12175: <==negation-removal== 11482 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #34026: <==negation-removal== 28222 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36806: <==negation-removal== 56862 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51679: <==negation-removal== 59844 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #68786: <==negation-removal== 56759 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81137: <==negation-removal== 18229 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11482: <==closure== 76893 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18229: origin
                    (Bb_survivorat_s_p6)

                    ; #28222: origin
                    (Bc_survivorat_s_p6)

                    ; #56759: origin
                    (Ba_survivorat_s_p6)

                    ; #56862: <==closure== 56759 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59844: <==closure== 18229 (pos)
                    (Pb_survivorat_s_p6)

                    ; #69397: <==closure== 28222 (pos)
                    (Pc_survivorat_s_p6)

                    ; #76893: origin
                    (Bd_survivorat_s_p6)

                    ; #10011: <==negation-removal== 76893 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #11559: <==negation-removal== 69397 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #12175: <==negation-removal== 11482 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #34026: <==negation-removal== 28222 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36806: <==negation-removal== 56862 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51679: <==negation-removal== 59844 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #68786: <==negation-removal== 56759 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81137: <==negation-removal== 18229 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11482: <==closure== 76893 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18229: origin
                    (Bb_survivorat_s_p6)

                    ; #28222: origin
                    (Bc_survivorat_s_p6)

                    ; #56759: origin
                    (Ba_survivorat_s_p6)

                    ; #56862: <==closure== 56759 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59844: <==closure== 18229 (pos)
                    (Pb_survivorat_s_p6)

                    ; #69397: <==closure== 28222 (pos)
                    (Pc_survivorat_s_p6)

                    ; #76893: origin
                    (Bd_survivorat_s_p6)

                    ; #10011: <==negation-removal== 76893 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #11559: <==negation-removal== 69397 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #12175: <==negation-removal== 11482 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #34026: <==negation-removal== 28222 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36806: <==negation-removal== 56862 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51679: <==negation-removal== 59844 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #68786: <==negation-removal== 56759 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81137: <==negation-removal== 18229 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #11482: <==closure== 76893 (pos)
                    (Pd_survivorat_s_p6)

                    ; #18229: origin
                    (Bb_survivorat_s_p6)

                    ; #28222: origin
                    (Bc_survivorat_s_p6)

                    ; #56759: origin
                    (Ba_survivorat_s_p6)

                    ; #56862: <==closure== 56759 (pos)
                    (Pa_survivorat_s_p6)

                    ; #59844: <==closure== 18229 (pos)
                    (Pb_survivorat_s_p6)

                    ; #69397: <==closure== 28222 (pos)
                    (Pc_survivorat_s_p6)

                    ; #76893: origin
                    (Bd_survivorat_s_p6)

                    ; #10011: <==negation-removal== 76893 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #11559: <==negation-removal== 69397 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #12175: <==negation-removal== 11482 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #34026: <==negation-removal== 28222 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #36806: <==negation-removal== 56862 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51679: <==negation-removal== 59844 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #68786: <==negation-removal== 56759 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81137: <==negation-removal== 18229 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #20913: origin
                    (Bc_survivorat_s_p7)

                    ; #42800: <==closure== 20913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46967: <==closure== 66963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #59670: <==closure== 68565 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60438: origin
                    (Bd_survivorat_s_p7)

                    ; #66963: origin
                    (Ba_survivorat_s_p7)

                    ; #68565: origin
                    (Bb_survivorat_s_p7)

                    ; #80874: <==closure== 60438 (pos)
                    (Pd_survivorat_s_p7)

                    ; #10315: <==negation-removal== 46967 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #46125: <==negation-removal== 80874 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #59154: <==negation-removal== 42800 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #62775: <==negation-removal== 66963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65905: <==negation-removal== 60438 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #65989: <==negation-removal== 68565 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67899: <==negation-removal== 59670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77511: <==negation-removal== 20913 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20913: origin
                    (Bc_survivorat_s_p7)

                    ; #42800: <==closure== 20913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46967: <==closure== 66963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #59670: <==closure== 68565 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60438: origin
                    (Bd_survivorat_s_p7)

                    ; #66963: origin
                    (Ba_survivorat_s_p7)

                    ; #68565: origin
                    (Bb_survivorat_s_p7)

                    ; #80874: <==closure== 60438 (pos)
                    (Pd_survivorat_s_p7)

                    ; #10315: <==negation-removal== 46967 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #46125: <==negation-removal== 80874 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #59154: <==negation-removal== 42800 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #62775: <==negation-removal== 66963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65905: <==negation-removal== 60438 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #65989: <==negation-removal== 68565 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67899: <==negation-removal== 59670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77511: <==negation-removal== 20913 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #20913: origin
                    (Bc_survivorat_s_p7)

                    ; #42800: <==closure== 20913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46967: <==closure== 66963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #59670: <==closure== 68565 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60438: origin
                    (Bd_survivorat_s_p7)

                    ; #66963: origin
                    (Ba_survivorat_s_p7)

                    ; #68565: origin
                    (Bb_survivorat_s_p7)

                    ; #80874: <==closure== 60438 (pos)
                    (Pd_survivorat_s_p7)

                    ; #10315: <==negation-removal== 46967 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #46125: <==negation-removal== 80874 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #59154: <==negation-removal== 42800 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #62775: <==negation-removal== 66963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65905: <==negation-removal== 60438 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #65989: <==negation-removal== 68565 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67899: <==negation-removal== 59670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77511: <==negation-removal== 20913 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (at_d_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #20913: origin
                    (Bc_survivorat_s_p7)

                    ; #42800: <==closure== 20913 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46967: <==closure== 66963 (pos)
                    (Pa_survivorat_s_p7)

                    ; #59670: <==closure== 68565 (pos)
                    (Pb_survivorat_s_p7)

                    ; #60438: origin
                    (Bd_survivorat_s_p7)

                    ; #66963: origin
                    (Ba_survivorat_s_p7)

                    ; #68565: origin
                    (Bb_survivorat_s_p7)

                    ; #80874: <==closure== 60438 (pos)
                    (Pd_survivorat_s_p7)

                    ; #10315: <==negation-removal== 46967 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #46125: <==negation-removal== 80874 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #59154: <==negation-removal== 42800 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #62775: <==negation-removal== 66963 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #65905: <==negation-removal== 60438 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #65989: <==negation-removal== 68565 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #67899: <==negation-removal== 59670 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77511: <==negation-removal== 20913 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #17379: <==closure== 49527 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21581: origin
                    (Bb_survivorat_s_p8)

                    ; #45274: origin
                    (Bd_survivorat_s_p8)

                    ; #48766: <==closure== 67541 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49527: origin
                    (Bc_survivorat_s_p8)

                    ; #67541: origin
                    (Ba_survivorat_s_p8)

                    ; #87902: <==closure== 45274 (pos)
                    (Pd_survivorat_s_p8)

                    ; #89877: <==closure== 21581 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19137: <==negation-removal== 48766 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25423: <==negation-removal== 87902 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42722: <==negation-removal== 21581 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #45269: <==negation-removal== 17379 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48685: <==negation-removal== 45274 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #55316: <==negation-removal== 89877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79977: <==negation-removal== 67541 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87860: <==negation-removal== 49527 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #17379: <==closure== 49527 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21581: origin
                    (Bb_survivorat_s_p8)

                    ; #45274: origin
                    (Bd_survivorat_s_p8)

                    ; #48766: <==closure== 67541 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49527: origin
                    (Bc_survivorat_s_p8)

                    ; #67541: origin
                    (Ba_survivorat_s_p8)

                    ; #87902: <==closure== 45274 (pos)
                    (Pd_survivorat_s_p8)

                    ; #89877: <==closure== 21581 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19137: <==negation-removal== 48766 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25423: <==negation-removal== 87902 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42722: <==negation-removal== 21581 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #45269: <==negation-removal== 17379 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48685: <==negation-removal== 45274 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #55316: <==negation-removal== 89877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79977: <==negation-removal== 67541 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87860: <==negation-removal== 49527 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #17379: <==closure== 49527 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21581: origin
                    (Bb_survivorat_s_p8)

                    ; #45274: origin
                    (Bd_survivorat_s_p8)

                    ; #48766: <==closure== 67541 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49527: origin
                    (Bc_survivorat_s_p8)

                    ; #67541: origin
                    (Ba_survivorat_s_p8)

                    ; #87902: <==closure== 45274 (pos)
                    (Pd_survivorat_s_p8)

                    ; #89877: <==closure== 21581 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19137: <==negation-removal== 48766 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25423: <==negation-removal== 87902 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42722: <==negation-removal== 21581 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #45269: <==negation-removal== 17379 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48685: <==negation-removal== 45274 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #55316: <==negation-removal== 89877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79977: <==negation-removal== 67541 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87860: <==negation-removal== 49527 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #17379: <==closure== 49527 (pos)
                    (Pc_survivorat_s_p8)

                    ; #21581: origin
                    (Bb_survivorat_s_p8)

                    ; #45274: origin
                    (Bd_survivorat_s_p8)

                    ; #48766: <==closure== 67541 (pos)
                    (Pa_survivorat_s_p8)

                    ; #49527: origin
                    (Bc_survivorat_s_p8)

                    ; #67541: origin
                    (Ba_survivorat_s_p8)

                    ; #87902: <==closure== 45274 (pos)
                    (Pd_survivorat_s_p8)

                    ; #89877: <==closure== 21581 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19137: <==negation-removal== 48766 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25423: <==negation-removal== 87902 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #42722: <==negation-removal== 21581 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #45269: <==negation-removal== 17379 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48685: <==negation-removal== 45274 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #55316: <==negation-removal== 89877 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #79977: <==negation-removal== 67541 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #87860: <==negation-removal== 49527 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #15480: <==closure== 17773 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17773: origin
                    (Ba_survivorat_s_p9)

                    ; #29838: origin
                    (Bd_survivorat_s_p9)

                    ; #46048: <==closure== 29838 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55198: <==closure== 82288 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80051: <==closure== 84709 (pos)
                    (Pb_survivorat_s_p9)

                    ; #82288: origin
                    (Bc_survivorat_s_p9)

                    ; #84709: origin
                    (Bb_survivorat_s_p9)

                    ; #19333: <==negation-removal== 80051 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #28415: <==negation-removal== 82288 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44968: <==negation-removal== 15480 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #47056: <==negation-removal== 17773 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #52165: <==negation-removal== 29838 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #55411: <==negation-removal== 84709 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56642: <==negation-removal== 55198 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #71523: <==negation-removal== 46048 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #15480: <==closure== 17773 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17773: origin
                    (Ba_survivorat_s_p9)

                    ; #29838: origin
                    (Bd_survivorat_s_p9)

                    ; #46048: <==closure== 29838 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55198: <==closure== 82288 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80051: <==closure== 84709 (pos)
                    (Pb_survivorat_s_p9)

                    ; #82288: origin
                    (Bc_survivorat_s_p9)

                    ; #84709: origin
                    (Bb_survivorat_s_p9)

                    ; #19333: <==negation-removal== 80051 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #28415: <==negation-removal== 82288 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44968: <==negation-removal== 15480 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #47056: <==negation-removal== 17773 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #52165: <==negation-removal== 29838 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #55411: <==negation-removal== 84709 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56642: <==negation-removal== 55198 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #71523: <==negation-removal== 46048 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #15480: <==closure== 17773 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17773: origin
                    (Ba_survivorat_s_p9)

                    ; #29838: origin
                    (Bd_survivorat_s_p9)

                    ; #46048: <==closure== 29838 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55198: <==closure== 82288 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80051: <==closure== 84709 (pos)
                    (Pb_survivorat_s_p9)

                    ; #82288: origin
                    (Bc_survivorat_s_p9)

                    ; #84709: origin
                    (Bb_survivorat_s_p9)

                    ; #19333: <==negation-removal== 80051 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #28415: <==negation-removal== 82288 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44968: <==negation-removal== 15480 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #47056: <==negation-removal== 17773 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #52165: <==negation-removal== 29838 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #55411: <==negation-removal== 84709 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56642: <==negation-removal== 55198 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #71523: <==negation-removal== 46048 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (Pd_survivorat_s_p9)
                           (at_d_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #15480: <==closure== 17773 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17773: origin
                    (Ba_survivorat_s_p9)

                    ; #29838: origin
                    (Bd_survivorat_s_p9)

                    ; #46048: <==closure== 29838 (pos)
                    (Pd_survivorat_s_p9)

                    ; #55198: <==closure== 82288 (pos)
                    (Pc_survivorat_s_p9)

                    ; #80051: <==closure== 84709 (pos)
                    (Pb_survivorat_s_p9)

                    ; #82288: origin
                    (Bc_survivorat_s_p9)

                    ; #84709: origin
                    (Bb_survivorat_s_p9)

                    ; #19333: <==negation-removal== 80051 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #28415: <==negation-removal== 82288 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #44968: <==negation-removal== 15480 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #47056: <==negation-removal== 17773 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #52165: <==negation-removal== 29838 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #55411: <==negation-removal== 84709 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #56642: <==negation-removal== 55198 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #71523: <==negation-removal== 46048 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #72217: origin
                    (at_a_p1)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #67021: origin
                    (at_a_p11)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #82394: origin
                    (not_at_a_p10)

                    ; #82502: origin
                    (at_a_p5)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #81915: origin
                    (at_a_p6)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #78610: origin
                    (at_a_p9)

                    ; #82394: origin
                    (not_at_a_p10)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #43141: <==negation-removal== 82394 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #56824: origin
                    (not_at_a_p11)

                    ; #72217: origin
                    (at_a_p1)

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #56824: origin
                    (not_at_a_p11)

                    ; #67021: origin
                    (at_a_p11)

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #56824: origin
                    (not_at_a_p11)

                    ; #82502: origin
                    (at_a_p5)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #56824: origin
                    (not_at_a_p11)

                    ; #81915: origin
                    (at_a_p6)

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #56824: origin
                    (not_at_a_p11)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #56824: origin
                    (not_at_a_p11)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #67021: <==negation-removal== 56824 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #72217: origin
                    (at_a_p1)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #43141: origin
                    (at_a_p10)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #67021: origin
                    (at_a_p11)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #33490: origin
                    (at_a_p12)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #32021: origin
                    (not_at_a_p12)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #32021: origin
                    (not_at_a_p12)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #37651: origin
                    (at_a_p4)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #82502: origin
                    (at_a_p5)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #81915: origin
                    (at_a_p6)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #32021: origin
                    (not_at_a_p12)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #33189: origin
                    (at_a_p8)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #32021: origin
                    (not_at_a_p12)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33490: <==negation-removal== 32021 (pos)
                    (not (at_a_p12))

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #72217: origin
                    (at_a_p1)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #67021: origin
                    (at_a_p11)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #76613: origin
                    (not_at_a_p1)

                    ; #82502: origin
                    (at_a_p5)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #76613: origin
                    (not_at_a_p1)

                    ; #81915: origin
                    (at_a_p6)

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #76613: origin
                    (not_at_a_p1)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #76613: origin
                    (not_at_a_p1)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #72217: <==negation-removal== 76613 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #72217: origin
                    (at_a_p1)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #67021: origin
                    (at_a_p11)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #82502: origin
                    (at_a_p5)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #81915: origin
                    (at_a_p6)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #78610: origin
                    (at_a_p9)

                    ; #91878: origin
                    (not_at_a_p2)

                    ; #31858: <==negation-removal== 91878 (pos)
                    (not (at_a_p2))

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #72217: origin
                    (at_a_p1)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #43141: origin
                    (at_a_p10)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #67021: origin
                    (at_a_p11)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #33490: origin
                    (at_a_p12)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #31858: origin
                    (at_a_p2)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #13772: origin
                    (at_a_p3)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #37651: origin
                    (at_a_p4)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #82502: origin
                    (at_a_p5)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #81915: origin
                    (at_a_p6)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #27835: origin
                    (at_a_p7)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #33189: origin
                    (at_a_p8)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #12556: origin
                    (not_at_a_p3)

                    ; #78610: origin
                    (at_a_p9)

                    ; #13772: <==negation-removal== 12556 (pos)
                    (not (at_a_p3))

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #54041: origin
                    (not_at_a_p4)

                    ; #72217: origin
                    (at_a_p1)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #54041: origin
                    (not_at_a_p4)

                    ; #67021: origin
                    (at_a_p11)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #54041: origin
                    (not_at_a_p4)

                    ; #82502: origin
                    (at_a_p5)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #54041: origin
                    (not_at_a_p4)

                    ; #81915: origin
                    (at_a_p6)

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #54041: origin
                    (not_at_a_p4)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #54041: origin
                    (not_at_a_p4)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #37651: <==negation-removal== 54041 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #72217: origin
                    (at_a_p1)

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #43141: origin
                    (at_a_p10)

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #67021: origin
                    (at_a_p11)

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #82502: origin
                    (at_a_p5)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #81915: origin
                    (at_a_p6)

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #39621: origin
                    (not_at_a_p5)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #39621: origin
                    (not_at_a_p5)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #82502: <==negation-removal== 39621 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #72217: origin
                    (at_a_p1)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #43141: origin
                    (at_a_p10)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6))
        :effect (and
                    ; #67021: origin
                    (at_a_p11)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #37651: origin
                    (at_a_p4)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #82502: origin
                    (at_a_p5)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #81915: origin
                    (at_a_p6)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #78610: origin
                    (at_a_p9)

                    ; #89093: origin
                    (not_at_a_p6)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #81915: <==negation-removal== 89093 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #72217: origin
                    (at_a_p1)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #43141: origin
                    (at_a_p10)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #67021: origin
                    (at_a_p11)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #33490: origin
                    (at_a_p12)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #31858: origin
                    (at_a_p2)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #15070: origin
                    (not_at_a_p7)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #37651: origin
                    (at_a_p4)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #82502: origin
                    (at_a_p5)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #81915: origin
                    (at_a_p6)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #27835: origin
                    (at_a_p7)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #33189: origin
                    (at_a_p8)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15070: origin
                    (not_at_a_p7)

                    ; #78610: origin
                    (at_a_p9)

                    ; #27835: <==negation-removal== 15070 (pos)
                    (not (at_a_p7))

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #72217: origin
                    (at_a_p1)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #43141: origin
                    (at_a_p10)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #67021: origin
                    (at_a_p11)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #33490: origin
                    (at_a_p12)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #31858: origin
                    (at_a_p2)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #23035: origin
                    (not_at_a_p8)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #37651: origin
                    (at_a_p4)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #82502: origin
                    (at_a_p5)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #81915: origin
                    (at_a_p6)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #27835: origin
                    (at_a_p7)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #33189: origin
                    (at_a_p8)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #23035: origin
                    (not_at_a_p8)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33189: <==negation-removal== 23035 (pos)
                    (not (at_a_p8))

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #72217: origin
                    (at_a_p1)

                    ; #76613: <==negation-removal== 72217 (pos)
                    (not (not_at_a_p1))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #43141: origin
                    (at_a_p10)

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))

                    ; #82394: <==negation-removal== 43141 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #67021: origin
                    (at_a_p11)

                    ; #56824: <==negation-removal== 67021 (pos)
                    (not (not_at_a_p11))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #33490: origin
                    (at_a_p12)

                    ; #33816: origin
                    (not_at_a_p9)

                    ; #32021: <==negation-removal== 33490 (pos)
                    (not (not_at_a_p12))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #31858: origin
                    (at_a_p2)

                    ; #33816: origin
                    (not_at_a_p9)

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))

                    ; #91878: <==negation-removal== 31858 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #13772: origin
                    (at_a_p3)

                    ; #33816: origin
                    (not_at_a_p9)

                    ; #12556: <==negation-removal== 13772 (pos)
                    (not (not_at_a_p3))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #37651: origin
                    (at_a_p4)

                    ; #54041: <==negation-removal== 37651 (pos)
                    (not (not_at_a_p4))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #82502: origin
                    (at_a_p5)

                    ; #39621: <==negation-removal== 82502 (pos)
                    (not (not_at_a_p5))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #81915: origin
                    (at_a_p6)

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))

                    ; #89093: <==negation-removal== 81915 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #27835: origin
                    (at_a_p7)

                    ; #33816: origin
                    (not_at_a_p9)

                    ; #15070: <==negation-removal== 27835 (pos)
                    (not (not_at_a_p7))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #33189: origin
                    (at_a_p8)

                    ; #33816: origin
                    (not_at_a_p9)

                    ; #23035: <==negation-removal== 33189 (pos)
                    (not (not_at_a_p8))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #33816: origin
                    (not_at_a_p9)

                    ; #78610: origin
                    (at_a_p9)

                    ; #33816: <==negation-removal== 78610 (pos)
                    (not (not_at_a_p9))

                    ; #78610: <==negation-removal== 33816 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #69099: origin
                    (at_b_p1)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #70174: origin
                    (at_b_p10)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #73199: origin
                    (not_at_b_p10)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #73199: origin
                    (not_at_b_p10)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #73199: origin
                    (not_at_b_p10)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #73199: origin
                    (not_at_b_p10)

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))

                    ; #70174: <==negation-removal== 73199 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #69099: origin
                    (at_b_p1)

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #70174: origin
                    (at_b_p10)

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #54083: origin
                    (not_at_b_p11)

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #54083: origin
                    (not_at_b_p11)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #54083: origin
                    (not_at_b_p11)

                    ; #57660: origin
                    (at_b_p6)

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #54083: origin
                    (not_at_b_p11)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #54083: origin
                    (not_at_b_p11)

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #54083: origin
                    (not_at_b_p11)

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))

                    ; #79025: <==negation-removal== 54083 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #69099: origin
                    (at_b_p1)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #70174: origin
                    (at_b_p10)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #75375: origin
                    (not_at_b_p12)

                    ; #79025: origin
                    (at_b_p11)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #75375: origin
                    (not_at_b_p12)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #75375: origin
                    (not_at_b_p12)

                    ; #81305: origin
                    (at_b_p5)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #75375: origin
                    (not_at_b_p12)

                    ; #32400: <==negation-removal== 75375 (pos)
                    (not (at_b_p12))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #69099: origin
                    (at_b_p1)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #70174: origin
                    (at_b_p10)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #70250: origin
                    (not_at_b_p1)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #70250: origin
                    (not_at_b_p1)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #70250: origin
                    (not_at_b_p1)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #70250: origin
                    (not_at_b_p1)

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))

                    ; #69099: <==negation-removal== 70250 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #69099: origin
                    (at_b_p1)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #70174: origin
                    (at_b_p10)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #32400: origin
                    (at_b_p12)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #45851: origin
                    (at_b_p3)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #57660: origin
                    (at_b_p6)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #39295: origin
                    (at_b_p7)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #36463: origin
                    (at_b_p8)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #14362: origin
                    (not_at_b_p2)

                    ; #18977: origin
                    (at_b_p9)

                    ; #60929: <==negation-removal== 14362 (pos)
                    (not (at_b_p2))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #69099: origin
                    (at_b_p1)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #70174: origin
                    (at_b_p10)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #79025: origin
                    (at_b_p11)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #55978: origin
                    (not_at_b_p3)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #55978: origin
                    (not_at_b_p3)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #55978: origin
                    (not_at_b_p3)

                    ; #57660: origin
                    (at_b_p6)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #55978: origin
                    (not_at_b_p3)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #55978: origin
                    (not_at_b_p3)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #55978: origin
                    (not_at_b_p3)

                    ; #45851: <==negation-removal== 55978 (pos)
                    (not (at_b_p3))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #69099: origin
                    (at_b_p1)

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #70174: origin
                    (at_b_p10)

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #32400: origin
                    (at_b_p12)

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #45851: origin
                    (at_b_p3)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #57660: origin
                    (at_b_p6)

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #39295: origin
                    (at_b_p7)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #36463: origin
                    (at_b_p8)

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #16818: origin
                    (not_at_b_p4)

                    ; #18977: origin
                    (at_b_p9)

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))

                    ; #82640: <==negation-removal== 16818 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #69099: origin
                    (at_b_p1)

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #70174: origin
                    (at_b_p10)

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #34092: origin
                    (not_at_b_p5)

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #45851: origin
                    (at_b_p3)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #57660: origin
                    (at_b_p6)

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #39295: origin
                    (at_b_p7)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #34092: origin
                    (not_at_b_p5)

                    ; #36463: origin
                    (at_b_p8)

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #34092: origin
                    (not_at_b_p5)

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))

                    ; #81305: <==negation-removal== 34092 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #66176: origin
                    (not_at_b_p6)

                    ; #69099: origin
                    (at_b_p1)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #66176: origin
                    (not_at_b_p6)

                    ; #70174: origin
                    (at_b_p10)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #66176: origin
                    (not_at_b_p6)

                    ; #79025: origin
                    (at_b_p11)

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #66176: origin
                    (not_at_b_p6)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #66176: origin
                    (not_at_b_p6)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #66176: origin
                    (not_at_b_p6)

                    ; #57660: <==negation-removal== 66176 (pos)
                    (not (at_b_p6))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #69099: origin
                    (at_b_p1)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #70174: origin
                    (at_b_p10)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #79025: origin
                    (at_b_p11)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #32400: origin
                    (at_b_p12)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #60929: origin
                    (at_b_p2)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #45851: origin
                    (at_b_p3)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #57660: origin
                    (at_b_p6)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #39295: origin
                    (at_b_p7)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #36463: origin
                    (at_b_p8)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #13106: origin
                    (not_at_b_p7)

                    ; #18977: origin
                    (at_b_p9)

                    ; #39295: <==negation-removal== 13106 (pos)
                    (not (at_b_p7))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #62553: origin
                    (not_at_b_p8)

                    ; #69099: origin
                    (at_b_p1)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #62553: origin
                    (not_at_b_p8)

                    ; #70174: origin
                    (at_b_p10)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #62553: origin
                    (not_at_b_p8)

                    ; #79025: origin
                    (at_b_p11)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #62553: origin
                    (not_at_b_p8)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #62553: origin
                    (not_at_b_p8)

                    ; #81305: origin
                    (at_b_p5)

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #62553: origin
                    (not_at_b_p8)

                    ; #36463: <==negation-removal== 62553 (pos)
                    (not (at_b_p8))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #68053: origin
                    (not_at_b_p9)

                    ; #69099: origin
                    (at_b_p1)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #70250: <==negation-removal== 69099 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #68053: origin
                    (not_at_b_p9)

                    ; #70174: origin
                    (at_b_p10)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #73199: <==negation-removal== 70174 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #68053: origin
                    (not_at_b_p9)

                    ; #79025: origin
                    (at_b_p11)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #54083: <==negation-removal== 79025 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #32400: origin
                    (at_b_p12)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #75375: <==negation-removal== 32400 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #60929: origin
                    (at_b_p2)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #14362: <==negation-removal== 60929 (pos)
                    (not (not_at_b_p2))

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #45851: origin
                    (at_b_p3)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #55978: <==negation-removal== 45851 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #68053: origin
                    (not_at_b_p9)

                    ; #82640: origin
                    (at_b_p4)

                    ; #16818: <==negation-removal== 82640 (pos)
                    (not (not_at_b_p4))

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #68053: origin
                    (not_at_b_p9)

                    ; #81305: origin
                    (at_b_p5)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #34092: <==negation-removal== 81305 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #57660: origin
                    (at_b_p6)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #66176: <==negation-removal== 57660 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #39295: origin
                    (at_b_p7)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #13106: <==negation-removal== 39295 (pos)
                    (not (not_at_b_p7))

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #36463: origin
                    (at_b_p8)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #62553: <==negation-removal== 36463 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #18977: origin
                    (at_b_p9)

                    ; #68053: origin
                    (not_at_b_p9)

                    ; #18977: <==negation-removal== 68053 (pos)
                    (not (at_b_p9))

                    ; #68053: <==negation-removal== 18977 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #59919: origin
                    (at_c_p11)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #68171: origin
                    (not_at_c_p10)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #68171: origin
                    (not_at_c_p10)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #68171: origin
                    (not_at_c_p10)

                    ; #90712: origin
                    (at_c_p6)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #68171: origin
                    (not_at_c_p10)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #68171: origin
                    (not_at_c_p10)

                    ; #83443: origin
                    (at_c_p8)

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #68171: origin
                    (not_at_c_p10)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #39811: <==negation-removal== 68171 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #59919: origin
                    (at_c_p11)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #69466: origin
                    (at_c_p2)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #72813: origin
                    (at_c_p3)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #84915: origin
                    (not_at_c_p11)

                    ; #90712: origin
                    (at_c_p6)

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #83443: origin
                    (at_c_p8)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #74899: origin
                    (at_c_p9)

                    ; #84915: origin
                    (not_at_c_p11)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #59919: <==negation-removal== 84915 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #36797: origin
                    (not_at_c_p12)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #39811: origin
                    (at_c_p10)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #59919: origin
                    (at_c_p11)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #36797: origin
                    (not_at_c_p12)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #69466: origin
                    (at_c_p2)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #72813: origin
                    (at_c_p3)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #36797: origin
                    (not_at_c_p12)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #90712: origin
                    (at_c_p6)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #52974: origin
                    (at_c_p7)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #83443: origin
                    (at_c_p8)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #36797: origin
                    (not_at_c_p12)

                    ; #74899: origin
                    (at_c_p9)

                    ; #13445: <==negation-removal== 36797 (pos)
                    (not (at_c_p12))

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #59919: origin
                    (at_c_p11)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #90712: origin
                    (at_c_p6)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #55857: origin
                    (not_at_c_p1)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #83443: origin
                    (at_c_p8)

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #55857: origin
                    (not_at_c_p1)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #29346: <==negation-removal== 55857 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #29346: origin
                    (at_c_p1)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #39811: origin
                    (at_c_p10)

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #59919: origin
                    (at_c_p11)

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #15306: origin
                    (not_at_c_p2)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #17296: origin
                    (at_c_p4)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #90712: origin
                    (at_c_p6)

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #52974: origin
                    (at_c_p7)

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #83443: origin
                    (at_c_p8)

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #15306: origin
                    (not_at_c_p2)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #69466: <==negation-removal== 15306 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #29346: origin
                    (at_c_p1)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #39811: origin
                    (at_c_p10)

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #59919: origin
                    (at_c_p11)

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #24172: origin
                    (not_at_c_p3)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #24172: origin
                    (not_at_c_p3)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #90712: origin
                    (at_c_p6)

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #52974: origin
                    (at_c_p7)

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #83443: origin
                    (at_c_p8)

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #24172: origin
                    (not_at_c_p3)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #72813: <==negation-removal== 24172 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #29346: origin
                    (at_c_p1)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #39811: origin
                    (at_c_p10)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #59919: origin
                    (at_c_p11)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #13445: origin
                    (at_c_p12)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #72813: origin
                    (at_c_p3)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #17296: origin
                    (at_c_p4)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #90712: origin
                    (at_c_p6)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #52974: origin
                    (at_c_p7)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #83443: origin
                    (at_c_p8)

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #12134: origin
                    (not_at_c_p4)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #17296: <==negation-removal== 12134 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #29346: origin
                    (at_c_p1)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #39811: origin
                    (at_c_p10)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #59919: origin
                    (at_c_p11)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #13445: origin
                    (at_c_p12)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #17296: origin
                    (at_c_p4)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #90712: origin
                    (at_c_p6)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #52974: origin
                    (at_c_p7)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #83443: origin
                    (at_c_p8)

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #11550: origin
                    (not_at_c_p5)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #55118: <==negation-removal== 11550 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #59919: origin
                    (at_c_p11)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #69466: origin
                    (at_c_p2)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #70487: origin
                    (not_at_c_p6)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #70487: origin
                    (not_at_c_p6)

                    ; #90712: origin
                    (at_c_p6)

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #70487: origin
                    (not_at_c_p6)

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #70487: origin
                    (not_at_c_p6)

                    ; #83443: origin
                    (at_c_p8)

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #70487: origin
                    (not_at_c_p6)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #90712: <==negation-removal== 70487 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #59919: origin
                    (at_c_p11)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #69466: origin
                    (at_c_p2)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #72813: origin
                    (at_c_p3)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #90712: origin
                    (at_c_p6)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #83443: origin
                    (at_c_p8)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #74899: origin
                    (at_c_p9)

                    ; #91352: origin
                    (not_at_c_p7)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #52974: <==negation-removal== 91352 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #29346: origin
                    (at_c_p1)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #39811: origin
                    (at_c_p10)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #59919: origin
                    (at_c_p11)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #69466: origin
                    (at_c_p2)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #72654: origin
                    (not_at_c_p8)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #17296: origin
                    (at_c_p4)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #55118: origin
                    (at_c_p5)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #72654: origin
                    (not_at_c_p8)

                    ; #90712: origin
                    (at_c_p6)

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #52974: origin
                    (at_c_p7)

                    ; #72654: origin
                    (not_at_c_p8)

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #72654: origin
                    (not_at_c_p8)

                    ; #83443: origin
                    (at_c_p8)

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #72654: origin
                    (not_at_c_p8)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #83443: <==negation-removal== 72654 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #29346: origin
                    (at_c_p1)

                    ; #55857: <==negation-removal== 29346 (pos)
                    (not (not_at_c_p1))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #39811: origin
                    (at_c_p10)

                    ; #68171: <==negation-removal== 39811 (pos)
                    (not (not_at_c_p10))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #59919: origin
                    (at_c_p11)

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))

                    ; #84915: <==negation-removal== 59919 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #13445: origin
                    (at_c_p12)

                    ; #15892: origin
                    (not_at_c_p9)

                    ; #36797: <==negation-removal== 13445 (pos)
                    (not (not_at_c_p12))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #69466: origin
                    (at_c_p2)

                    ; #15306: <==negation-removal== 69466 (pos)
                    (not (not_at_c_p2))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #72813: origin
                    (at_c_p3)

                    ; #24172: <==negation-removal== 72813 (pos)
                    (not (not_at_c_p3))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #17296: origin
                    (at_c_p4)

                    ; #12134: <==negation-removal== 17296 (pos)
                    (not (not_at_c_p4))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #55118: origin
                    (at_c_p5)

                    ; #11550: <==negation-removal== 55118 (pos)
                    (not (not_at_c_p5))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #90712: origin
                    (at_c_p6)

                    ; #70487: <==negation-removal== 90712 (pos)
                    (not (not_at_c_p6))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #52974: origin
                    (at_c_p7)

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))

                    ; #91352: <==negation-removal== 52974 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #83443: origin
                    (at_c_p8)

                    ; #72654: <==negation-removal== 83443 (pos)
                    (not (not_at_c_p8))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #15892: origin
                    (not_at_c_p9)

                    ; #74899: origin
                    (at_c_p9)

                    ; #15892: <==negation-removal== 74899 (pos)
                    (not (not_at_c_p9))

                    ; #74899: <==negation-removal== 15892 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #92584: origin
                    (at_d_p1)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #43261: origin
                    (at_d_p10)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #42146: origin
                    (not_at_d_p10)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #57483: origin
                    (at_d_p12)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #60906: origin
                    (at_d_p2)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #42146: origin
                    (not_at_d_p10)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_d_p10))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #42146: origin
                    (not_at_d_p10)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #64523: origin
                    (at_d_p5)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #54920: origin
                    (at_d_p6)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #42146: origin
                    (not_at_d_p10)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_d_p10))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #42146: origin
                    (not_at_d_p10)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #42146: origin
                    (not_at_d_p10)

                    ; #43625: origin
                    (at_d_p9)

                    ; #43261: <==negation-removal== 42146 (pos)
                    (not (at_d_p10))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #74670: origin
                    (not_at_d_p11)

                    ; #92584: origin
                    (at_d_p1)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_d_p11))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #74670: origin
                    (not_at_d_p11)

                    ; #19602: <==negation-removal== 74670 (pos)
                    (not (at_d_p11))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12))
        :effect (and
                    ; #66890: origin
                    (not_at_d_p12)

                    ; #92584: origin
                    (at_d_p1)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #66890: origin
                    (not_at_d_p12)

                    ; #57483: <==negation-removal== 66890 (pos)
                    (not (at_d_p12))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #81365: origin
                    (not_at_d_p1)

                    ; #92584: origin
                    (at_d_p1)

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #81365: origin
                    (not_at_d_p1)

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))

                    ; #92584: <==negation-removal== 81365 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #61172: origin
                    (not_at_d_p2)

                    ; #92584: origin
                    (at_d_p1)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #61172: origin
                    (not_at_d_p2)

                    ; #64523: origin
                    (at_d_p5)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #61172: origin
                    (not_at_d_p2)

                    ; #60906: <==negation-removal== 61172 (pos)
                    (not (at_d_p2))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #69188: origin
                    (not_at_d_p3)

                    ; #92584: origin
                    (at_d_p1)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #69188: origin
                    (not_at_d_p3)

                    ; #28847: <==negation-removal== 69188 (pos)
                    (not (at_d_p3))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #60507: origin
                    (not_at_d_p4)

                    ; #92584: origin
                    (at_d_p1)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #60507: origin
                    (not_at_d_p4)

                    ; #60906: origin
                    (at_d_p2)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4))
        :effect (and
                    ; #60507: origin
                    (not_at_d_p4)

                    ; #64523: origin
                    (at_d_p5)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #60507: origin
                    (not_at_d_p4)

                    ; #28601: <==negation-removal== 60507 (pos)
                    (not (at_d_p4))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #92584: origin
                    (at_d_p1)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #43261: origin
                    (at_d_p10)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #40652: origin
                    (not_at_d_p5)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #57483: origin
                    (at_d_p12)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #60906: origin
                    (at_d_p2)

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #40652: origin
                    (not_at_d_p5)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #40652: origin
                    (not_at_d_p5)

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #64523: origin
                    (at_d_p5)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #54920: origin
                    (at_d_p6)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #40652: origin
                    (not_at_d_p5)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #40652: origin
                    (not_at_d_p5)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #40652: origin
                    (not_at_d_p5)

                    ; #43625: origin
                    (at_d_p9)

                    ; #64523: <==negation-removal== 40652 (pos)
                    (not (at_d_p5))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #79826: origin
                    (not_at_d_p6)

                    ; #92584: origin
                    (at_d_p1)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_d_p6))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #79826: origin
                    (not_at_d_p6)

                    ; #54920: <==negation-removal== 79826 (pos)
                    (not (at_d_p6))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #92584: origin
                    (at_d_p1)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #43261: origin
                    (at_d_p10)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #39312: origin
                    (not_at_d_p7)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #57483: origin
                    (at_d_p12)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #60906: origin
                    (at_d_p2)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #39312: origin
                    (not_at_d_p7)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #39312: origin
                    (not_at_d_p7)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #64523: origin
                    (at_d_p5)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #54920: origin
                    (at_d_p6)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #39312: origin
                    (not_at_d_p7)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #39312: origin
                    (not_at_d_p7)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #39312: origin
                    (not_at_d_p7)

                    ; #43625: origin
                    (at_d_p9)

                    ; #29227: <==negation-removal== 39312 (pos)
                    (not (at_d_p7))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #92584: origin
                    (at_d_p1)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #43261: origin
                    (at_d_p10)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #35411: origin
                    (not_at_d_p8)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #57483: origin
                    (at_d_p12)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #60906: origin
                    (at_d_p2)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #35411: origin
                    (not_at_d_p8)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_d_p8))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #35411: origin
                    (not_at_d_p8)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #64523: origin
                    (at_d_p5)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #54920: origin
                    (at_d_p6)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #35411: origin
                    (not_at_d_p8)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #35411: origin
                    (not_at_d_p8)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #35411: origin
                    (not_at_d_p8)

                    ; #43625: origin
                    (at_d_p9)

                    ; #25108: <==negation-removal== 35411 (pos)
                    (not (at_d_p8))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #74114: origin
                    (not_at_d_p9)

                    ; #92584: origin
                    (at_d_p1)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #81365: <==negation-removal== 92584 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #43261: origin
                    (at_d_p10)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #42146: <==negation-removal== 43261 (pos)
                    (not (not_at_d_p10))

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_d_p9))
        :effect (and
                    ; #19602: origin
                    (at_d_p11)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #74670: <==negation-removal== 19602 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #57483: origin
                    (at_d_p12)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #66890: <==negation-removal== 57483 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #60906: origin
                    (at_d_p2)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #61172: <==negation-removal== 60906 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #28847: origin
                    (at_d_p3)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #69188: <==negation-removal== 28847 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #28601: origin
                    (at_d_p4)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #60507: <==negation-removal== 28601 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #64523: origin
                    (at_d_p5)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #40652: <==negation-removal== 64523 (pos)
                    (not (not_at_d_p5))

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #54920: origin
                    (at_d_p6)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #79826: <==negation-removal== 54920 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #29227: origin
                    (at_d_p7)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #39312: <==negation-removal== 29227 (pos)
                    (not (not_at_d_p7))

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #25108: origin
                    (at_d_p8)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #35411: <==negation-removal== 25108 (pos)
                    (not (not_at_d_p8))

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #43625: origin
                    (at_d_p9)

                    ; #74114: origin
                    (not_at_d_p9)

                    ; #43625: <==negation-removal== 74114 (pos)
                    (not (at_d_p9))

                    ; #74114: <==negation-removal== 43625 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #13632: <==closure== 41328 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #26677: <==commonly_known== 34057 (neg)
                    (Pc_checked_p10)

                    ; #32530: <==commonly_known== 34057 (neg)
                    (Pa_checked_p10)

                    ; #41328: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #44643: <==commonly_known== 34057 (neg)
                    (Pb_checked_p10)

                    ; #60781: <==closure== 63561 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #63561: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #64177: <==commonly_known== 91715 (pos)
                    (Bd_checked_p10)

                    ; #69018: <==commonly_known== 91715 (pos)
                    (Ba_checked_p10)

                    ; #77288: <==commonly_known== 91715 (pos)
                    (Bb_checked_p10)

                    ; #80661: <==commonly_known== 91715 (pos)
                    (Bc_checked_p10)

                    ; #81813: <==commonly_known== 34057 (neg)
                    (Pd_checked_p10)

                    ; #91715: origin
                    (checked_p10)

                    ; #14934: <==negation-removal== 69018 (pos)
                    (not (Pa_not_checked_p10))

                    ; #25099: <==negation-removal== 60781 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #25790: <==negation-removal== 32530 (pos)
                    (not (Ba_not_checked_p10))

                    ; #34057: <==negation-removal== 91715 (pos)
                    (not (not_checked_p10))

                    ; #34642: <==negation-removal== 77288 (pos)
                    (not (Pb_not_checked_p10))

                    ; #36889: <==negation-removal== 13632 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #39714: <==uncertain_firing== 63561 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #40264: <==uncertain_firing== 41328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #45542: <==negation-removal== 41328 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #48357: <==negation-removal== 81813 (pos)
                    (not (Bd_not_checked_p10))

                    ; #65595: <==negation-removal== 80661 (pos)
                    (not (Pc_not_checked_p10))

                    ; #67983: <==negation-removal== 63561 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #72186: <==uncertain_firing== 13632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #84400: <==negation-removal== 64177 (pos)
                    (not (Pd_not_checked_p10))

                    ; #87188: <==uncertain_firing== 60781 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #91508: <==negation-removal== 26677 (pos)
                    (not (Bc_not_checked_p10))

                    ; #97186: <==negation-removal== 44643 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18400: <==commonly_known== 57918 (neg)
                    (Pb_checked_p11)

                    ; #20471: <==commonly_known== 44564 (pos)
                    (Ba_checked_p11)

                    ; #31045: <==closure== 32846 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #32509: <==closure== 53216 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #32846: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #36223: <==commonly_known== 44564 (pos)
                    (Bd_checked_p11)

                    ; #38951: <==commonly_known== 57918 (neg)
                    (Pc_checked_p11)

                    ; #44564: origin
                    (checked_p11)

                    ; #53216: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #55422: <==commonly_known== 57918 (neg)
                    (Pd_checked_p11)

                    ; #61671: <==commonly_known== 44564 (pos)
                    (Bc_checked_p11)

                    ; #65580: <==commonly_known== 44564 (pos)
                    (Bb_checked_p11)

                    ; #90593: <==commonly_known== 57918 (neg)
                    (Pa_checked_p11)

                    ; #10304: <==uncertain_firing== 31045 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #23827: <==uncertain_firing== 32846 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #25336: <==negation-removal== 32846 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #29454: <==negation-removal== 18400 (pos)
                    (not (Bb_not_checked_p11))

                    ; #36216: <==negation-removal== 55422 (pos)
                    (not (Bd_not_checked_p11))

                    ; #42846: <==uncertain_firing== 53216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #47671: <==negation-removal== 90593 (pos)
                    (not (Ba_not_checked_p11))

                    ; #53130: <==negation-removal== 31045 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #57918: <==negation-removal== 44564 (pos)
                    (not (not_checked_p11))

                    ; #60316: <==negation-removal== 38951 (pos)
                    (not (Bc_not_checked_p11))

                    ; #61079: <==negation-removal== 32509 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #62714: <==negation-removal== 36223 (pos)
                    (not (Pd_not_checked_p11))

                    ; #65283: <==negation-removal== 65580 (pos)
                    (not (Pb_not_checked_p11))

                    ; #70126: <==uncertain_firing== 32509 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #73680: <==negation-removal== 20471 (pos)
                    (not (Pa_not_checked_p11))

                    ; #78770: <==negation-removal== 61671 (pos)
                    (not (Pc_not_checked_p11))

                    ; #83381: <==negation-removal== 53216 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #26047: <==closure== 69675 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #26373: <==commonly_known== 58502 (pos)
                    (Ba_checked_p12)

                    ; #34332: <==commonly_known== 58502 (pos)
                    (Bc_checked_p12)

                    ; #36096: <==closure== 99944 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #38002: <==commonly_known== 58502 (pos)
                    (Bd_checked_p12)

                    ; #42350: <==commonly_known== 64142 (neg)
                    (Pb_checked_p12)

                    ; #47603: <==commonly_known== 64142 (neg)
                    (Pa_checked_p12)

                    ; #58502: origin
                    (checked_p12)

                    ; #58537: <==commonly_known== 64142 (neg)
                    (Pd_checked_p12)

                    ; #65466: <==commonly_known== 58502 (pos)
                    (Bb_checked_p12)

                    ; #69675: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #76824: <==commonly_known== 64142 (neg)
                    (Pc_checked_p12)

                    ; #99944: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #14564: <==negation-removal== 69675 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #20259: <==negation-removal== 38002 (pos)
                    (not (Pd_not_checked_p12))

                    ; #22406: <==negation-removal== 65466 (pos)
                    (not (Pb_not_checked_p12))

                    ; #24308: <==negation-removal== 36096 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #28095: <==uncertain_firing== 26047 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #30841: <==negation-removal== 76824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #32522: <==negation-removal== 47603 (pos)
                    (not (Ba_not_checked_p12))

                    ; #32584: <==negation-removal== 99944 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #39596: <==negation-removal== 34332 (pos)
                    (not (Pc_not_checked_p12))

                    ; #50031: <==negation-removal== 26047 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #50330: <==negation-removal== 42350 (pos)
                    (not (Bb_not_checked_p12))

                    ; #51982: <==negation-removal== 58537 (pos)
                    (not (Bd_not_checked_p12))

                    ; #56275: <==uncertain_firing== 69675 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #64142: <==negation-removal== 58502 (pos)
                    (not (not_checked_p12))

                    ; #71826: <==negation-removal== 26373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #74139: <==uncertain_firing== 99944 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #84703: <==uncertain_firing== 36096 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10065: <==closure== 45751 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #17869: <==commonly_known== 24669 (neg)
                    (Pb_checked_p1)

                    ; #23214: <==commonly_known== 24669 (neg)
                    (Pa_checked_p1)

                    ; #26899: origin
                    (checked_p1)

                    ; #29647: <==commonly_known== 26899 (pos)
                    (Bb_checked_p1)

                    ; #35357: <==commonly_known== 26899 (pos)
                    (Bc_checked_p1)

                    ; #36685: <==commonly_known== 26899 (pos)
                    (Ba_checked_p1)

                    ; #44543: <==commonly_known== 24669 (neg)
                    (Pd_checked_p1)

                    ; #45751: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #64464: <==commonly_known== 24669 (neg)
                    (Pc_checked_p1)

                    ; #70042: <==commonly_known== 26899 (pos)
                    (Bd_checked_p1)

                    ; #71707: <==closure== 89940 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #89940: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #11491: <==negation-removal== 17869 (pos)
                    (not (Bb_not_checked_p1))

                    ; #17842: <==uncertain_firing== 89940 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #24669: <==negation-removal== 26899 (pos)
                    (not (not_checked_p1))

                    ; #25866: <==negation-removal== 71707 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #26077: <==negation-removal== 29647 (pos)
                    (not (Pb_not_checked_p1))

                    ; #27612: <==negation-removal== 70042 (pos)
                    (not (Pd_not_checked_p1))

                    ; #55406: <==negation-removal== 10065 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #60496: <==uncertain_firing== 71707 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #61315: <==uncertain_firing== 10065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #63840: <==negation-removal== 23214 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71423: <==negation-removal== 44543 (pos)
                    (not (Bd_not_checked_p1))

                    ; #77384: <==negation-removal== 35357 (pos)
                    (not (Pc_not_checked_p1))

                    ; #80070: <==negation-removal== 64464 (pos)
                    (not (Bc_not_checked_p1))

                    ; #82142: <==uncertain_firing== 45751 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #88090: <==negation-removal== 45751 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #89631: <==negation-removal== 89940 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #91544: <==negation-removal== 36685 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19838: <==commonly_known== 22307 (neg)
                    (Pb_checked_p2)

                    ; #34610: <==closure== 68908 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #36488: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #54135: <==commonly_known== 22307 (neg)
                    (Pa_checked_p2)

                    ; #56693: <==commonly_known== 22307 (neg)
                    (Pc_checked_p2)

                    ; #61274: <==commonly_known== 74761 (pos)
                    (Ba_checked_p2)

                    ; #68908: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #74761: origin
                    (checked_p2)

                    ; #76116: <==commonly_known== 74761 (pos)
                    (Bc_checked_p2)

                    ; #76391: <==commonly_known== 74761 (pos)
                    (Bb_checked_p2)

                    ; #83405: <==commonly_known== 74761 (pos)
                    (Bd_checked_p2)

                    ; #83778: <==commonly_known== 22307 (neg)
                    (Pd_checked_p2)

                    ; #87162: <==closure== 36488 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #13589: <==negation-removal== 34610 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #16248: <==negation-removal== 19838 (pos)
                    (not (Bb_not_checked_p2))

                    ; #18790: <==uncertain_firing== 87162 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #21349: <==uncertain_firing== 36488 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #22307: <==negation-removal== 74761 (pos)
                    (not (not_checked_p2))

                    ; #34200: <==negation-removal== 56693 (pos)
                    (not (Bc_not_checked_p2))

                    ; #39653: <==negation-removal== 54135 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45998: <==negation-removal== 83778 (pos)
                    (not (Bd_not_checked_p2))

                    ; #46246: <==uncertain_firing== 34610 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #53901: <==negation-removal== 76391 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61503: <==negation-removal== 83405 (pos)
                    (not (Pd_not_checked_p2))

                    ; #62671: <==negation-removal== 61274 (pos)
                    (not (Pa_not_checked_p2))

                    ; #68524: <==uncertain_firing== 68908 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #76104: <==negation-removal== 76116 (pos)
                    (not (Pc_not_checked_p2))

                    ; #77705: <==negation-removal== 68908 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #80748: <==negation-removal== 36488 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #89170: <==negation-removal== 87162 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24838: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #25035: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #32607: <==closure== 24838 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #35083: <==commonly_known== 43226 (pos)
                    (Bd_checked_p3)

                    ; #36704: <==commonly_known== 84877 (neg)
                    (Pa_checked_p3)

                    ; #42410: <==commonly_known== 84877 (neg)
                    (Pc_checked_p3)

                    ; #43226: origin
                    (checked_p3)

                    ; #45432: <==commonly_known== 84877 (neg)
                    (Pd_checked_p3)

                    ; #60791: <==closure== 25035 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #77520: <==commonly_known== 43226 (pos)
                    (Bc_checked_p3)

                    ; #84046: <==commonly_known== 43226 (pos)
                    (Ba_checked_p3)

                    ; #86155: <==commonly_known== 84877 (neg)
                    (Pb_checked_p3)

                    ; #91427: <==commonly_known== 43226 (pos)
                    (Bb_checked_p3)

                    ; #10709: <==negation-removal== 35083 (pos)
                    (not (Pd_not_checked_p3))

                    ; #13567: <==uncertain_firing== 24838 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #13793: <==uncertain_firing== 60791 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #16155: <==negation-removal== 32607 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #21875: <==uncertain_firing== 25035 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #30039: <==negation-removal== 42410 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30417: <==negation-removal== 84046 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43447: <==negation-removal== 86155 (pos)
                    (not (Bb_not_checked_p3))

                    ; #45938: <==negation-removal== 24838 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #51298: <==negation-removal== 45432 (pos)
                    (not (Bd_not_checked_p3))

                    ; #54745: <==negation-removal== 36704 (pos)
                    (not (Ba_not_checked_p3))

                    ; #58137: <==negation-removal== 77520 (pos)
                    (not (Pc_not_checked_p3))

                    ; #62222: <==uncertain_firing== 32607 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #74586: <==negation-removal== 60791 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #77351: <==negation-removal== 91427 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80121: <==negation-removal== 25035 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #84877: <==negation-removal== 43226 (pos)
                    (not (not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #13950: <==closure== 19681 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #15644: <==commonly_known== 91365 (neg)
                    (Pb_checked_p4)

                    ; #19681: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #30666: <==commonly_known== 91365 (neg)
                    (Pd_checked_p4)

                    ; #32851: <==commonly_known== 36659 (pos)
                    (Bd_checked_p4)

                    ; #32965: <==commonly_known== 91365 (neg)
                    (Pc_checked_p4)

                    ; #36659: origin
                    (checked_p4)

                    ; #40946: <==commonly_known== 36659 (pos)
                    (Ba_checked_p4)

                    ; #42869: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #55768: <==commonly_known== 36659 (pos)
                    (Bc_checked_p4)

                    ; #73054: <==commonly_known== 91365 (neg)
                    (Pa_checked_p4)

                    ; #80417: <==closure== 42869 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #90498: <==commonly_known== 36659 (pos)
                    (Bb_checked_p4)

                    ; #11399: <==negation-removal== 13950 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #14531: <==negation-removal== 19681 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #14719: <==negation-removal== 30666 (pos)
                    (not (Bd_not_checked_p4))

                    ; #16352: <==uncertain_firing== 42869 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #17011: <==negation-removal== 90498 (pos)
                    (not (Pb_not_checked_p4))

                    ; #29317: <==negation-removal== 32965 (pos)
                    (not (Bc_not_checked_p4))

                    ; #33408: <==negation-removal== 40946 (pos)
                    (not (Pa_not_checked_p4))

                    ; #40950: <==negation-removal== 32851 (pos)
                    (not (Pd_not_checked_p4))

                    ; #44467: <==negation-removal== 55768 (pos)
                    (not (Pc_not_checked_p4))

                    ; #47838: <==uncertain_firing== 19681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54464: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p4))

                    ; #70521: <==negation-removal== 42869 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #73383: <==uncertain_firing== 13950 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #76531: <==uncertain_firing== 80417 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #86734: <==negation-removal== 80417 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #91365: <==negation-removal== 36659 (pos)
                    (not (not_checked_p4))

                    ; #95720: <==negation-removal== 73054 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18624: <==commonly_known== 78260 (neg)
                    (Pd_checked_p5)

                    ; #28921: <==commonly_known== 85155 (pos)
                    (Ba_checked_p5)

                    ; #30340: <==commonly_known== 85155 (pos)
                    (Bc_checked_p5)

                    ; #43763: <==commonly_known== 78260 (neg)
                    (Pc_checked_p5)

                    ; #51722: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #53853: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #57133: <==commonly_known== 85155 (pos)
                    (Bd_checked_p5)

                    ; #62502: <==commonly_known== 78260 (neg)
                    (Pa_checked_p5)

                    ; #64226: <==closure== 53853 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #81832: <==closure== 51722 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #84255: <==commonly_known== 78260 (neg)
                    (Pb_checked_p5)

                    ; #85155: origin
                    (checked_p5)

                    ; #86682: <==commonly_known== 85155 (pos)
                    (Bb_checked_p5)

                    ; #17300: <==negation-removal== 53853 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #17620: <==negation-removal== 57133 (pos)
                    (not (Pd_not_checked_p5))

                    ; #21845: <==uncertain_firing== 64226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #24091: <==negation-removal== 43763 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25599: <==negation-removal== 64226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #25906: <==negation-removal== 84255 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26051: <==negation-removal== 86682 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28491: <==negation-removal== 62502 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36296: <==negation-removal== 18624 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37753: <==negation-removal== 28921 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54503: <==negation-removal== 51722 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #54508: <==negation-removal== 81832 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 30340 (pos)
                    (not (Pc_not_checked_p5))

                    ; #71421: <==uncertain_firing== 53853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #78260: <==negation-removal== 85155 (pos)
                    (not (not_checked_p5))

                    ; #83716: <==uncertain_firing== 81832 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #90232: <==uncertain_firing== 51722 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13432: <==commonly_known== 40985 (neg)
                    (Pd_checked_p6)

                    ; #18299: origin
                    (checked_p6)

                    ; #44440: <==commonly_known== 18299 (pos)
                    (Bc_checked_p6)

                    ; #45538: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #48653: <==closure== 45538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #52930: <==commonly_known== 18299 (pos)
                    (Bb_checked_p6)

                    ; #62880: <==commonly_known== 40985 (neg)
                    (Pb_checked_p6)

                    ; #65463: <==commonly_known== 18299 (pos)
                    (Bd_checked_p6)

                    ; #67998: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #69040: <==closure== 67998 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #69966: <==commonly_known== 18299 (pos)
                    (Ba_checked_p6)

                    ; #72206: <==commonly_known== 40985 (neg)
                    (Pa_checked_p6)

                    ; #72970: <==commonly_known== 40985 (neg)
                    (Pc_checked_p6)

                    ; #12861: <==negation-removal== 48653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #15394: <==negation-removal== 44440 (pos)
                    (not (Pc_not_checked_p6))

                    ; #16141: <==negation-removal== 69040 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #18592: <==negation-removal== 13432 (pos)
                    (not (Bd_not_checked_p6))

                    ; #30338: <==uncertain_firing== 48653 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #33169: <==uncertain_firing== 67998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40985: <==negation-removal== 18299 (pos)
                    (not (not_checked_p6))

                    ; #50440: <==negation-removal== 62880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55901: <==negation-removal== 69966 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57436: <==uncertain_firing== 69040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #68773: <==negation-removal== 72206 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69255: <==negation-removal== 45538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #70699: <==negation-removal== 72970 (pos)
                    (not (Bc_not_checked_p6))

                    ; #78377: <==uncertain_firing== 45538 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #82011: <==negation-removal== 52930 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87014: <==negation-removal== 65463 (pos)
                    (not (Pd_not_checked_p6))

                    ; #87969: <==negation-removal== 67998 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13704: <==commonly_known== 40743 (pos)
                    (Bb_checked_p7)

                    ; #18052: <==commonly_known== 40743 (pos)
                    (Bc_checked_p7)

                    ; #19538: <==closure== 74393 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #31913: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #37080: <==commonly_known== 14507 (neg)
                    (Pc_checked_p7)

                    ; #40743: origin
                    (checked_p7)

                    ; #61752: <==commonly_known== 14507 (neg)
                    (Pd_checked_p7)

                    ; #72232: <==commonly_known== 40743 (pos)
                    (Ba_checked_p7)

                    ; #74393: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #83564: <==commonly_known== 40743 (pos)
                    (Bd_checked_p7)

                    ; #86589: <==commonly_known== 14507 (neg)
                    (Pa_checked_p7)

                    ; #87882: <==commonly_known== 14507 (neg)
                    (Pb_checked_p7)

                    ; #88595: <==closure== 31913 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #14507: <==negation-removal== 40743 (pos)
                    (not (not_checked_p7))

                    ; #17770: <==uncertain_firing== 74393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #18859: <==negation-removal== 74393 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #23342: <==negation-removal== 87882 (pos)
                    (not (Bb_not_checked_p7))

                    ; #23425: <==uncertain_firing== 88595 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #24415: <==negation-removal== 83564 (pos)
                    (not (Pd_not_checked_p7))

                    ; #27407: <==negation-removal== 37080 (pos)
                    (not (Bc_not_checked_p7))

                    ; #30958: <==negation-removal== 19538 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #39293: <==negation-removal== 18052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #40763: <==negation-removal== 31913 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #48473: <==negation-removal== 61752 (pos)
                    (not (Bd_not_checked_p7))

                    ; #57114: <==uncertain_firing== 19538 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #68874: <==negation-removal== 72232 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69140: <==negation-removal== 86589 (pos)
                    (not (Ba_not_checked_p7))

                    ; #69972: <==uncertain_firing== 31913 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #71639: <==negation-removal== 88595 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #84201: <==negation-removal== 13704 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19309: <==commonly_known== 41133 (pos)
                    (Bb_checked_p8)

                    ; #22040: <==commonly_known== 88602 (neg)
                    (Pb_checked_p8)

                    ; #35809: <==commonly_known== 88602 (neg)
                    (Pc_checked_p8)

                    ; #37058: <==closure== 57874 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #40148: <==commonly_known== 88602 (neg)
                    (Pa_checked_p8)

                    ; #40579: <==commonly_known== 88602 (neg)
                    (Pd_checked_p8)

                    ; #41133: origin
                    (checked_p8)

                    ; #46105: <==commonly_known== 41133 (pos)
                    (Bc_checked_p8)

                    ; #57874: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #58692: <==closure== 67217 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #67217: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #77693: <==commonly_known== 41133 (pos)
                    (Bd_checked_p8)

                    ; #86259: <==commonly_known== 41133 (pos)
                    (Ba_checked_p8)

                    ; #12110: <==negation-removal== 35809 (pos)
                    (not (Bc_not_checked_p8))

                    ; #15160: <==negation-removal== 37058 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #16114: <==negation-removal== 67217 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #25812: <==uncertain_firing== 58692 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #31102: <==negation-removal== 22040 (pos)
                    (not (Bb_not_checked_p8))

                    ; #37689: <==uncertain_firing== 67217 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #44500: <==negation-removal== 40148 (pos)
                    (not (Ba_not_checked_p8))

                    ; #50196: <==negation-removal== 19309 (pos)
                    (not (Pb_not_checked_p8))

                    ; #52610: <==negation-removal== 57874 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #55282: <==negation-removal== 86259 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57958: <==negation-removal== 58692 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #58613: <==uncertain_firing== 37058 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #61459: <==uncertain_firing== 57874 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #68387: <==negation-removal== 46105 (pos)
                    (not (Pc_not_checked_p8))

                    ; #73353: <==negation-removal== 77693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #88602: <==negation-removal== 41133 (pos)
                    (not (not_checked_p8))

                    ; #90874: <==negation-removal== 40579 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11558: <==commonly_known== 72208 (pos)
                    (Bd_checked_p9)

                    ; #13070: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #14792: <==closure== 86322 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #43021: <==closure== 13070 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #50050: <==commonly_known== 76132 (neg)
                    (Pb_checked_p9)

                    ; #54777: <==commonly_known== 76132 (neg)
                    (Pa_checked_p9)

                    ; #69862: <==commonly_known== 72208 (pos)
                    (Ba_checked_p9)

                    ; #72208: origin
                    (checked_p9)

                    ; #86322: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #88362: <==commonly_known== 72208 (pos)
                    (Bc_checked_p9)

                    ; #88964: <==commonly_known== 76132 (neg)
                    (Pd_checked_p9)

                    ; #91238: <==commonly_known== 76132 (neg)
                    (Pc_checked_p9)

                    ; #93521: <==commonly_known== 72208 (pos)
                    (Bb_checked_p9)

                    ; #17674: <==uncertain_firing== 43021 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #22783: <==uncertain_firing== 86322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #23636: <==uncertain_firing== 13070 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #26530: <==negation-removal== 86322 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #28133: <==negation-removal== 43021 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #30007: <==negation-removal== 11558 (pos)
                    (not (Pd_not_checked_p9))

                    ; #39164: <==negation-removal== 93521 (pos)
                    (not (Pb_not_checked_p9))

                    ; #46860: <==negation-removal== 91238 (pos)
                    (not (Bc_not_checked_p9))

                    ; #49036: <==uncertain_firing== 14792 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #50311: <==negation-removal== 14792 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #66408: <==negation-removal== 50050 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68442: <==negation-removal== 69862 (pos)
                    (not (Pa_not_checked_p9))

                    ; #68731: <==negation-removal== 13070 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #76132: <==negation-removal== 72208 (pos)
                    (not (not_checked_p9))

                    ; #76573: <==negation-removal== 88964 (pos)
                    (not (Bd_not_checked_p9))

                    ; #80189: <==negation-removal== 54777 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91040: <==negation-removal== 88362 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #10337: <==closure== 85833 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #26677: <==commonly_known== 34057 (neg)
                    (Pc_checked_p10)

                    ; #27302: <==closure== 98497 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #32530: <==commonly_known== 34057 (neg)
                    (Pa_checked_p10)

                    ; #44643: <==commonly_known== 34057 (neg)
                    (Pb_checked_p10)

                    ; #64177: <==commonly_known== 91715 (pos)
                    (Bd_checked_p10)

                    ; #69018: <==commonly_known== 91715 (pos)
                    (Ba_checked_p10)

                    ; #77288: <==commonly_known== 91715 (pos)
                    (Bb_checked_p10)

                    ; #80661: <==commonly_known== 91715 (pos)
                    (Bc_checked_p10)

                    ; #81813: <==commonly_known== 34057 (neg)
                    (Pd_checked_p10)

                    ; #85833: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #91715: origin
                    (checked_p10)

                    ; #98497: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #12377: <==negation-removal== 27302 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #12595: <==uncertain_firing== 10337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #14934: <==negation-removal== 69018 (pos)
                    (not (Pa_not_checked_p10))

                    ; #21890: <==uncertain_firing== 27302 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #25790: <==negation-removal== 32530 (pos)
                    (not (Ba_not_checked_p10))

                    ; #34057: <==negation-removal== 91715 (pos)
                    (not (not_checked_p10))

                    ; #34642: <==negation-removal== 77288 (pos)
                    (not (Pb_not_checked_p10))

                    ; #36143: <==negation-removal== 10337 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #36580: <==negation-removal== 85833 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #47510: <==negation-removal== 98497 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #48357: <==negation-removal== 81813 (pos)
                    (not (Bd_not_checked_p10))

                    ; #60879: <==uncertain_firing== 98497 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #65595: <==negation-removal== 80661 (pos)
                    (not (Pc_not_checked_p10))

                    ; #74759: <==uncertain_firing== 85833 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #84400: <==negation-removal== 64177 (pos)
                    (not (Pd_not_checked_p10))

                    ; #91508: <==negation-removal== 26677 (pos)
                    (not (Bc_not_checked_p10))

                    ; #97186: <==negation-removal== 44643 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18400: <==commonly_known== 57918 (neg)
                    (Pb_checked_p11)

                    ; #20471: <==commonly_known== 44564 (pos)
                    (Ba_checked_p11)

                    ; #27723: <==closure== 84951 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #36223: <==commonly_known== 44564 (pos)
                    (Bd_checked_p11)

                    ; #38951: <==commonly_known== 57918 (neg)
                    (Pc_checked_p11)

                    ; #44564: origin
                    (checked_p11)

                    ; #55422: <==commonly_known== 57918 (neg)
                    (Pd_checked_p11)

                    ; #61671: <==commonly_known== 44564 (pos)
                    (Bc_checked_p11)

                    ; #62506: <==closure== 86179 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #65580: <==commonly_known== 44564 (pos)
                    (Bb_checked_p11)

                    ; #84951: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #86179: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #90593: <==commonly_known== 57918 (neg)
                    (Pa_checked_p11)

                    ; #19552: <==negation-removal== 27723 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #21828: <==uncertain_firing== 84951 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #29454: <==negation-removal== 18400 (pos)
                    (not (Bb_not_checked_p11))

                    ; #34401: <==uncertain_firing== 86179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #36216: <==negation-removal== 55422 (pos)
                    (not (Bd_not_checked_p11))

                    ; #47671: <==negation-removal== 90593 (pos)
                    (not (Ba_not_checked_p11))

                    ; #53939: <==negation-removal== 84951 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #57918: <==negation-removal== 44564 (pos)
                    (not (not_checked_p11))

                    ; #60316: <==negation-removal== 38951 (pos)
                    (not (Bc_not_checked_p11))

                    ; #60762: <==negation-removal== 62506 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #62714: <==negation-removal== 36223 (pos)
                    (not (Pd_not_checked_p11))

                    ; #65283: <==negation-removal== 65580 (pos)
                    (not (Pb_not_checked_p11))

                    ; #66271: <==uncertain_firing== 62506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #69522: <==uncertain_firing== 27723 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #73680: <==negation-removal== 20471 (pos)
                    (not (Pa_not_checked_p11))

                    ; #78770: <==negation-removal== 61671 (pos)
                    (not (Pc_not_checked_p11))

                    ; #85270: <==negation-removal== 86179 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11729: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #15524: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #16974: <==closure== 15524 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #26373: <==commonly_known== 58502 (pos)
                    (Ba_checked_p12)

                    ; #34332: <==commonly_known== 58502 (pos)
                    (Bc_checked_p12)

                    ; #38002: <==commonly_known== 58502 (pos)
                    (Bd_checked_p12)

                    ; #42350: <==commonly_known== 64142 (neg)
                    (Pb_checked_p12)

                    ; #47603: <==commonly_known== 64142 (neg)
                    (Pa_checked_p12)

                    ; #58502: origin
                    (checked_p12)

                    ; #58537: <==commonly_known== 64142 (neg)
                    (Pd_checked_p12)

                    ; #65466: <==commonly_known== 58502 (pos)
                    (Bb_checked_p12)

                    ; #68808: <==closure== 11729 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #76824: <==commonly_known== 64142 (neg)
                    (Pc_checked_p12)

                    ; #20259: <==negation-removal== 38002 (pos)
                    (not (Pd_not_checked_p12))

                    ; #20413: <==negation-removal== 68808 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #22406: <==negation-removal== 65466 (pos)
                    (not (Pb_not_checked_p12))

                    ; #24627: <==negation-removal== 16974 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #30841: <==negation-removal== 76824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #32522: <==negation-removal== 47603 (pos)
                    (not (Ba_not_checked_p12))

                    ; #36736: <==uncertain_firing== 68808 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #39596: <==negation-removal== 34332 (pos)
                    (not (Pc_not_checked_p12))

                    ; #47402: <==negation-removal== 15524 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #50330: <==negation-removal== 42350 (pos)
                    (not (Bb_not_checked_p12))

                    ; #51982: <==negation-removal== 58537 (pos)
                    (not (Bd_not_checked_p12))

                    ; #59914: <==negation-removal== 11729 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #63880: <==uncertain_firing== 15524 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #64142: <==negation-removal== 58502 (pos)
                    (not (not_checked_p12))

                    ; #71826: <==negation-removal== 26373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #80866: <==uncertain_firing== 11729 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87883: <==uncertain_firing== 16974 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14873: <==closure== 90093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #17869: <==commonly_known== 24669 (neg)
                    (Pb_checked_p1)

                    ; #23214: <==commonly_known== 24669 (neg)
                    (Pa_checked_p1)

                    ; #26899: origin
                    (checked_p1)

                    ; #29647: <==commonly_known== 26899 (pos)
                    (Bb_checked_p1)

                    ; #33299: <==closure== 60347 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #35357: <==commonly_known== 26899 (pos)
                    (Bc_checked_p1)

                    ; #36685: <==commonly_known== 26899 (pos)
                    (Ba_checked_p1)

                    ; #44543: <==commonly_known== 24669 (neg)
                    (Pd_checked_p1)

                    ; #60347: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #64464: <==commonly_known== 24669 (neg)
                    (Pc_checked_p1)

                    ; #70042: <==commonly_known== 26899 (pos)
                    (Bd_checked_p1)

                    ; #90093: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #11254: <==uncertain_firing== 33299 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #11491: <==negation-removal== 17869 (pos)
                    (not (Bb_not_checked_p1))

                    ; #24669: <==negation-removal== 26899 (pos)
                    (not (not_checked_p1))

                    ; #26077: <==negation-removal== 29647 (pos)
                    (not (Pb_not_checked_p1))

                    ; #27612: <==negation-removal== 70042 (pos)
                    (not (Pd_not_checked_p1))

                    ; #28429: <==negation-removal== 33299 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39357: <==negation-removal== 60347 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #42038: <==uncertain_firing== 90093 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #52799: <==uncertain_firing== 60347 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #63840: <==negation-removal== 23214 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65436: <==negation-removal== 14873 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #65471: <==negation-removal== 90093 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #71423: <==negation-removal== 44543 (pos)
                    (not (Bd_not_checked_p1))

                    ; #71880: <==uncertain_firing== 14873 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #77384: <==negation-removal== 35357 (pos)
                    (not (Pc_not_checked_p1))

                    ; #80070: <==negation-removal== 64464 (pos)
                    (not (Bc_not_checked_p1))

                    ; #91544: <==negation-removal== 36685 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19838: <==commonly_known== 22307 (neg)
                    (Pb_checked_p2)

                    ; #54135: <==commonly_known== 22307 (neg)
                    (Pa_checked_p2)

                    ; #56693: <==commonly_known== 22307 (neg)
                    (Pc_checked_p2)

                    ; #61274: <==commonly_known== 74761 (pos)
                    (Ba_checked_p2)

                    ; #74761: origin
                    (checked_p2)

                    ; #76116: <==commonly_known== 74761 (pos)
                    (Bc_checked_p2)

                    ; #76391: <==commonly_known== 74761 (pos)
                    (Bb_checked_p2)

                    ; #76627: <==closure== 78131 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #78131: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #83405: <==commonly_known== 74761 (pos)
                    (Bd_checked_p2)

                    ; #83778: <==commonly_known== 22307 (neg)
                    (Pd_checked_p2)

                    ; #89485: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #90555: <==closure== 89485 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #11175: <==uncertain_firing== 89485 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #12928: <==negation-removal== 89485 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #16248: <==negation-removal== 19838 (pos)
                    (not (Bb_not_checked_p2))

                    ; #22307: <==negation-removal== 74761 (pos)
                    (not (not_checked_p2))

                    ; #34193: <==negation-removal== 76627 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34200: <==negation-removal== 56693 (pos)
                    (not (Bc_not_checked_p2))

                    ; #35263: <==negation-removal== 90555 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #39653: <==negation-removal== 54135 (pos)
                    (not (Ba_not_checked_p2))

                    ; #40114: <==uncertain_firing== 90555 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #45998: <==negation-removal== 83778 (pos)
                    (not (Bd_not_checked_p2))

                    ; #53901: <==negation-removal== 76391 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58487: <==uncertain_firing== 78131 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #61503: <==negation-removal== 83405 (pos)
                    (not (Pd_not_checked_p2))

                    ; #62671: <==negation-removal== 61274 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74872: <==uncertain_firing== 76627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #76104: <==negation-removal== 76116 (pos)
                    (not (Pc_not_checked_p2))

                    ; #80829: <==negation-removal== 78131 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #35083: <==commonly_known== 43226 (pos)
                    (Bd_checked_p3)

                    ; #36704: <==commonly_known== 84877 (neg)
                    (Pa_checked_p3)

                    ; #42410: <==commonly_known== 84877 (neg)
                    (Pc_checked_p3)

                    ; #43226: origin
                    (checked_p3)

                    ; #45432: <==commonly_known== 84877 (neg)
                    (Pd_checked_p3)

                    ; #45649: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #50539: <==closure== 59216 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #59216: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #77520: <==commonly_known== 43226 (pos)
                    (Bc_checked_p3)

                    ; #81035: <==closure== 45649 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #84046: <==commonly_known== 43226 (pos)
                    (Ba_checked_p3)

                    ; #86155: <==commonly_known== 84877 (neg)
                    (Pb_checked_p3)

                    ; #91427: <==commonly_known== 43226 (pos)
                    (Bb_checked_p3)

                    ; #10709: <==negation-removal== 35083 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30039: <==negation-removal== 42410 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30417: <==negation-removal== 84046 (pos)
                    (not (Pa_not_checked_p3))

                    ; #33009: <==uncertain_firing== 45649 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #34054: <==uncertain_firing== 59216 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #38728: <==uncertain_firing== 50539 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #43447: <==negation-removal== 86155 (pos)
                    (not (Bb_not_checked_p3))

                    ; #47002: <==negation-removal== 45649 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #48486: <==negation-removal== 50539 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #51298: <==negation-removal== 45432 (pos)
                    (not (Bd_not_checked_p3))

                    ; #54745: <==negation-removal== 36704 (pos)
                    (not (Ba_not_checked_p3))

                    ; #58137: <==negation-removal== 77520 (pos)
                    (not (Pc_not_checked_p3))

                    ; #69604: <==negation-removal== 59216 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #77351: <==negation-removal== 91427 (pos)
                    (not (Pb_not_checked_p3))

                    ; #78639: <==uncertain_firing== 81035 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #83420: <==negation-removal== 81035 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #84877: <==negation-removal== 43226 (pos)
                    (not (not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10759: <==closure== 82127 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #15644: <==commonly_known== 91365 (neg)
                    (Pb_checked_p4)

                    ; #23606: <==closure== 62817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #30666: <==commonly_known== 91365 (neg)
                    (Pd_checked_p4)

                    ; #32851: <==commonly_known== 36659 (pos)
                    (Bd_checked_p4)

                    ; #32965: <==commonly_known== 91365 (neg)
                    (Pc_checked_p4)

                    ; #36659: origin
                    (checked_p4)

                    ; #40946: <==commonly_known== 36659 (pos)
                    (Ba_checked_p4)

                    ; #55768: <==commonly_known== 36659 (pos)
                    (Bc_checked_p4)

                    ; #62817: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #73054: <==commonly_known== 91365 (neg)
                    (Pa_checked_p4)

                    ; #82127: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #90498: <==commonly_known== 36659 (pos)
                    (Bb_checked_p4)

                    ; #14719: <==negation-removal== 30666 (pos)
                    (not (Bd_not_checked_p4))

                    ; #16295: <==negation-removal== 82127 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #17011: <==negation-removal== 90498 (pos)
                    (not (Pb_not_checked_p4))

                    ; #20697: <==uncertain_firing== 10759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #23548: <==uncertain_firing== 23606 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29317: <==negation-removal== 32965 (pos)
                    (not (Bc_not_checked_p4))

                    ; #33408: <==negation-removal== 40946 (pos)
                    (not (Pa_not_checked_p4))

                    ; #40950: <==negation-removal== 32851 (pos)
                    (not (Pd_not_checked_p4))

                    ; #44467: <==negation-removal== 55768 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50112: <==negation-removal== 23606 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #54464: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p4))

                    ; #70258: <==negation-removal== 62817 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #78839: <==negation-removal== 10759 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #81939: <==uncertain_firing== 62817 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #85784: <==uncertain_firing== 82127 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #91365: <==negation-removal== 36659 (pos)
                    (not (not_checked_p4))

                    ; #95720: <==negation-removal== 73054 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13147: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #18623: <==closure== 13147 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #18624: <==commonly_known== 78260 (neg)
                    (Pd_checked_p5)

                    ; #28921: <==commonly_known== 85155 (pos)
                    (Ba_checked_p5)

                    ; #30340: <==commonly_known== 85155 (pos)
                    (Bc_checked_p5)

                    ; #43313: <==closure== 61119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #43763: <==commonly_known== 78260 (neg)
                    (Pc_checked_p5)

                    ; #57133: <==commonly_known== 85155 (pos)
                    (Bd_checked_p5)

                    ; #61119: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #62502: <==commonly_known== 78260 (neg)
                    (Pa_checked_p5)

                    ; #84255: <==commonly_known== 78260 (neg)
                    (Pb_checked_p5)

                    ; #85155: origin
                    (checked_p5)

                    ; #86682: <==commonly_known== 85155 (pos)
                    (Bb_checked_p5)

                    ; #12816: <==negation-removal== 43313 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #17620: <==negation-removal== 57133 (pos)
                    (not (Pd_not_checked_p5))

                    ; #20117: <==negation-removal== 61119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #20320: <==uncertain_firing== 61119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24091: <==negation-removal== 43763 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25906: <==negation-removal== 84255 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26051: <==negation-removal== 86682 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28491: <==negation-removal== 62502 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36296: <==negation-removal== 18624 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37753: <==negation-removal== 28921 (pos)
                    (not (Pa_not_checked_p5))

                    ; #39045: <==negation-removal== 18623 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #39982: <==uncertain_firing== 18623 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 30340 (pos)
                    (not (Pc_not_checked_p5))

                    ; #68798: <==uncertain_firing== 43313 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #71542: <==negation-removal== 13147 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #78260: <==negation-removal== 85155 (pos)
                    (not (not_checked_p5))

                    ; #78749: <==uncertain_firing== 13147 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13432: <==commonly_known== 40985 (neg)
                    (Pd_checked_p6)

                    ; #18299: origin
                    (checked_p6)

                    ; #29410: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #35236: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #44440: <==commonly_known== 18299 (pos)
                    (Bc_checked_p6)

                    ; #52930: <==commonly_known== 18299 (pos)
                    (Bb_checked_p6)

                    ; #62880: <==commonly_known== 40985 (neg)
                    (Pb_checked_p6)

                    ; #65214: <==closure== 29410 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #65463: <==commonly_known== 18299 (pos)
                    (Bd_checked_p6)

                    ; #69966: <==commonly_known== 18299 (pos)
                    (Ba_checked_p6)

                    ; #72206: <==commonly_known== 40985 (neg)
                    (Pa_checked_p6)

                    ; #72970: <==commonly_known== 40985 (neg)
                    (Pc_checked_p6)

                    ; #77561: <==closure== 35236 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #15394: <==negation-removal== 44440 (pos)
                    (not (Pc_not_checked_p6))

                    ; #16872: <==uncertain_firing== 35236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #18042: <==negation-removal== 29410 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #18592: <==negation-removal== 13432 (pos)
                    (not (Bd_not_checked_p6))

                    ; #40962: <==negation-removal== 77561 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #40985: <==negation-removal== 18299 (pos)
                    (not (not_checked_p6))

                    ; #50440: <==negation-removal== 62880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55901: <==negation-removal== 69966 (pos)
                    (not (Pa_not_checked_p6))

                    ; #68439: <==uncertain_firing== 77561 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #68773: <==negation-removal== 72206 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70699: <==negation-removal== 72970 (pos)
                    (not (Bc_not_checked_p6))

                    ; #71621: <==negation-removal== 65214 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #75835: <==uncertain_firing== 65214 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #77336: <==negation-removal== 35236 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #82011: <==negation-removal== 52930 (pos)
                    (not (Pb_not_checked_p6))

                    ; #86021: <==uncertain_firing== 29410 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #87014: <==negation-removal== 65463 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13704: <==commonly_known== 40743 (pos)
                    (Bb_checked_p7)

                    ; #18052: <==commonly_known== 40743 (pos)
                    (Bc_checked_p7)

                    ; #24650: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #37080: <==commonly_known== 14507 (neg)
                    (Pc_checked_p7)

                    ; #40743: origin
                    (checked_p7)

                    ; #60724: <==closure== 91693 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #61752: <==commonly_known== 14507 (neg)
                    (Pd_checked_p7)

                    ; #67048: <==closure== 24650 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #72232: <==commonly_known== 40743 (pos)
                    (Ba_checked_p7)

                    ; #83564: <==commonly_known== 40743 (pos)
                    (Bd_checked_p7)

                    ; #86589: <==commonly_known== 14507 (neg)
                    (Pa_checked_p7)

                    ; #87882: <==commonly_known== 14507 (neg)
                    (Pb_checked_p7)

                    ; #91693: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #14507: <==negation-removal== 40743 (pos)
                    (not (not_checked_p7))

                    ; #20330: <==negation-removal== 60724 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #23342: <==negation-removal== 87882 (pos)
                    (not (Bb_not_checked_p7))

                    ; #24415: <==negation-removal== 83564 (pos)
                    (not (Pd_not_checked_p7))

                    ; #27407: <==negation-removal== 37080 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31734: <==uncertain_firing== 60724 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #39293: <==negation-removal== 18052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48473: <==negation-removal== 61752 (pos)
                    (not (Bd_not_checked_p7))

                    ; #58101: <==uncertain_firing== 91693 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61885: <==uncertain_firing== 24650 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #61955: <==negation-removal== 67048 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #65054: <==negation-removal== 24650 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #68874: <==negation-removal== 72232 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69140: <==negation-removal== 86589 (pos)
                    (not (Ba_not_checked_p7))

                    ; #70404: <==negation-removal== 91693 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #70913: <==uncertain_firing== 67048 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #84201: <==negation-removal== 13704 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19309: <==commonly_known== 41133 (pos)
                    (Bb_checked_p8)

                    ; #22040: <==commonly_known== 88602 (neg)
                    (Pb_checked_p8)

                    ; #34164: <==closure== 43043 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #35809: <==commonly_known== 88602 (neg)
                    (Pc_checked_p8)

                    ; #40148: <==commonly_known== 88602 (neg)
                    (Pa_checked_p8)

                    ; #40579: <==commonly_known== 88602 (neg)
                    (Pd_checked_p8)

                    ; #41133: origin
                    (checked_p8)

                    ; #43043: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #46105: <==commonly_known== 41133 (pos)
                    (Bc_checked_p8)

                    ; #47791: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #77693: <==commonly_known== 41133 (pos)
                    (Bd_checked_p8)

                    ; #83808: <==closure== 47791 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #86259: <==commonly_known== 41133 (pos)
                    (Ba_checked_p8)

                    ; #12110: <==negation-removal== 35809 (pos)
                    (not (Bc_not_checked_p8))

                    ; #31102: <==negation-removal== 22040 (pos)
                    (not (Bb_not_checked_p8))

                    ; #41223: <==negation-removal== 43043 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #43484: <==uncertain_firing== 47791 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #43946: <==negation-removal== 34164 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #44500: <==negation-removal== 40148 (pos)
                    (not (Ba_not_checked_p8))

                    ; #46131: <==negation-removal== 83808 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #47591: <==uncertain_firing== 43043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #49776: <==negation-removal== 47791 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #50196: <==negation-removal== 19309 (pos)
                    (not (Pb_not_checked_p8))

                    ; #55282: <==negation-removal== 86259 (pos)
                    (not (Pa_not_checked_p8))

                    ; #63500: <==uncertain_firing== 83808 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #68387: <==negation-removal== 46105 (pos)
                    (not (Pc_not_checked_p8))

                    ; #73353: <==negation-removal== 77693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #79255: <==uncertain_firing== 34164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #88602: <==negation-removal== 41133 (pos)
                    (not (not_checked_p8))

                    ; #90874: <==negation-removal== 40579 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10931: <==closure== 91486 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #11558: <==commonly_known== 72208 (pos)
                    (Bd_checked_p9)

                    ; #20102: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #28224: <==closure== 20102 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #50050: <==commonly_known== 76132 (neg)
                    (Pb_checked_p9)

                    ; #54777: <==commonly_known== 76132 (neg)
                    (Pa_checked_p9)

                    ; #69862: <==commonly_known== 72208 (pos)
                    (Ba_checked_p9)

                    ; #72208: origin
                    (checked_p9)

                    ; #88362: <==commonly_known== 72208 (pos)
                    (Bc_checked_p9)

                    ; #88964: <==commonly_known== 76132 (neg)
                    (Pd_checked_p9)

                    ; #91238: <==commonly_known== 76132 (neg)
                    (Pc_checked_p9)

                    ; #91486: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #93521: <==commonly_known== 72208 (pos)
                    (Bb_checked_p9)

                    ; #30007: <==negation-removal== 11558 (pos)
                    (not (Pd_not_checked_p9))

                    ; #39164: <==negation-removal== 93521 (pos)
                    (not (Pb_not_checked_p9))

                    ; #42405: <==uncertain_firing== 28224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #46860: <==negation-removal== 91238 (pos)
                    (not (Bc_not_checked_p9))

                    ; #47047: <==uncertain_firing== 10931 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #57264: <==negation-removal== 91486 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #58711: <==negation-removal== 28224 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #66408: <==negation-removal== 50050 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66955: <==negation-removal== 20102 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68442: <==negation-removal== 69862 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72193: <==uncertain_firing== 91486 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #76132: <==negation-removal== 72208 (pos)
                    (not (not_checked_p9))

                    ; #76573: <==negation-removal== 88964 (pos)
                    (not (Bd_not_checked_p9))

                    ; #79155: <==negation-removal== 10931 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #80189: <==negation-removal== 54777 (pos)
                    (not (Ba_not_checked_p9))

                    ; #83812: <==uncertain_firing== 20102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #91040: <==negation-removal== 88362 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #26677: <==commonly_known== 34057 (neg)
                    (Pc_checked_p10)

                    ; #32530: <==commonly_known== 34057 (neg)
                    (Pa_checked_p10)

                    ; #44643: <==commonly_known== 34057 (neg)
                    (Pb_checked_p10)

                    ; #55766: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #58324: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #64177: <==commonly_known== 91715 (pos)
                    (Bd_checked_p10)

                    ; #69018: <==commonly_known== 91715 (pos)
                    (Ba_checked_p10)

                    ; #71981: <==closure== 58324 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #77288: <==commonly_known== 91715 (pos)
                    (Bb_checked_p10)

                    ; #79009: <==closure== 55766 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #80661: <==commonly_known== 91715 (pos)
                    (Bc_checked_p10)

                    ; #81813: <==commonly_known== 34057 (neg)
                    (Pd_checked_p10)

                    ; #91715: origin
                    (checked_p10)

                    ; #14934: <==negation-removal== 69018 (pos)
                    (not (Pa_not_checked_p10))

                    ; #19159: <==negation-removal== 71981 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #25790: <==negation-removal== 32530 (pos)
                    (not (Ba_not_checked_p10))

                    ; #34057: <==negation-removal== 91715 (pos)
                    (not (not_checked_p10))

                    ; #34642: <==negation-removal== 77288 (pos)
                    (not (Pb_not_checked_p10))

                    ; #36063: <==uncertain_firing== 71981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #37684: <==uncertain_firing== 79009 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #40588: <==negation-removal== 58324 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #48357: <==negation-removal== 81813 (pos)
                    (not (Bd_not_checked_p10))

                    ; #61721: <==uncertain_firing== 58324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #65595: <==negation-removal== 80661 (pos)
                    (not (Pc_not_checked_p10))

                    ; #71856: <==negation-removal== 55766 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #75549: <==uncertain_firing== 55766 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #84400: <==negation-removal== 64177 (pos)
                    (not (Pd_not_checked_p10))

                    ; #89846: <==negation-removal== 79009 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #91508: <==negation-removal== 26677 (pos)
                    (not (Bc_not_checked_p10))

                    ; #97186: <==negation-removal== 44643 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18400: <==commonly_known== 57918 (neg)
                    (Pb_checked_p11)

                    ; #20057: <==closure== 31311 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #20471: <==commonly_known== 44564 (pos)
                    (Ba_checked_p11)

                    ; #25642: <==closure== 90595 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #31311: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #36223: <==commonly_known== 44564 (pos)
                    (Bd_checked_p11)

                    ; #38951: <==commonly_known== 57918 (neg)
                    (Pc_checked_p11)

                    ; #44564: origin
                    (checked_p11)

                    ; #55422: <==commonly_known== 57918 (neg)
                    (Pd_checked_p11)

                    ; #61671: <==commonly_known== 44564 (pos)
                    (Bc_checked_p11)

                    ; #65580: <==commonly_known== 44564 (pos)
                    (Bb_checked_p11)

                    ; #90593: <==commonly_known== 57918 (neg)
                    (Pa_checked_p11)

                    ; #90595: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #13298: <==uncertain_firing== 31311 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #17789: <==negation-removal== 25642 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #23774: <==negation-removal== 20057 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #29454: <==negation-removal== 18400 (pos)
                    (not (Bb_not_checked_p11))

                    ; #36005: <==negation-removal== 90595 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #36216: <==negation-removal== 55422 (pos)
                    (not (Bd_not_checked_p11))

                    ; #38960: <==uncertain_firing== 20057 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #47671: <==negation-removal== 90593 (pos)
                    (not (Ba_not_checked_p11))

                    ; #57918: <==negation-removal== 44564 (pos)
                    (not (not_checked_p11))

                    ; #60316: <==negation-removal== 38951 (pos)
                    (not (Bc_not_checked_p11))

                    ; #62714: <==negation-removal== 36223 (pos)
                    (not (Pd_not_checked_p11))

                    ; #65283: <==negation-removal== 65580 (pos)
                    (not (Pb_not_checked_p11))

                    ; #70313: <==uncertain_firing== 25642 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #70483: <==negation-removal== 31311 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #71668: <==uncertain_firing== 90595 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #73680: <==negation-removal== 20471 (pos)
                    (not (Pa_not_checked_p11))

                    ; #78770: <==negation-removal== 61671 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #26373: <==commonly_known== 58502 (pos)
                    (Ba_checked_p12)

                    ; #31119: <==closure== 51250 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #34332: <==commonly_known== 58502 (pos)
                    (Bc_checked_p12)

                    ; #38002: <==commonly_known== 58502 (pos)
                    (Bd_checked_p12)

                    ; #42350: <==commonly_known== 64142 (neg)
                    (Pb_checked_p12)

                    ; #47603: <==commonly_known== 64142 (neg)
                    (Pa_checked_p12)

                    ; #51250: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #58502: origin
                    (checked_p12)

                    ; #58537: <==commonly_known== 64142 (neg)
                    (Pd_checked_p12)

                    ; #65466: <==commonly_known== 58502 (pos)
                    (Bb_checked_p12)

                    ; #73308: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #76536: <==closure== 73308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #76824: <==commonly_known== 64142 (neg)
                    (Pc_checked_p12)

                    ; #15197: <==uncertain_firing== 76536 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #18888: <==uncertain_firing== 31119 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #20259: <==negation-removal== 38002 (pos)
                    (not (Pd_not_checked_p12))

                    ; #22406: <==negation-removal== 65466 (pos)
                    (not (Pb_not_checked_p12))

                    ; #24364: <==uncertain_firing== 73308 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #30841: <==negation-removal== 76824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #32522: <==negation-removal== 47603 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39596: <==negation-removal== 34332 (pos)
                    (not (Pc_not_checked_p12))

                    ; #50330: <==negation-removal== 42350 (pos)
                    (not (Bb_not_checked_p12))

                    ; #51982: <==negation-removal== 58537 (pos)
                    (not (Bd_not_checked_p12))

                    ; #57106: <==negation-removal== 73308 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #64142: <==negation-removal== 58502 (pos)
                    (not (not_checked_p12))

                    ; #64759: <==negation-removal== 31119 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #71826: <==negation-removal== 26373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #74515: <==uncertain_firing== 51250 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #85609: <==negation-removal== 51250 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #92122: <==negation-removal== 76536 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17869: <==commonly_known== 24669 (neg)
                    (Pb_checked_p1)

                    ; #23214: <==commonly_known== 24669 (neg)
                    (Pa_checked_p1)

                    ; #26899: origin
                    (checked_p1)

                    ; #27699: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #29647: <==commonly_known== 26899 (pos)
                    (Bb_checked_p1)

                    ; #35357: <==commonly_known== 26899 (pos)
                    (Bc_checked_p1)

                    ; #36685: <==commonly_known== 26899 (pos)
                    (Ba_checked_p1)

                    ; #44543: <==commonly_known== 24669 (neg)
                    (Pd_checked_p1)

                    ; #64464: <==commonly_known== 24669 (neg)
                    (Pc_checked_p1)

                    ; #70042: <==commonly_known== 26899 (pos)
                    (Bd_checked_p1)

                    ; #73481: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #77839: <==closure== 27699 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #91384: <==closure== 73481 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #11491: <==negation-removal== 17869 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14427: <==negation-removal== 91384 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #16881: <==uncertain_firing== 27699 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #17883: <==uncertain_firing== 91384 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #18783: <==negation-removal== 77839 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #24669: <==negation-removal== 26899 (pos)
                    (not (not_checked_p1))

                    ; #26077: <==negation-removal== 29647 (pos)
                    (not (Pb_not_checked_p1))

                    ; #27612: <==negation-removal== 70042 (pos)
                    (not (Pd_not_checked_p1))

                    ; #28987: <==negation-removal== 73481 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #52090: <==negation-removal== 27699 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #55235: <==uncertain_firing== 77839 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #63840: <==negation-removal== 23214 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71423: <==negation-removal== 44543 (pos)
                    (not (Bd_not_checked_p1))

                    ; #76562: <==uncertain_firing== 73481 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #77384: <==negation-removal== 35357 (pos)
                    (not (Pc_not_checked_p1))

                    ; #80070: <==negation-removal== 64464 (pos)
                    (not (Bc_not_checked_p1))

                    ; #91544: <==negation-removal== 36685 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17041: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #19838: <==commonly_known== 22307 (neg)
                    (Pb_checked_p2)

                    ; #53560: <==closure== 17041 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #54135: <==commonly_known== 22307 (neg)
                    (Pa_checked_p2)

                    ; #56693: <==commonly_known== 22307 (neg)
                    (Pc_checked_p2)

                    ; #61274: <==commonly_known== 74761 (pos)
                    (Ba_checked_p2)

                    ; #74761: origin
                    (checked_p2)

                    ; #76116: <==commonly_known== 74761 (pos)
                    (Bc_checked_p2)

                    ; #76391: <==commonly_known== 74761 (pos)
                    (Bb_checked_p2)

                    ; #83405: <==commonly_known== 74761 (pos)
                    (Bd_checked_p2)

                    ; #83778: <==commonly_known== 22307 (neg)
                    (Pd_checked_p2)

                    ; #85713: <==closure== 92009 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #92009: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #12626: <==negation-removal== 92009 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #16248: <==negation-removal== 19838 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20198: <==uncertain_firing== 53560 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #22307: <==negation-removal== 74761 (pos)
                    (not (not_checked_p2))

                    ; #22782: <==uncertain_firing== 17041 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #34200: <==negation-removal== 56693 (pos)
                    (not (Bc_not_checked_p2))

                    ; #39653: <==negation-removal== 54135 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45998: <==negation-removal== 83778 (pos)
                    (not (Bd_not_checked_p2))

                    ; #53050: <==negation-removal== 85713 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #53901: <==negation-removal== 76391 (pos)
                    (not (Pb_not_checked_p2))

                    ; #59600: <==negation-removal== 53560 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #61503: <==negation-removal== 83405 (pos)
                    (not (Pd_not_checked_p2))

                    ; #62671: <==negation-removal== 61274 (pos)
                    (not (Pa_not_checked_p2))

                    ; #65338: <==uncertain_firing== 85713 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #72742: <==negation-removal== 17041 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #75789: <==uncertain_firing== 92009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #76104: <==negation-removal== 76116 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12700: <==closure== 75910 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #35083: <==commonly_known== 43226 (pos)
                    (Bd_checked_p3)

                    ; #36704: <==commonly_known== 84877 (neg)
                    (Pa_checked_p3)

                    ; #42410: <==commonly_known== 84877 (neg)
                    (Pc_checked_p3)

                    ; #43226: origin
                    (checked_p3)

                    ; #45432: <==commonly_known== 84877 (neg)
                    (Pd_checked_p3)

                    ; #69482: <==closure== 92042 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #75910: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #77520: <==commonly_known== 43226 (pos)
                    (Bc_checked_p3)

                    ; #84046: <==commonly_known== 43226 (pos)
                    (Ba_checked_p3)

                    ; #86155: <==commonly_known== 84877 (neg)
                    (Pb_checked_p3)

                    ; #91427: <==commonly_known== 43226 (pos)
                    (Bb_checked_p3)

                    ; #92042: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #10709: <==negation-removal== 35083 (pos)
                    (not (Pd_not_checked_p3))

                    ; #18925: <==negation-removal== 69482 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #27048: <==negation-removal== 12700 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30039: <==negation-removal== 42410 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30417: <==negation-removal== 84046 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43447: <==negation-removal== 86155 (pos)
                    (not (Bb_not_checked_p3))

                    ; #44748: <==uncertain_firing== 69482 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #48982: <==negation-removal== 75910 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #51298: <==negation-removal== 45432 (pos)
                    (not (Bd_not_checked_p3))

                    ; #51503: <==uncertain_firing== 12700 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #54745: <==negation-removal== 36704 (pos)
                    (not (Ba_not_checked_p3))

                    ; #58137: <==negation-removal== 77520 (pos)
                    (not (Pc_not_checked_p3))

                    ; #75807: <==negation-removal== 92042 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #77351: <==negation-removal== 91427 (pos)
                    (not (Pb_not_checked_p3))

                    ; #80317: <==uncertain_firing== 75910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #84877: <==negation-removal== 43226 (pos)
                    (not (not_checked_p3))

                    ; #85062: <==uncertain_firing== 92042 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14478: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #15644: <==commonly_known== 91365 (neg)
                    (Pb_checked_p4)

                    ; #30666: <==commonly_known== 91365 (neg)
                    (Pd_checked_p4)

                    ; #32851: <==commonly_known== 36659 (pos)
                    (Bd_checked_p4)

                    ; #32965: <==commonly_known== 91365 (neg)
                    (Pc_checked_p4)

                    ; #36659: origin
                    (checked_p4)

                    ; #40132: <==closure== 14478 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #40946: <==commonly_known== 36659 (pos)
                    (Ba_checked_p4)

                    ; #41904: <==closure== 45656 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #45656: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #55768: <==commonly_known== 36659 (pos)
                    (Bc_checked_p4)

                    ; #73054: <==commonly_known== 91365 (neg)
                    (Pa_checked_p4)

                    ; #90498: <==commonly_known== 36659 (pos)
                    (Bb_checked_p4)

                    ; #11197: <==uncertain_firing== 41904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #14719: <==negation-removal== 30666 (pos)
                    (not (Bd_not_checked_p4))

                    ; #17011: <==negation-removal== 90498 (pos)
                    (not (Pb_not_checked_p4))

                    ; #29317: <==negation-removal== 32965 (pos)
                    (not (Bc_not_checked_p4))

                    ; #30793: <==negation-removal== 41904 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33408: <==negation-removal== 40946 (pos)
                    (not (Pa_not_checked_p4))

                    ; #39139: <==negation-removal== 45656 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #40950: <==negation-removal== 32851 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42274: <==uncertain_firing== 14478 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #44467: <==negation-removal== 55768 (pos)
                    (not (Pc_not_checked_p4))

                    ; #54464: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p4))

                    ; #58053: <==uncertain_firing== 40132 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #72488: <==negation-removal== 14478 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #73767: <==negation-removal== 40132 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #91365: <==negation-removal== 36659 (pos)
                    (not (not_checked_p4))

                    ; #92711: <==uncertain_firing== 45656 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #95720: <==negation-removal== 73054 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18624: <==commonly_known== 78260 (neg)
                    (Pd_checked_p5)

                    ; #21282: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #21448: <==closure== 75557 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #28921: <==commonly_known== 85155 (pos)
                    (Ba_checked_p5)

                    ; #30340: <==commonly_known== 85155 (pos)
                    (Bc_checked_p5)

                    ; #43763: <==commonly_known== 78260 (neg)
                    (Pc_checked_p5)

                    ; #57133: <==commonly_known== 85155 (pos)
                    (Bd_checked_p5)

                    ; #62502: <==commonly_known== 78260 (neg)
                    (Pa_checked_p5)

                    ; #65968: <==closure== 21282 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #75557: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #84255: <==commonly_known== 78260 (neg)
                    (Pb_checked_p5)

                    ; #85155: origin
                    (checked_p5)

                    ; #86682: <==commonly_known== 85155 (pos)
                    (Bb_checked_p5)

                    ; #14007: <==negation-removal== 21448 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #15613: <==uncertain_firing== 21282 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #17620: <==negation-removal== 57133 (pos)
                    (not (Pd_not_checked_p5))

                    ; #24091: <==negation-removal== 43763 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25906: <==negation-removal== 84255 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26051: <==negation-removal== 86682 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28491: <==negation-removal== 62502 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36296: <==negation-removal== 18624 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37753: <==negation-removal== 28921 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48648: <==uncertain_firing== 75557 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #59175: <==negation-removal== 65968 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 30340 (pos)
                    (not (Pc_not_checked_p5))

                    ; #65493: <==uncertain_firing== 65968 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #78260: <==negation-removal== 85155 (pos)
                    (not (not_checked_p5))

                    ; #86666: <==negation-removal== 21282 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #90256: <==uncertain_firing== 21448 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #91443: <==negation-removal== 75557 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10748: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #13085: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #13432: <==commonly_known== 40985 (neg)
                    (Pd_checked_p6)

                    ; #18299: origin
                    (checked_p6)

                    ; #39463: <==closure== 10748 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #44440: <==commonly_known== 18299 (pos)
                    (Bc_checked_p6)

                    ; #48450: <==closure== 13085 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #52930: <==commonly_known== 18299 (pos)
                    (Bb_checked_p6)

                    ; #62880: <==commonly_known== 40985 (neg)
                    (Pb_checked_p6)

                    ; #65463: <==commonly_known== 18299 (pos)
                    (Bd_checked_p6)

                    ; #69966: <==commonly_known== 18299 (pos)
                    (Ba_checked_p6)

                    ; #72206: <==commonly_known== 40985 (neg)
                    (Pa_checked_p6)

                    ; #72970: <==commonly_known== 40985 (neg)
                    (Pc_checked_p6)

                    ; #15394: <==negation-removal== 44440 (pos)
                    (not (Pc_not_checked_p6))

                    ; #18592: <==negation-removal== 13432 (pos)
                    (not (Bd_not_checked_p6))

                    ; #40985: <==negation-removal== 18299 (pos)
                    (not (not_checked_p6))

                    ; #50440: <==negation-removal== 62880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #51924: <==negation-removal== 39463 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #52401: <==uncertain_firing== 13085 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #55901: <==negation-removal== 69966 (pos)
                    (not (Pa_not_checked_p6))

                    ; #57188: <==negation-removal== 48450 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #64756: <==negation-removal== 10748 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #65205: <==uncertain_firing== 39463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #67865: <==uncertain_firing== 48450 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #68773: <==negation-removal== 72206 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70699: <==negation-removal== 72970 (pos)
                    (not (Bc_not_checked_p6))

                    ; #73415: <==negation-removal== 13085 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #82011: <==negation-removal== 52930 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87014: <==negation-removal== 65463 (pos)
                    (not (Pd_not_checked_p6))

                    ; #91961: <==uncertain_firing== 10748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13704: <==commonly_known== 40743 (pos)
                    (Bb_checked_p7)

                    ; #17003: <==closure== 64178 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #18052: <==commonly_known== 40743 (pos)
                    (Bc_checked_p7)

                    ; #37080: <==commonly_known== 14507 (neg)
                    (Pc_checked_p7)

                    ; #40743: origin
                    (checked_p7)

                    ; #56958: <==closure== 76688 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #61752: <==commonly_known== 14507 (neg)
                    (Pd_checked_p7)

                    ; #64178: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #72232: <==commonly_known== 40743 (pos)
                    (Ba_checked_p7)

                    ; #76688: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #83564: <==commonly_known== 40743 (pos)
                    (Bd_checked_p7)

                    ; #86589: <==commonly_known== 14507 (neg)
                    (Pa_checked_p7)

                    ; #87882: <==commonly_known== 14507 (neg)
                    (Pb_checked_p7)

                    ; #11428: <==negation-removal== 17003 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #14507: <==negation-removal== 40743 (pos)
                    (not (not_checked_p7))

                    ; #18491: <==negation-removal== 56958 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23342: <==negation-removal== 87882 (pos)
                    (not (Bb_not_checked_p7))

                    ; #24415: <==negation-removal== 83564 (pos)
                    (not (Pd_not_checked_p7))

                    ; #27378: <==negation-removal== 64178 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #27407: <==negation-removal== 37080 (pos)
                    (not (Bc_not_checked_p7))

                    ; #31604: <==uncertain_firing== 56958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #39293: <==negation-removal== 18052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48473: <==negation-removal== 61752 (pos)
                    (not (Bd_not_checked_p7))

                    ; #56947: <==uncertain_firing== 76688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #59900: <==uncertain_firing== 64178 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #68874: <==negation-removal== 72232 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69140: <==negation-removal== 86589 (pos)
                    (not (Ba_not_checked_p7))

                    ; #77837: <==negation-removal== 76688 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #84201: <==negation-removal== 13704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #89813: <==uncertain_firing== 17003 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10037: <==closure== 80834 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #19309: <==commonly_known== 41133 (pos)
                    (Bb_checked_p8)

                    ; #19754: <==closure== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #22040: <==commonly_known== 88602 (neg)
                    (Pb_checked_p8)

                    ; #35809: <==commonly_known== 88602 (neg)
                    (Pc_checked_p8)

                    ; #40148: <==commonly_known== 88602 (neg)
                    (Pa_checked_p8)

                    ; #40579: <==commonly_known== 88602 (neg)
                    (Pd_checked_p8)

                    ; #41120: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #41133: origin
                    (checked_p8)

                    ; #46105: <==commonly_known== 41133 (pos)
                    (Bc_checked_p8)

                    ; #77693: <==commonly_known== 41133 (pos)
                    (Bd_checked_p8)

                    ; #80834: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #86259: <==commonly_known== 41133 (pos)
                    (Ba_checked_p8)

                    ; #12110: <==negation-removal== 35809 (pos)
                    (not (Bc_not_checked_p8))

                    ; #18111: <==negation-removal== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #31102: <==negation-removal== 22040 (pos)
                    (not (Bb_not_checked_p8))

                    ; #32510: <==negation-removal== 19754 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #35717: <==uncertain_firing== 19754 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #44500: <==negation-removal== 40148 (pos)
                    (not (Ba_not_checked_p8))

                    ; #50196: <==negation-removal== 19309 (pos)
                    (not (Pb_not_checked_p8))

                    ; #55282: <==negation-removal== 86259 (pos)
                    (not (Pa_not_checked_p8))

                    ; #55791: <==uncertain_firing== 80834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #58021: <==negation-removal== 10037 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #58111: <==uncertain_firing== 10037 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #68387: <==negation-removal== 46105 (pos)
                    (not (Pc_not_checked_p8))

                    ; #73053: <==uncertain_firing== 41120 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #73353: <==negation-removal== 77693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #84397: <==negation-removal== 80834 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #88602: <==negation-removal== 41133 (pos)
                    (not (not_checked_p8))

                    ; #90874: <==negation-removal== 40579 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11558: <==commonly_known== 72208 (pos)
                    (Bd_checked_p9)

                    ; #21402: <==closure== 58763 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #50050: <==commonly_known== 76132 (neg)
                    (Pb_checked_p9)

                    ; #52111: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #54777: <==commonly_known== 76132 (neg)
                    (Pa_checked_p9)

                    ; #58763: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #62998: <==closure== 52111 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #69862: <==commonly_known== 72208 (pos)
                    (Ba_checked_p9)

                    ; #72208: origin
                    (checked_p9)

                    ; #88362: <==commonly_known== 72208 (pos)
                    (Bc_checked_p9)

                    ; #88964: <==commonly_known== 76132 (neg)
                    (Pd_checked_p9)

                    ; #91238: <==commonly_known== 76132 (neg)
                    (Pc_checked_p9)

                    ; #93521: <==commonly_known== 72208 (pos)
                    (Bb_checked_p9)

                    ; #17000: <==negation-removal== 21402 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #28706: <==negation-removal== 62998 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #29519: <==negation-removal== 52111 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30007: <==negation-removal== 11558 (pos)
                    (not (Pd_not_checked_p9))

                    ; #37559: <==uncertain_firing== 21402 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #38561: <==uncertain_firing== 62998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #39164: <==negation-removal== 93521 (pos)
                    (not (Pb_not_checked_p9))

                    ; #41793: <==uncertain_firing== 52111 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #46860: <==negation-removal== 91238 (pos)
                    (not (Bc_not_checked_p9))

                    ; #66408: <==negation-removal== 50050 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68442: <==negation-removal== 69862 (pos)
                    (not (Pa_not_checked_p9))

                    ; #76132: <==negation-removal== 72208 (pos)
                    (not (not_checked_p9))

                    ; #76573: <==negation-removal== 88964 (pos)
                    (not (Bd_not_checked_p9))

                    ; #80189: <==negation-removal== 54777 (pos)
                    (not (Ba_not_checked_p9))

                    ; #84648: <==negation-removal== 58763 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #91040: <==negation-removal== 88362 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91387: <==uncertain_firing== 58763 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #26677: <==commonly_known== 34057 (neg)
                    (Pc_checked_p10)

                    ; #32530: <==commonly_known== 34057 (neg)
                    (Pa_checked_p10)

                    ; #44643: <==commonly_known== 34057 (neg)
                    (Pb_checked_p10)

                    ; #50851: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #64177: <==commonly_known== 91715 (pos)
                    (Bd_checked_p10)

                    ; #69018: <==commonly_known== 91715 (pos)
                    (Ba_checked_p10)

                    ; #77288: <==commonly_known== 91715 (pos)
                    (Bb_checked_p10)

                    ; #80661: <==commonly_known== 91715 (pos)
                    (Bc_checked_p10)

                    ; #81813: <==commonly_known== 34057 (neg)
                    (Pd_checked_p10)

                    ; #84794: <==closure== 85944 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #85315: <==closure== 50851 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #85944: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #91715: origin
                    (checked_p10)

                    ; #14934: <==negation-removal== 69018 (pos)
                    (not (Pa_not_checked_p10))

                    ; #23577: <==uncertain_firing== 85315 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #25790: <==negation-removal== 32530 (pos)
                    (not (Ba_not_checked_p10))

                    ; #33373: <==negation-removal== 85944 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #34057: <==negation-removal== 91715 (pos)
                    (not (not_checked_p10))

                    ; #34642: <==negation-removal== 77288 (pos)
                    (not (Pb_not_checked_p10))

                    ; #42791: <==uncertain_firing== 50851 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #48357: <==negation-removal== 81813 (pos)
                    (not (Bd_not_checked_p10))

                    ; #51911: <==uncertain_firing== 85944 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #58872: <==negation-removal== 85315 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #60387: <==negation-removal== 84794 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #62889: <==negation-removal== 50851 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #65595: <==negation-removal== 80661 (pos)
                    (not (Pc_not_checked_p10))

                    ; #71495: <==uncertain_firing== 84794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #84400: <==negation-removal== 64177 (pos)
                    (not (Pd_not_checked_p10))

                    ; #91508: <==negation-removal== 26677 (pos)
                    (not (Bc_not_checked_p10))

                    ; #97186: <==negation-removal== 44643 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #18400: <==commonly_known== 57918 (neg)
                    (Pb_checked_p11)

                    ; #20471: <==commonly_known== 44564 (pos)
                    (Ba_checked_p11)

                    ; #31565: <==closure== 60143 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #36223: <==commonly_known== 44564 (pos)
                    (Bd_checked_p11)

                    ; #38951: <==commonly_known== 57918 (neg)
                    (Pc_checked_p11)

                    ; #40242: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #44564: origin
                    (checked_p11)

                    ; #55422: <==commonly_known== 57918 (neg)
                    (Pd_checked_p11)

                    ; #60143: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #61671: <==commonly_known== 44564 (pos)
                    (Bc_checked_p11)

                    ; #65580: <==commonly_known== 44564 (pos)
                    (Bb_checked_p11)

                    ; #68714: <==closure== 40242 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #90593: <==commonly_known== 57918 (neg)
                    (Pa_checked_p11)

                    ; #18510: <==uncertain_firing== 31565 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #29454: <==negation-removal== 18400 (pos)
                    (not (Bb_not_checked_p11))

                    ; #32621: <==negation-removal== 68714 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #33105: <==negation-removal== 31565 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #36216: <==negation-removal== 55422 (pos)
                    (not (Bd_not_checked_p11))

                    ; #38346: <==uncertain_firing== 68714 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #43971: <==negation-removal== 40242 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #47671: <==negation-removal== 90593 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51693: <==uncertain_firing== 60143 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #56022: <==negation-removal== 60143 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #57918: <==negation-removal== 44564 (pos)
                    (not (not_checked_p11))

                    ; #60316: <==negation-removal== 38951 (pos)
                    (not (Bc_not_checked_p11))

                    ; #62714: <==negation-removal== 36223 (pos)
                    (not (Pd_not_checked_p11))

                    ; #65283: <==negation-removal== 65580 (pos)
                    (not (Pb_not_checked_p11))

                    ; #73680: <==negation-removal== 20471 (pos)
                    (not (Pa_not_checked_p11))

                    ; #78770: <==negation-removal== 61671 (pos)
                    (not (Pc_not_checked_p11))

                    ; #87081: <==uncertain_firing== 40242 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #12512: <==closure== 74719 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #26373: <==commonly_known== 58502 (pos)
                    (Ba_checked_p12)

                    ; #34332: <==commonly_known== 58502 (pos)
                    (Bc_checked_p12)

                    ; #38002: <==commonly_known== 58502 (pos)
                    (Bd_checked_p12)

                    ; #42350: <==commonly_known== 64142 (neg)
                    (Pb_checked_p12)

                    ; #47603: <==commonly_known== 64142 (neg)
                    (Pa_checked_p12)

                    ; #58502: origin
                    (checked_p12)

                    ; #58537: <==commonly_known== 64142 (neg)
                    (Pd_checked_p12)

                    ; #65466: <==commonly_known== 58502 (pos)
                    (Bb_checked_p12)

                    ; #74719: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #76824: <==commonly_known== 64142 (neg)
                    (Pc_checked_p12)

                    ; #80885: <==closure== 83069 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #83069: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #20259: <==negation-removal== 38002 (pos)
                    (not (Pd_not_checked_p12))

                    ; #22406: <==negation-removal== 65466 (pos)
                    (not (Pb_not_checked_p12))

                    ; #23663: <==uncertain_firing== 12512 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #30078: <==negation-removal== 80885 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #30841: <==negation-removal== 76824 (pos)
                    (not (Bc_not_checked_p12))

                    ; #32522: <==negation-removal== 47603 (pos)
                    (not (Ba_not_checked_p12))

                    ; #35662: <==uncertain_firing== 80885 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #39596: <==negation-removal== 34332 (pos)
                    (not (Pc_not_checked_p12))

                    ; #45500: <==negation-removal== 12512 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #50330: <==negation-removal== 42350 (pos)
                    (not (Bb_not_checked_p12))

                    ; #51982: <==negation-removal== 58537 (pos)
                    (not (Bd_not_checked_p12))

                    ; #64142: <==negation-removal== 58502 (pos)
                    (not (not_checked_p12))

                    ; #67548: <==negation-removal== 83069 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #71826: <==negation-removal== 26373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #82030: <==negation-removal== 74719 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #82271: <==uncertain_firing== 83069 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #88179: <==uncertain_firing== 74719 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11522: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #17869: <==commonly_known== 24669 (neg)
                    (Pb_checked_p1)

                    ; #22271: <==closure== 11522 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #23214: <==commonly_known== 24669 (neg)
                    (Pa_checked_p1)

                    ; #26899: origin
                    (checked_p1)

                    ; #29647: <==commonly_known== 26899 (pos)
                    (Bb_checked_p1)

                    ; #35357: <==commonly_known== 26899 (pos)
                    (Bc_checked_p1)

                    ; #36685: <==commonly_known== 26899 (pos)
                    (Ba_checked_p1)

                    ; #43382: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #44543: <==commonly_known== 24669 (neg)
                    (Pd_checked_p1)

                    ; #54733: <==closure== 43382 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #64464: <==commonly_known== 24669 (neg)
                    (Pc_checked_p1)

                    ; #70042: <==commonly_known== 26899 (pos)
                    (Bd_checked_p1)

                    ; #11491: <==negation-removal== 17869 (pos)
                    (not (Bb_not_checked_p1))

                    ; #16467: <==negation-removal== 22271 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #23563: <==negation-removal== 54733 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #24669: <==negation-removal== 26899 (pos)
                    (not (not_checked_p1))

                    ; #26077: <==negation-removal== 29647 (pos)
                    (not (Pb_not_checked_p1))

                    ; #27612: <==negation-removal== 70042 (pos)
                    (not (Pd_not_checked_p1))

                    ; #32486: <==uncertain_firing== 43382 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #41402: <==uncertain_firing== 22271 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #59777: <==uncertain_firing== 11522 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #60457: <==negation-removal== 43382 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #63840: <==negation-removal== 23214 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71423: <==negation-removal== 44543 (pos)
                    (not (Bd_not_checked_p1))

                    ; #74390: <==uncertain_firing== 54733 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #76692: <==negation-removal== 11522 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #77384: <==negation-removal== 35357 (pos)
                    (not (Pc_not_checked_p1))

                    ; #80070: <==negation-removal== 64464 (pos)
                    (not (Bc_not_checked_p1))

                    ; #91544: <==negation-removal== 36685 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19838: <==commonly_known== 22307 (neg)
                    (Pb_checked_p2)

                    ; #35488: <==closure== 52582 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #52582: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #54135: <==commonly_known== 22307 (neg)
                    (Pa_checked_p2)

                    ; #56693: <==commonly_known== 22307 (neg)
                    (Pc_checked_p2)

                    ; #61274: <==commonly_known== 74761 (pos)
                    (Ba_checked_p2)

                    ; #61716: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #74761: origin
                    (checked_p2)

                    ; #76116: <==commonly_known== 74761 (pos)
                    (Bc_checked_p2)

                    ; #76391: <==commonly_known== 74761 (pos)
                    (Bb_checked_p2)

                    ; #78949: <==closure== 61716 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #83405: <==commonly_known== 74761 (pos)
                    (Bd_checked_p2)

                    ; #83778: <==commonly_known== 22307 (neg)
                    (Pd_checked_p2)

                    ; #10132: <==negation-removal== 61716 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #11379: <==uncertain_firing== 78949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #13765: <==negation-removal== 35488 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #16248: <==negation-removal== 19838 (pos)
                    (not (Bb_not_checked_p2))

                    ; #22307: <==negation-removal== 74761 (pos)
                    (not (not_checked_p2))

                    ; #30427: <==uncertain_firing== 52582 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #34200: <==negation-removal== 56693 (pos)
                    (not (Bc_not_checked_p2))

                    ; #39653: <==negation-removal== 54135 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45998: <==negation-removal== 83778 (pos)
                    (not (Bd_not_checked_p2))

                    ; #53901: <==negation-removal== 76391 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54704: <==negation-removal== 52582 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #61503: <==negation-removal== 83405 (pos)
                    (not (Pd_not_checked_p2))

                    ; #62671: <==negation-removal== 61274 (pos)
                    (not (Pa_not_checked_p2))

                    ; #74580: <==uncertain_firing== 61716 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #76104: <==negation-removal== 76116 (pos)
                    (not (Pc_not_checked_p2))

                    ; #87578: <==negation-removal== 78949 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #89322: <==uncertain_firing== 35488 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #35083: <==commonly_known== 43226 (pos)
                    (Bd_checked_p3)

                    ; #36704: <==commonly_known== 84877 (neg)
                    (Pa_checked_p3)

                    ; #42410: <==commonly_known== 84877 (neg)
                    (Pc_checked_p3)

                    ; #43226: origin
                    (checked_p3)

                    ; #44303: <==closure== 47960 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #45432: <==commonly_known== 84877 (neg)
                    (Pd_checked_p3)

                    ; #47150: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #47960: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #58610: <==closure== 47150 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #77520: <==commonly_known== 43226 (pos)
                    (Bc_checked_p3)

                    ; #84046: <==commonly_known== 43226 (pos)
                    (Ba_checked_p3)

                    ; #86155: <==commonly_known== 84877 (neg)
                    (Pb_checked_p3)

                    ; #91427: <==commonly_known== 43226 (pos)
                    (Bb_checked_p3)

                    ; #10256: <==uncertain_firing== 58610 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #10709: <==negation-removal== 35083 (pos)
                    (not (Pd_not_checked_p3))

                    ; #30039: <==negation-removal== 42410 (pos)
                    (not (Bc_not_checked_p3))

                    ; #30417: <==negation-removal== 84046 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43447: <==negation-removal== 86155 (pos)
                    (not (Bb_not_checked_p3))

                    ; #51298: <==negation-removal== 45432 (pos)
                    (not (Bd_not_checked_p3))

                    ; #51694: <==uncertain_firing== 47960 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #54130: <==uncertain_firing== 44303 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #54745: <==negation-removal== 36704 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57247: <==negation-removal== 47960 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #58137: <==negation-removal== 77520 (pos)
                    (not (Pc_not_checked_p3))

                    ; #72700: <==uncertain_firing== 47150 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #77351: <==negation-removal== 91427 (pos)
                    (not (Pb_not_checked_p3))

                    ; #84877: <==negation-removal== 43226 (pos)
                    (not (not_checked_p3))

                    ; #88942: <==negation-removal== 58610 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #88970: <==negation-removal== 44303 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #91396: <==negation-removal== 47150 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15323: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #15644: <==commonly_known== 91365 (neg)
                    (Pb_checked_p4)

                    ; #30666: <==commonly_known== 91365 (neg)
                    (Pd_checked_p4)

                    ; #32851: <==commonly_known== 36659 (pos)
                    (Bd_checked_p4)

                    ; #32965: <==commonly_known== 91365 (neg)
                    (Pc_checked_p4)

                    ; #36659: origin
                    (checked_p4)

                    ; #40946: <==commonly_known== 36659 (pos)
                    (Ba_checked_p4)

                    ; #44455: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #55768: <==commonly_known== 36659 (pos)
                    (Bc_checked_p4)

                    ; #73054: <==commonly_known== 91365 (neg)
                    (Pa_checked_p4)

                    ; #80397: <==closure== 44455 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #80632: <==closure== 15323 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #90498: <==commonly_known== 36659 (pos)
                    (Bb_checked_p4)

                    ; #14719: <==negation-removal== 30666 (pos)
                    (not (Bd_not_checked_p4))

                    ; #17011: <==negation-removal== 90498 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19471: <==negation-removal== 80397 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #29317: <==negation-removal== 32965 (pos)
                    (not (Bc_not_checked_p4))

                    ; #33408: <==negation-removal== 40946 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35141: <==uncertain_firing== 44455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #36464: <==negation-removal== 44455 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #40950: <==negation-removal== 32851 (pos)
                    (not (Pd_not_checked_p4))

                    ; #42014: <==negation-removal== 15323 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #44467: <==negation-removal== 55768 (pos)
                    (not (Pc_not_checked_p4))

                    ; #54464: <==negation-removal== 15644 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65339: <==uncertain_firing== 80632 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #75792: <==negation-removal== 80632 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #87351: <==uncertain_firing== 15323 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #91365: <==negation-removal== 36659 (pos)
                    (not (not_checked_p4))

                    ; #95720: <==negation-removal== 73054 (pos)
                    (not (Ba_not_checked_p4))

                    ; #99620: <==uncertain_firing== 80397 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18624: <==commonly_known== 78260 (neg)
                    (Pd_checked_p5)

                    ; #18967: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #28921: <==commonly_known== 85155 (pos)
                    (Ba_checked_p5)

                    ; #30340: <==commonly_known== 85155 (pos)
                    (Bc_checked_p5)

                    ; #43763: <==commonly_known== 78260 (neg)
                    (Pc_checked_p5)

                    ; #57133: <==commonly_known== 85155 (pos)
                    (Bd_checked_p5)

                    ; #60551: <==closure== 18967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #62502: <==commonly_known== 78260 (neg)
                    (Pa_checked_p5)

                    ; #70718: <==closure== 95051 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #84255: <==commonly_known== 78260 (neg)
                    (Pb_checked_p5)

                    ; #85155: origin
                    (checked_p5)

                    ; #86682: <==commonly_known== 85155 (pos)
                    (Bb_checked_p5)

                    ; #95051: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #16150: <==negation-removal== 60551 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #17620: <==negation-removal== 57133 (pos)
                    (not (Pd_not_checked_p5))

                    ; #24091: <==negation-removal== 43763 (pos)
                    (not (Bc_not_checked_p5))

                    ; #25906: <==negation-removal== 84255 (pos)
                    (not (Bb_not_checked_p5))

                    ; #26051: <==negation-removal== 86682 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28491: <==negation-removal== 62502 (pos)
                    (not (Ba_not_checked_p5))

                    ; #36296: <==negation-removal== 18624 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37753: <==negation-removal== 28921 (pos)
                    (not (Pa_not_checked_p5))

                    ; #38876: <==uncertain_firing== 60551 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #43897: <==negation-removal== 95051 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #44034: <==uncertain_firing== 95051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #49129: <==uncertain_firing== 18967 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #61865: <==negation-removal== 30340 (pos)
                    (not (Pc_not_checked_p5))

                    ; #72359: <==uncertain_firing== 70718 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #74330: <==negation-removal== 18967 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #78260: <==negation-removal== 85155 (pos)
                    (not (not_checked_p5))

                    ; #88220: <==negation-removal== 70718 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13432: <==commonly_known== 40985 (neg)
                    (Pd_checked_p6)

                    ; #18299: origin
                    (checked_p6)

                    ; #44440: <==commonly_known== 18299 (pos)
                    (Bc_checked_p6)

                    ; #52930: <==commonly_known== 18299 (pos)
                    (Bb_checked_p6)

                    ; #62880: <==commonly_known== 40985 (neg)
                    (Pb_checked_p6)

                    ; #65463: <==commonly_known== 18299 (pos)
                    (Bd_checked_p6)

                    ; #69966: <==commonly_known== 18299 (pos)
                    (Ba_checked_p6)

                    ; #72206: <==commonly_known== 40985 (neg)
                    (Pa_checked_p6)

                    ; #72970: <==commonly_known== 40985 (neg)
                    (Pc_checked_p6)

                    ; #72990: <==closure== 77605 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #77605: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #80065: <==closure== 91006 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #91006: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #12617: <==negation-removal== 77605 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #15394: <==negation-removal== 44440 (pos)
                    (not (Pc_not_checked_p6))

                    ; #15998: <==negation-removal== 91006 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #16396: <==negation-removal== 72990 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #18592: <==negation-removal== 13432 (pos)
                    (not (Bd_not_checked_p6))

                    ; #35177: <==uncertain_firing== 77605 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #35890: <==uncertain_firing== 72990 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #40985: <==negation-removal== 18299 (pos)
                    (not (not_checked_p6))

                    ; #47138: <==uncertain_firing== 80065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #50440: <==negation-removal== 62880 (pos)
                    (not (Bb_not_checked_p6))

                    ; #55901: <==negation-removal== 69966 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55922: <==uncertain_firing== 91006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #61910: <==negation-removal== 80065 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #68773: <==negation-removal== 72206 (pos)
                    (not (Ba_not_checked_p6))

                    ; #70699: <==negation-removal== 72970 (pos)
                    (not (Bc_not_checked_p6))

                    ; #82011: <==negation-removal== 52930 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87014: <==negation-removal== 65463 (pos)
                    (not (Pd_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #13704: <==commonly_known== 40743 (pos)
                    (Bb_checked_p7)

                    ; #18052: <==commonly_known== 40743 (pos)
                    (Bc_checked_p7)

                    ; #23019: <==closure== 25026 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #25026: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #37080: <==commonly_known== 14507 (neg)
                    (Pc_checked_p7)

                    ; #40743: origin
                    (checked_p7)

                    ; #56402: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #61752: <==commonly_known== 14507 (neg)
                    (Pd_checked_p7)

                    ; #72232: <==commonly_known== 40743 (pos)
                    (Ba_checked_p7)

                    ; #77778: <==closure== 56402 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #83564: <==commonly_known== 40743 (pos)
                    (Bd_checked_p7)

                    ; #86589: <==commonly_known== 14507 (neg)
                    (Pa_checked_p7)

                    ; #87882: <==commonly_known== 14507 (neg)
                    (Pb_checked_p7)

                    ; #14507: <==negation-removal== 40743 (pos)
                    (not (not_checked_p7))

                    ; #19905: <==uncertain_firing== 25026 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #23342: <==negation-removal== 87882 (pos)
                    (not (Bb_not_checked_p7))

                    ; #23635: <==uncertain_firing== 23019 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #24025: <==uncertain_firing== 77778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #24415: <==negation-removal== 83564 (pos)
                    (not (Pd_not_checked_p7))

                    ; #27407: <==negation-removal== 37080 (pos)
                    (not (Bc_not_checked_p7))

                    ; #29599: <==uncertain_firing== 56402 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #39293: <==negation-removal== 18052 (pos)
                    (not (Pc_not_checked_p7))

                    ; #48473: <==negation-removal== 61752 (pos)
                    (not (Bd_not_checked_p7))

                    ; #55397: <==negation-removal== 23019 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #68874: <==negation-removal== 72232 (pos)
                    (not (Pa_not_checked_p7))

                    ; #69140: <==negation-removal== 86589 (pos)
                    (not (Ba_not_checked_p7))

                    ; #76149: <==negation-removal== 56402 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #76433: <==negation-removal== 25026 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #84201: <==negation-removal== 13704 (pos)
                    (not (Pb_not_checked_p7))

                    ; #84982: <==negation-removal== 77778 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19309: <==commonly_known== 41133 (pos)
                    (Bb_checked_p8)

                    ; #22040: <==commonly_known== 88602 (neg)
                    (Pb_checked_p8)

                    ; #35809: <==commonly_known== 88602 (neg)
                    (Pc_checked_p8)

                    ; #40148: <==commonly_known== 88602 (neg)
                    (Pa_checked_p8)

                    ; #40579: <==commonly_known== 88602 (neg)
                    (Pd_checked_p8)

                    ; #41133: origin
                    (checked_p8)

                    ; #46105: <==commonly_known== 41133 (pos)
                    (Bc_checked_p8)

                    ; #50289: <==closure== 62247 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #56398: <==closure== 68702 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #62247: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #68702: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #77693: <==commonly_known== 41133 (pos)
                    (Bd_checked_p8)

                    ; #86259: <==commonly_known== 41133 (pos)
                    (Ba_checked_p8)

                    ; #12110: <==negation-removal== 35809 (pos)
                    (not (Bc_not_checked_p8))

                    ; #17996: <==uncertain_firing== 56398 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #22681: <==negation-removal== 56398 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #31102: <==negation-removal== 22040 (pos)
                    (not (Bb_not_checked_p8))

                    ; #44500: <==negation-removal== 40148 (pos)
                    (not (Ba_not_checked_p8))

                    ; #50196: <==negation-removal== 19309 (pos)
                    (not (Pb_not_checked_p8))

                    ; #53622: <==negation-removal== 62247 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #55282: <==negation-removal== 86259 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57738: <==uncertain_firing== 62247 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #60517: <==uncertain_firing== 50289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #68387: <==negation-removal== 46105 (pos)
                    (not (Pc_not_checked_p8))

                    ; #70859: <==uncertain_firing== 68702 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #73353: <==negation-removal== 77693 (pos)
                    (not (Pd_not_checked_p8))

                    ; #74760: <==negation-removal== 68702 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88602: <==negation-removal== 41133 (pos)
                    (not (not_checked_p8))

                    ; #90874: <==negation-removal== 40579 (pos)
                    (not (Bd_not_checked_p8))

                    ; #91458: <==negation-removal== 50289 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11558: <==commonly_known== 72208 (pos)
                    (Bd_checked_p9)

                    ; #12460: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #16237: <==closure== 64726 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #50050: <==commonly_known== 76132 (neg)
                    (Pb_checked_p9)

                    ; #54777: <==commonly_known== 76132 (neg)
                    (Pa_checked_p9)

                    ; #64726: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #69862: <==commonly_known== 72208 (pos)
                    (Ba_checked_p9)

                    ; #72208: origin
                    (checked_p9)

                    ; #79364: <==closure== 12460 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #88362: <==commonly_known== 72208 (pos)
                    (Bc_checked_p9)

                    ; #88964: <==commonly_known== 76132 (neg)
                    (Pd_checked_p9)

                    ; #91238: <==commonly_known== 76132 (neg)
                    (Pc_checked_p9)

                    ; #93521: <==commonly_known== 72208 (pos)
                    (Bb_checked_p9)

                    ; #18357: <==uncertain_firing== 16237 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #30007: <==negation-removal== 11558 (pos)
                    (not (Pd_not_checked_p9))

                    ; #34480: <==negation-removal== 16237 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #39164: <==negation-removal== 93521 (pos)
                    (not (Pb_not_checked_p9))

                    ; #42704: <==uncertain_firing== 79364 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #46698: <==negation-removal== 79364 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #46860: <==negation-removal== 91238 (pos)
                    (not (Bc_not_checked_p9))

                    ; #55676: <==uncertain_firing== 64726 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #55714: <==negation-removal== 64726 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #66408: <==negation-removal== 50050 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66585: <==negation-removal== 12460 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #68442: <==negation-removal== 69862 (pos)
                    (not (Pa_not_checked_p9))

                    ; #76132: <==negation-removal== 72208 (pos)
                    (not (not_checked_p9))

                    ; #76573: <==negation-removal== 88964 (pos)
                    (not (Bd_not_checked_p9))

                    ; #79619: <==uncertain_firing== 12460 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #80189: <==negation-removal== 54777 (pos)
                    (not (Ba_not_checked_p9))

                    ; #91040: <==negation-removal== 88362 (pos)
                    (not (Pc_not_checked_p9))))

)