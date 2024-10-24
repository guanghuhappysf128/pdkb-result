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
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #12825: <==closure== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #17984: <==closure== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #60809: <==closure== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #61546: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #68003: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #88761: <==closure== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #90543: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #92229: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #10292: <==negation-removal== 12825 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #17113: <==negation-removal== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #18338: <==negation-removal== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #19409: <==negation-removal== 88761 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27050: <==uncertain_firing== 61546 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #38930: <==uncertain_firing== 17984 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #45782: <==negation-removal== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #46234: <==negation-removal== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #50433: <==uncertain_firing== 90543 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #60316: <==negation-removal== 17984 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #61831: <==uncertain_firing== 60809 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64556: <==uncertain_firing== 88761 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #70928: <==uncertain_firing== 68003 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77645: <==uncertain_firing== 92229 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #77713: <==negation-removal== 60809 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #88093: <==uncertain_firing== 12825 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #12825: <==closure== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #17984: <==closure== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #60809: <==closure== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #61546: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #68003: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #88761: <==closure== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #90543: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #92229: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #10292: <==negation-removal== 12825 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #17113: <==negation-removal== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #18338: <==negation-removal== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #19409: <==negation-removal== 88761 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27050: <==uncertain_firing== 61546 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #38930: <==uncertain_firing== 17984 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #45782: <==negation-removal== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #46234: <==negation-removal== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #50433: <==uncertain_firing== 90543 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #60316: <==negation-removal== 17984 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #61831: <==uncertain_firing== 60809 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64556: <==uncertain_firing== 88761 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #70928: <==uncertain_firing== 68003 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77645: <==uncertain_firing== 92229 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #77713: <==negation-removal== 60809 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #88093: <==uncertain_firing== 12825 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #12825: <==closure== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #17984: <==closure== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #60809: <==closure== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #61546: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #68003: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #88761: <==closure== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #90543: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #92229: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #10292: <==negation-removal== 12825 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #17113: <==negation-removal== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #18338: <==negation-removal== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #19409: <==negation-removal== 88761 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27050: <==uncertain_firing== 61546 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #38930: <==uncertain_firing== 17984 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #45782: <==negation-removal== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #46234: <==negation-removal== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #50433: <==uncertain_firing== 90543 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #60316: <==negation-removal== 17984 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #61831: <==uncertain_firing== 60809 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64556: <==uncertain_firing== 88761 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #70928: <==uncertain_firing== 68003 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77645: <==uncertain_firing== 92229 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #77713: <==negation-removal== 60809 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #88093: <==uncertain_firing== 12825 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action badcomm_p10_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #12825: <==closure== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #17984: <==closure== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (Pd_survivorat_s_p10))

                    ; #60809: <==closure== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #61546: origin
                    (when (and (not_at_d_p10))
                          (Bd_survivorat_s_p10))

                    ; #68003: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #88761: <==closure== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #90543: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #92229: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #10292: <==negation-removal== 12825 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #17113: <==negation-removal== 68003 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #18338: <==negation-removal== 92229 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #19409: <==negation-removal== 88761 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #27050: <==uncertain_firing== 61546 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #38930: <==uncertain_firing== 17984 (pos)
                    (when (and (not (at_d_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #45782: <==negation-removal== 61546 (pos)
                    (when (and (not_at_d_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #46234: <==negation-removal== 90543 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #50433: <==uncertain_firing== 90543 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #60316: <==negation-removal== 17984 (pos)
                    (when (and (not_at_d_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #61831: <==uncertain_firing== 60809 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #64556: <==uncertain_firing== 88761 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #70928: <==uncertain_firing== 68003 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #77645: <==uncertain_firing== 92229 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #77713: <==negation-removal== 60809 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #88093: <==uncertain_firing== 12825 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #10868: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #11225: <==closure== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #24792: <==closure== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #39303: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #47005: <==closure== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #49727: <==closure== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #65763: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #73054: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #15707: <==uncertain_firing== 24792 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #21189: <==uncertain_firing== 39303 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #30923: <==uncertain_firing== 11225 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37419: <==negation-removal== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #39603: <==negation-removal== 24792 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #44874: <==negation-removal== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #47184: <==negation-removal== 47005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48827: <==uncertain_firing== 10868 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53448: <==negation-removal== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #57166: <==negation-removal== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66227: <==uncertain_firing== 65763 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67601: <==negation-removal== 11225 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69455: <==uncertain_firing== 49727 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #72215: <==uncertain_firing== 47005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #75854: <==negation-removal== 49727 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79949: <==uncertain_firing== 73054 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #10868: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #11225: <==closure== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #24792: <==closure== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #39303: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #47005: <==closure== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #49727: <==closure== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #65763: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #73054: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #15707: <==uncertain_firing== 24792 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #21189: <==uncertain_firing== 39303 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #30923: <==uncertain_firing== 11225 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37419: <==negation-removal== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #39603: <==negation-removal== 24792 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #44874: <==negation-removal== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #47184: <==negation-removal== 47005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48827: <==uncertain_firing== 10868 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53448: <==negation-removal== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #57166: <==negation-removal== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66227: <==uncertain_firing== 65763 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67601: <==negation-removal== 11225 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69455: <==uncertain_firing== 49727 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #72215: <==uncertain_firing== 47005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #75854: <==negation-removal== 49727 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79949: <==uncertain_firing== 73054 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #10868: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #11225: <==closure== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #24792: <==closure== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #39303: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #47005: <==closure== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #49727: <==closure== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #65763: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #73054: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #15707: <==uncertain_firing== 24792 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #21189: <==uncertain_firing== 39303 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #30923: <==uncertain_firing== 11225 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37419: <==negation-removal== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #39603: <==negation-removal== 24792 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #44874: <==negation-removal== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #47184: <==negation-removal== 47005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48827: <==uncertain_firing== 10868 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53448: <==negation-removal== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #57166: <==negation-removal== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66227: <==uncertain_firing== 65763 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67601: <==negation-removal== 11225 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69455: <==uncertain_firing== 49727 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #72215: <==uncertain_firing== 47005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #75854: <==negation-removal== 49727 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79949: <==uncertain_firing== 73054 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))))

    (:action badcomm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #10868: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #11225: <==closure== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #24792: <==closure== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (Pd_survivorat_s_p11))

                    ; #39303: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #47005: <==closure== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #49727: <==closure== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #65763: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #73054: origin
                    (when (and (not_at_d_p11))
                          (Bd_survivorat_s_p11))

                    ; #15707: <==uncertain_firing== 24792 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #21189: <==uncertain_firing== 39303 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #30923: <==uncertain_firing== 11225 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #37419: <==negation-removal== 73054 (pos)
                    (when (and (not_at_d_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #39603: <==negation-removal== 24792 (pos)
                    (when (and (not_at_d_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #44874: <==negation-removal== 10868 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #47184: <==negation-removal== 47005 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #48827: <==uncertain_firing== 10868 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #53448: <==negation-removal== 39303 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #57166: <==negation-removal== 65763 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #66227: <==uncertain_firing== 65763 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67601: <==negation-removal== 11225 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69455: <==uncertain_firing== 49727 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #72215: <==uncertain_firing== 47005 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #75854: <==negation-removal== 49727 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #79949: <==uncertain_firing== 73054 (pos)
                    (when (and (not (at_d_p11)))
                          (not (Pd_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #11192: <==closure== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #21577: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #23817: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #43490: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48077: <==closure== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #64299: <==closure== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #86261: <==closure== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #89350: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10279: <==negation-removal== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #14935: <==negation-removal== 11192 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19873: <==negation-removal== 64299 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22616: <==uncertain_firing== 43490 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42496: <==uncertain_firing== 64299 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47698: <==uncertain_firing== 23817 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #48148: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49068: <==negation-removal== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #61063: <==negation-removal== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #61802: <==negation-removal== 86261 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #64277: <==negation-removal== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #70874: <==negation-removal== 48077 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #71907: <==uncertain_firing== 86261 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #86105: <==uncertain_firing== 89350 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #87518: <==uncertain_firing== 11192 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #92145: <==uncertain_firing== 48077 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #11192: <==closure== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #21577: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #23817: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #43490: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48077: <==closure== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #64299: <==closure== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #86261: <==closure== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #89350: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10279: <==negation-removal== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #14935: <==negation-removal== 11192 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19873: <==negation-removal== 64299 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22616: <==uncertain_firing== 43490 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42496: <==uncertain_firing== 64299 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47698: <==uncertain_firing== 23817 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #48148: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49068: <==negation-removal== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #61063: <==negation-removal== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #61802: <==negation-removal== 86261 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #64277: <==negation-removal== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #70874: <==negation-removal== 48077 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #71907: <==uncertain_firing== 86261 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #86105: <==uncertain_firing== 89350 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #87518: <==uncertain_firing== 11192 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #92145: <==uncertain_firing== 48077 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #11192: <==closure== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #21577: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #23817: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #43490: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48077: <==closure== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #64299: <==closure== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #86261: <==closure== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #89350: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10279: <==negation-removal== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #14935: <==negation-removal== 11192 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19873: <==negation-removal== 64299 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22616: <==uncertain_firing== 43490 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42496: <==uncertain_firing== 64299 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47698: <==uncertain_firing== 23817 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #48148: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49068: <==negation-removal== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #61063: <==negation-removal== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #61802: <==negation-removal== 86261 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #64277: <==negation-removal== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #70874: <==negation-removal== 48077 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #71907: <==uncertain_firing== 86261 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #86105: <==uncertain_firing== 89350 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #87518: <==uncertain_firing== 11192 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #92145: <==uncertain_firing== 48077 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action badcomm_p12_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #11192: <==closure== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #21577: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #23817: origin
                    (when (and (not_at_d_p12))
                          (Bd_survivorat_s_p12))

                    ; #43490: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #48077: <==closure== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #64299: <==closure== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #86261: <==closure== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (Pd_survivorat_s_p12))

                    ; #89350: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #10279: <==negation-removal== 89350 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #14935: <==negation-removal== 11192 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #19873: <==negation-removal== 64299 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22616: <==uncertain_firing== 43490 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #42496: <==uncertain_firing== 64299 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47698: <==uncertain_firing== 23817 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #48148: <==uncertain_firing== 21577 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49068: <==negation-removal== 23817 (pos)
                    (when (and (not_at_d_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #61063: <==negation-removal== 21577 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #61802: <==negation-removal== 86261 (pos)
                    (when (and (not_at_d_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #64277: <==negation-removal== 43490 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #70874: <==negation-removal== 48077 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #71907: <==uncertain_firing== 86261 (pos)
                    (when (and (not (at_d_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #86105: <==uncertain_firing== 89350 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #87518: <==uncertain_firing== 11192 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #92145: <==uncertain_firing== 48077 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #20176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #25562: <==closure== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #31649: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #33467: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #38222: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #41553: <==closure== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #42374: <==closure== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52881: <==closure== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #14673: <==uncertain_firing== 33467 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #24416: <==uncertain_firing== 25562 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28206: <==negation-removal== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #32577: <==uncertain_firing== 38222 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34215: <==uncertain_firing== 52881 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #35324: <==negation-removal== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46812: <==negation-removal== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #51262: <==negation-removal== 42374 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66885: <==uncertain_firing== 41553 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74279: <==uncertain_firing== 20176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77585: <==uncertain_firing== 42374 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79211: <==negation-removal== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80822: <==negation-removal== 25562 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82024: <==uncertain_firing== 31649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88177: <==negation-removal== 41553 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #96820: <==negation-removal== 52881 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #20176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #25562: <==closure== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #31649: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #33467: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #38222: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #41553: <==closure== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #42374: <==closure== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52881: <==closure== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #14673: <==uncertain_firing== 33467 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #24416: <==uncertain_firing== 25562 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28206: <==negation-removal== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #32577: <==uncertain_firing== 38222 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34215: <==uncertain_firing== 52881 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #35324: <==negation-removal== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46812: <==negation-removal== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #51262: <==negation-removal== 42374 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66885: <==uncertain_firing== 41553 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74279: <==uncertain_firing== 20176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77585: <==uncertain_firing== 42374 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79211: <==negation-removal== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80822: <==negation-removal== 25562 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82024: <==uncertain_firing== 31649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88177: <==negation-removal== 41553 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #96820: <==negation-removal== 52881 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #25562: <==closure== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #31649: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #33467: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #38222: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #41553: <==closure== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #42374: <==closure== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52881: <==closure== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #14673: <==uncertain_firing== 33467 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #24416: <==uncertain_firing== 25562 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28206: <==negation-removal== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #32577: <==uncertain_firing== 38222 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34215: <==uncertain_firing== 52881 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #35324: <==negation-removal== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46812: <==negation-removal== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #51262: <==negation-removal== 42374 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66885: <==uncertain_firing== 41553 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74279: <==uncertain_firing== 20176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77585: <==uncertain_firing== 42374 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79211: <==negation-removal== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80822: <==negation-removal== 25562 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82024: <==uncertain_firing== 31649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88177: <==negation-removal== 41553 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #96820: <==negation-removal== 52881 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #20176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #25562: <==closure== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #31649: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #33467: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #38222: origin
                    (when (and (not_at_d_p1))
                          (Bd_survivorat_s_p1))

                    ; #41553: <==closure== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_survivorat_s_p1))

                    ; #42374: <==closure== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #52881: <==closure== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #14673: <==uncertain_firing== 33467 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #24416: <==uncertain_firing== 25562 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #28206: <==negation-removal== 33467 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #32577: <==uncertain_firing== 38222 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #34215: <==uncertain_firing== 52881 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #35324: <==negation-removal== 20176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46812: <==negation-removal== 38222 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #51262: <==negation-removal== 42374 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66885: <==uncertain_firing== 41553 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #74279: <==uncertain_firing== 20176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #77585: <==uncertain_firing== 42374 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #79211: <==negation-removal== 31649 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #80822: <==negation-removal== 25562 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82024: <==uncertain_firing== 31649 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #88177: <==negation-removal== 41553 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #96820: <==negation-removal== 52881 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #36277: <==closure== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #37665: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #55006: <==closure== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #55986: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #76423: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #77605: <==closure== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #78736: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #81873: <==closure== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #10981: <==negation-removal== 36277 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14188: <==negation-removal== 55006 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #18349: <==uncertain_firing== 81873 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19582: <==uncertain_firing== 55006 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34572: <==negation-removal== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38292: <==uncertain_firing== 36277 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41186: <==negation-removal== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50146: <==negation-removal== 77605 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52948: <==uncertain_firing== 78736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60829: <==negation-removal== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #61156: <==uncertain_firing== 77605 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79958: <==negation-removal== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80747: <==negation-removal== 81873 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81008: <==uncertain_firing== 37665 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82323: <==uncertain_firing== 76423 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #88293: <==uncertain_firing== 55986 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #36277: <==closure== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #37665: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #55006: <==closure== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #55986: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #76423: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #77605: <==closure== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #78736: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #81873: <==closure== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #10981: <==negation-removal== 36277 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14188: <==negation-removal== 55006 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #18349: <==uncertain_firing== 81873 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19582: <==uncertain_firing== 55006 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34572: <==negation-removal== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38292: <==uncertain_firing== 36277 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41186: <==negation-removal== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50146: <==negation-removal== 77605 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52948: <==uncertain_firing== 78736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60829: <==negation-removal== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #61156: <==uncertain_firing== 77605 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79958: <==negation-removal== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80747: <==negation-removal== 81873 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81008: <==uncertain_firing== 37665 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82323: <==uncertain_firing== 76423 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #88293: <==uncertain_firing== 55986 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #36277: <==closure== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #37665: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #55006: <==closure== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #55986: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #76423: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #77605: <==closure== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #78736: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #81873: <==closure== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #10981: <==negation-removal== 36277 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14188: <==negation-removal== 55006 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #18349: <==uncertain_firing== 81873 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19582: <==uncertain_firing== 55006 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34572: <==negation-removal== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38292: <==uncertain_firing== 36277 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41186: <==negation-removal== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50146: <==negation-removal== 77605 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52948: <==uncertain_firing== 78736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60829: <==negation-removal== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #61156: <==uncertain_firing== 77605 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79958: <==negation-removal== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80747: <==negation-removal== 81873 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81008: <==uncertain_firing== 37665 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82323: <==uncertain_firing== 76423 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #88293: <==uncertain_firing== 55986 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #36277: <==closure== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #37665: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #55006: <==closure== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #55986: origin
                    (when (and (not_at_d_p2))
                          (Bd_survivorat_s_p2))

                    ; #76423: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #77605: <==closure== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #78736: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #81873: <==closure== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_survivorat_s_p2))

                    ; #10981: <==negation-removal== 36277 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #14188: <==negation-removal== 55006 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #18349: <==uncertain_firing== 81873 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #19582: <==uncertain_firing== 55006 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #34572: <==negation-removal== 37665 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38292: <==uncertain_firing== 36277 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41186: <==negation-removal== 76423 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50146: <==negation-removal== 77605 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #52948: <==uncertain_firing== 78736 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #60829: <==negation-removal== 55986 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #61156: <==uncertain_firing== 77605 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79958: <==negation-removal== 78736 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #80747: <==negation-removal== 81873 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #81008: <==uncertain_firing== 37665 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #82323: <==uncertain_firing== 76423 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #88293: <==uncertain_firing== 55986 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #22340: <==closure== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #22823: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #23405: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #28501: <==closure== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #30684: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67278: <==closure== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #82796: <==closure== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #91857: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #13673: <==uncertain_firing== 23405 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25717: <==negation-removal== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #28461: <==negation-removal== 28501 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #29566: <==uncertain_firing== 22823 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29758: <==negation-removal== 67278 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35454: <==negation-removal== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51745: <==uncertain_firing== 91857 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52262: <==uncertain_firing== 30684 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67702: <==negation-removal== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #70837: <==negation-removal== 22340 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71219: <==uncertain_firing== 22340 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #74302: <==uncertain_firing== 28501 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #76226: <==uncertain_firing== 67278 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86329: <==uncertain_firing== 82796 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89796: <==negation-removal== 82796 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90653: <==negation-removal== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #22340: <==closure== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #22823: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #23405: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #28501: <==closure== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #30684: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67278: <==closure== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #82796: <==closure== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #91857: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #13673: <==uncertain_firing== 23405 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25717: <==negation-removal== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #28461: <==negation-removal== 28501 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #29566: <==uncertain_firing== 22823 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29758: <==negation-removal== 67278 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35454: <==negation-removal== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51745: <==uncertain_firing== 91857 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52262: <==uncertain_firing== 30684 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67702: <==negation-removal== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #70837: <==negation-removal== 22340 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71219: <==uncertain_firing== 22340 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #74302: <==uncertain_firing== 28501 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #76226: <==uncertain_firing== 67278 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86329: <==uncertain_firing== 82796 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89796: <==negation-removal== 82796 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90653: <==negation-removal== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #22340: <==closure== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #22823: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #23405: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #28501: <==closure== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #30684: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67278: <==closure== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #82796: <==closure== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #91857: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #13673: <==uncertain_firing== 23405 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25717: <==negation-removal== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #28461: <==negation-removal== 28501 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #29566: <==uncertain_firing== 22823 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29758: <==negation-removal== 67278 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35454: <==negation-removal== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51745: <==uncertain_firing== 91857 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52262: <==uncertain_firing== 30684 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67702: <==negation-removal== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #70837: <==negation-removal== 22340 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71219: <==uncertain_firing== 22340 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #74302: <==uncertain_firing== 28501 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #76226: <==uncertain_firing== 67278 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86329: <==uncertain_firing== 82796 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89796: <==negation-removal== 82796 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90653: <==negation-removal== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #22340: <==closure== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_survivorat_s_p3))

                    ; #22823: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #23405: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #28501: <==closure== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #30684: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #67278: <==closure== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #82796: <==closure== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #91857: origin
                    (when (and (not_at_d_p3))
                          (Bd_survivorat_s_p3))

                    ; #13673: <==uncertain_firing== 23405 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25717: <==negation-removal== 23405 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #28461: <==negation-removal== 28501 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #29566: <==uncertain_firing== 22823 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29758: <==negation-removal== 67278 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #35454: <==negation-removal== 30684 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51745: <==uncertain_firing== 91857 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #52262: <==uncertain_firing== 30684 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67702: <==negation-removal== 22823 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #70837: <==negation-removal== 22340 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #71219: <==uncertain_firing== 22340 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #74302: <==uncertain_firing== 28501 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #76226: <==uncertain_firing== 67278 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86329: <==uncertain_firing== 82796 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #89796: <==negation-removal== 82796 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90653: <==negation-removal== 91857 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #27849: <==closure== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #43916: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #54513: <==closure== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57710: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #61903: <==closure== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #66104: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #66607: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89623: <==closure== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #13183: <==uncertain_firing== 54513 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #15330: <==uncertain_firing== 61903 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18119: <==uncertain_firing== 66607 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21675: <==negation-removal== 27849 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23828: <==negation-removal== 61903 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26250: <==uncertain_firing== 27849 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #29484: <==negation-removal== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #31380: <==uncertain_firing== 43916 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #37592: <==negation-removal== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #39429: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53817: <==negation-removal== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #55307: <==negation-removal== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59170: <==negation-removal== 89623 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64068: <==uncertain_firing== 89623 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #77453: <==negation-removal== 54513 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #82361: <==uncertain_firing== 57710 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #27849: <==closure== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #43916: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #54513: <==closure== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57710: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #61903: <==closure== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #66104: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #66607: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89623: <==closure== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #13183: <==uncertain_firing== 54513 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #15330: <==uncertain_firing== 61903 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18119: <==uncertain_firing== 66607 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21675: <==negation-removal== 27849 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23828: <==negation-removal== 61903 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26250: <==uncertain_firing== 27849 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #29484: <==negation-removal== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #31380: <==uncertain_firing== 43916 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #37592: <==negation-removal== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #39429: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53817: <==negation-removal== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #55307: <==negation-removal== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59170: <==negation-removal== 89623 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64068: <==uncertain_firing== 89623 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #77453: <==negation-removal== 54513 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #82361: <==uncertain_firing== 57710 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27849: <==closure== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #43916: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #54513: <==closure== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57710: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #61903: <==closure== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #66104: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #66607: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89623: <==closure== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #13183: <==uncertain_firing== 54513 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #15330: <==uncertain_firing== 61903 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18119: <==uncertain_firing== 66607 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21675: <==negation-removal== 27849 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23828: <==negation-removal== 61903 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26250: <==uncertain_firing== 27849 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #29484: <==negation-removal== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #31380: <==uncertain_firing== 43916 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #37592: <==negation-removal== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #39429: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53817: <==negation-removal== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #55307: <==negation-removal== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59170: <==negation-removal== 89623 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64068: <==uncertain_firing== 89623 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #77453: <==negation-removal== 54513 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #82361: <==uncertain_firing== 57710 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #27849: <==closure== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #43916: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #54513: <==closure== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #57710: origin
                    (when (and (not_at_d_p4))
                          (Bd_survivorat_s_p4))

                    ; #61903: <==closure== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #66104: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #66607: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #89623: <==closure== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_survivorat_s_p4))

                    ; #13183: <==uncertain_firing== 54513 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #15330: <==uncertain_firing== 61903 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #18119: <==uncertain_firing== 66607 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #21675: <==negation-removal== 27849 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #23828: <==negation-removal== 61903 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #26250: <==uncertain_firing== 27849 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #29484: <==negation-removal== 43916 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #31380: <==uncertain_firing== 43916 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #37592: <==negation-removal== 57710 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #39429: <==uncertain_firing== 66104 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53817: <==negation-removal== 66607 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #55307: <==negation-removal== 66104 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #59170: <==negation-removal== 89623 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64068: <==uncertain_firing== 89623 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #77453: <==negation-removal== 54513 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #82361: <==uncertain_firing== 57710 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #25853: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #29628: <==closure== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #52199: <==closure== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #54818: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #55771: <==closure== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #62448: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #65507: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #67250: <==closure== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #11577: <==negation-removal== 55771 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #18267: <==uncertain_firing== 25853 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25005: <==uncertain_firing== 55771 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #25195: <==negation-removal== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #34954: <==negation-removal== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37001: <==uncertain_firing== 52199 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38429: <==uncertain_firing== 67250 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42551: <==negation-removal== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #50185: <==uncertain_firing== 29628 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52513: <==negation-removal== 29628 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #55052: <==negation-removal== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80389: <==uncertain_firing== 65507 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #86583: <==negation-removal== 52199 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88122: <==uncertain_firing== 62448 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91744: <==negation-removal== 67250 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #98357: <==uncertain_firing== 54818 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #25853: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #29628: <==closure== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #52199: <==closure== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #54818: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #55771: <==closure== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #62448: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #65507: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #67250: <==closure== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #11577: <==negation-removal== 55771 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #18267: <==uncertain_firing== 25853 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25005: <==uncertain_firing== 55771 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #25195: <==negation-removal== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #34954: <==negation-removal== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37001: <==uncertain_firing== 52199 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38429: <==uncertain_firing== 67250 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42551: <==negation-removal== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #50185: <==uncertain_firing== 29628 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52513: <==negation-removal== 29628 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #55052: <==negation-removal== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80389: <==uncertain_firing== 65507 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #86583: <==negation-removal== 52199 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88122: <==uncertain_firing== 62448 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91744: <==negation-removal== 67250 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #98357: <==uncertain_firing== 54818 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #25853: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #29628: <==closure== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #52199: <==closure== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #54818: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #55771: <==closure== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #62448: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #65507: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #67250: <==closure== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #11577: <==negation-removal== 55771 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #18267: <==uncertain_firing== 25853 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25005: <==uncertain_firing== 55771 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #25195: <==negation-removal== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #34954: <==negation-removal== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37001: <==uncertain_firing== 52199 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38429: <==uncertain_firing== 67250 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42551: <==negation-removal== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #50185: <==uncertain_firing== 29628 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52513: <==negation-removal== 29628 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #55052: <==negation-removal== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80389: <==uncertain_firing== 65507 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #86583: <==negation-removal== 52199 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88122: <==uncertain_firing== 62448 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91744: <==negation-removal== 67250 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #98357: <==uncertain_firing== 54818 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #25853: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #29628: <==closure== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #52199: <==closure== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #54818: origin
                    (when (and (not_at_d_p5))
                          (Bd_survivorat_s_p5))

                    ; #55771: <==closure== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_survivorat_s_p5))

                    ; #62448: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #65507: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #67250: <==closure== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #11577: <==negation-removal== 55771 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #18267: <==uncertain_firing== 25853 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #25005: <==uncertain_firing== 55771 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #25195: <==negation-removal== 65507 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #34954: <==negation-removal== 25853 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #37001: <==uncertain_firing== 52199 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #38429: <==uncertain_firing== 67250 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #42551: <==negation-removal== 54818 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #50185: <==uncertain_firing== 29628 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #52513: <==negation-removal== 29628 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #55052: <==negation-removal== 62448 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #80389: <==uncertain_firing== 65507 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #86583: <==negation-removal== 52199 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #88122: <==uncertain_firing== 62448 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #91744: <==negation-removal== 67250 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #98357: <==uncertain_firing== 54818 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #11267: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #27325: <==closure== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #33486: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #38462: <==closure== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45056: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #53892: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #65272: <==closure== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #89852: <==closure== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #14966: <==negation-removal== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22301: <==uncertain_firing== 53892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22667: <==uncertain_firing== 38462 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24729: <==negation-removal== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30230: <==negation-removal== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30629: <==uncertain_firing== 89852 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35325: <==uncertain_firing== 11267 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40483: <==uncertain_firing== 45056 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #41283: <==negation-removal== 89852 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #53148: <==negation-removal== 27325 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60454: <==negation-removal== 65272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61937: <==uncertain_firing== 65272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #80455: <==negation-removal== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #81122: <==uncertain_firing== 33486 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84395: <==negation-removal== 38462 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #89528: <==uncertain_firing== 27325 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11267: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #27325: <==closure== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #33486: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #38462: <==closure== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45056: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #53892: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #65272: <==closure== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #89852: <==closure== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #14966: <==negation-removal== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22301: <==uncertain_firing== 53892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22667: <==uncertain_firing== 38462 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24729: <==negation-removal== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30230: <==negation-removal== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30629: <==uncertain_firing== 89852 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35325: <==uncertain_firing== 11267 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40483: <==uncertain_firing== 45056 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #41283: <==negation-removal== 89852 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #53148: <==negation-removal== 27325 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60454: <==negation-removal== 65272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61937: <==uncertain_firing== 65272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #80455: <==negation-removal== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #81122: <==uncertain_firing== 33486 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84395: <==negation-removal== 38462 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #89528: <==uncertain_firing== 27325 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11267: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #27325: <==closure== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #33486: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #38462: <==closure== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45056: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #53892: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #65272: <==closure== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #89852: <==closure== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #14966: <==negation-removal== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22301: <==uncertain_firing== 53892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22667: <==uncertain_firing== 38462 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24729: <==negation-removal== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30230: <==negation-removal== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30629: <==uncertain_firing== 89852 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35325: <==uncertain_firing== 11267 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40483: <==uncertain_firing== 45056 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #41283: <==negation-removal== 89852 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #53148: <==negation-removal== 27325 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60454: <==negation-removal== 65272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61937: <==uncertain_firing== 65272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #80455: <==negation-removal== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #81122: <==uncertain_firing== 33486 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84395: <==negation-removal== 38462 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #89528: <==uncertain_firing== 27325 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (at_d_p6)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #11267: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #27325: <==closure== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #33486: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #38462: <==closure== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_survivorat_s_p6))

                    ; #45056: origin
                    (when (and (not_at_d_p6))
                          (Bd_survivorat_s_p6))

                    ; #53892: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #65272: <==closure== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #89852: <==closure== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #14966: <==negation-removal== 11267 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22301: <==uncertain_firing== 53892 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #22667: <==uncertain_firing== 38462 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #24729: <==negation-removal== 53892 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30230: <==negation-removal== 33486 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30629: <==uncertain_firing== 89852 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #35325: <==uncertain_firing== 11267 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #40483: <==uncertain_firing== 45056 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #41283: <==negation-removal== 89852 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #53148: <==negation-removal== 27325 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60454: <==negation-removal== 65272 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #61937: <==uncertain_firing== 65272 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #80455: <==negation-removal== 45056 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #81122: <==uncertain_firing== 33486 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #84395: <==negation-removal== 38462 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #89528: <==uncertain_firing== 27325 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #11536: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #22121: <==closure== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #22386: <==closure== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #39553: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63645: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #70961: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #82345: <==closure== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #94832: <==closure== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #10870: <==negation-removal== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #13948: <==uncertain_firing== 11536 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #18017: <==uncertain_firing== 22386 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23143: <==uncertain_firing== 82345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24807: <==uncertain_firing== 39553 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25926: <==negation-removal== 22386 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28953: <==uncertain_firing== 94832 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #32996: <==negation-removal== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35114: <==uncertain_firing== 63645 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49725: <==uncertain_firing== 70961 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64824: <==negation-removal== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #71285: <==negation-removal== 94832 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74605: <==negation-removal== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78743: <==uncertain_firing== 22121 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #80349: <==negation-removal== 22121 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #89773: <==negation-removal== 82345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #11536: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #22121: <==closure== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #22386: <==closure== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #39553: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63645: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #70961: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #82345: <==closure== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #94832: <==closure== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #10870: <==negation-removal== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #13948: <==uncertain_firing== 11536 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #18017: <==uncertain_firing== 22386 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23143: <==uncertain_firing== 82345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24807: <==uncertain_firing== 39553 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25926: <==negation-removal== 22386 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28953: <==uncertain_firing== 94832 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #32996: <==negation-removal== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35114: <==uncertain_firing== 63645 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49725: <==uncertain_firing== 70961 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64824: <==negation-removal== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #71285: <==negation-removal== 94832 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74605: <==negation-removal== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78743: <==uncertain_firing== 22121 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #80349: <==negation-removal== 22121 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #89773: <==negation-removal== 82345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #11536: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #22121: <==closure== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #22386: <==closure== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #39553: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63645: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #70961: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #82345: <==closure== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #94832: <==closure== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #10870: <==negation-removal== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #13948: <==uncertain_firing== 11536 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #18017: <==uncertain_firing== 22386 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23143: <==uncertain_firing== 82345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24807: <==uncertain_firing== 39553 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25926: <==negation-removal== 22386 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28953: <==uncertain_firing== 94832 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #32996: <==negation-removal== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35114: <==uncertain_firing== 63645 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49725: <==uncertain_firing== 70961 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64824: <==negation-removal== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #71285: <==negation-removal== 94832 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74605: <==negation-removal== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78743: <==uncertain_firing== 22121 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #80349: <==negation-removal== 22121 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #89773: <==negation-removal== 82345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #11536: origin
                    (when (and (not_at_d_p7))
                          (Bd_survivorat_s_p7))

                    ; #22121: <==closure== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_survivorat_s_p7))

                    ; #22386: <==closure== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #39553: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #63645: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #70961: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #82345: <==closure== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #94832: <==closure== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #10870: <==negation-removal== 63645 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #13948: <==uncertain_firing== 11536 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #18017: <==uncertain_firing== 22386 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #23143: <==uncertain_firing== 82345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24807: <==uncertain_firing== 39553 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #25926: <==negation-removal== 22386 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #28953: <==uncertain_firing== 94832 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #32996: <==negation-removal== 39553 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #35114: <==uncertain_firing== 63645 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49725: <==uncertain_firing== 70961 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #64824: <==negation-removal== 11536 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #71285: <==negation-removal== 94832 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #74605: <==negation-removal== 70961 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #78743: <==uncertain_firing== 22121 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #80349: <==negation-removal== 22121 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #89773: <==negation-removal== 82345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #11528: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #28682: <==closure== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #47425: <==closure== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #53878: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67567: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #68797: <==closure== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #75086: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #87995: <==closure== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #14736: <==uncertain_firing== 75086 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #16123: <==negation-removal== 87995 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17591: <==negation-removal== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #17862: <==uncertain_firing== 67567 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19317: <==uncertain_firing== 47425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #27082: <==uncertain_firing== 68797 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27519: <==negation-removal== 68797 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #43695: <==negation-removal== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53984: <==negation-removal== 28682 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54276: <==uncertain_firing== 87995 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60583: <==uncertain_firing== 53878 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64709: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79341: <==negation-removal== 47425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #81879: <==negation-removal== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86546: <==negation-removal== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #90515: <==uncertain_firing== 11528 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #11528: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #28682: <==closure== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #47425: <==closure== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #53878: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67567: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #68797: <==closure== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #75086: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #87995: <==closure== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #14736: <==uncertain_firing== 75086 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #16123: <==negation-removal== 87995 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17591: <==negation-removal== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #17862: <==uncertain_firing== 67567 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19317: <==uncertain_firing== 47425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #27082: <==uncertain_firing== 68797 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27519: <==negation-removal== 68797 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #43695: <==negation-removal== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53984: <==negation-removal== 28682 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54276: <==uncertain_firing== 87995 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60583: <==uncertain_firing== 53878 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64709: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79341: <==negation-removal== 47425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #81879: <==negation-removal== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86546: <==negation-removal== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #90515: <==uncertain_firing== 11528 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #11528: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #28682: <==closure== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #47425: <==closure== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #53878: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67567: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #68797: <==closure== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #75086: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #87995: <==closure== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #14736: <==uncertain_firing== 75086 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #16123: <==negation-removal== 87995 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17591: <==negation-removal== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #17862: <==uncertain_firing== 67567 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19317: <==uncertain_firing== 47425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #27082: <==uncertain_firing== 68797 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27519: <==negation-removal== 68797 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #43695: <==negation-removal== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53984: <==negation-removal== 28682 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54276: <==uncertain_firing== 87995 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60583: <==uncertain_firing== 53878 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64709: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79341: <==negation-removal== 47425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #81879: <==negation-removal== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86546: <==negation-removal== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #90515: <==uncertain_firing== 11528 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #11528: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #28682: <==closure== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #47425: <==closure== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #53878: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #67567: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #68797: <==closure== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_survivorat_s_p8))

                    ; #75086: origin
                    (when (and (not_at_d_p8))
                          (Bd_survivorat_s_p8))

                    ; #87995: <==closure== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #14736: <==uncertain_firing== 75086 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #16123: <==negation-removal== 87995 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17591: <==negation-removal== 75086 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #17862: <==uncertain_firing== 67567 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #19317: <==uncertain_firing== 47425 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #27082: <==uncertain_firing== 68797 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #27519: <==negation-removal== 68797 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #43695: <==negation-removal== 67567 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53984: <==negation-removal== 28682 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54276: <==uncertain_firing== 87995 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #60583: <==uncertain_firing== 53878 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64709: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79341: <==negation-removal== 47425 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #81879: <==negation-removal== 11528 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86546: <==negation-removal== 53878 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #90515: <==uncertain_firing== 11528 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #14746: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #24142: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #35963: <==closure== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #43861: <==closure== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #51758: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #54675: <==closure== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #62128: <==closure== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #98664: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #27478: <==negation-removal== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45901: <==uncertain_firing== 14746 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47118: <==negation-removal== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53786: <==negation-removal== 35963 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #55545: <==uncertain_firing== 24142 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #55602: <==uncertain_firing== 98664 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61166: <==uncertain_firing== 54675 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65940: <==negation-removal== 54675 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67107: <==negation-removal== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68283: <==negation-removal== 62128 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #68594: <==uncertain_firing== 62128 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72937: <==negation-removal== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #81004: <==negation-removal== 43861 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86871: <==uncertain_firing== 35963 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87310: <==uncertain_firing== 43861 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92175: <==uncertain_firing== 51758 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #14746: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #24142: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #35963: <==closure== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #43861: <==closure== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #51758: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #54675: <==closure== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #62128: <==closure== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #98664: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #27478: <==negation-removal== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45901: <==uncertain_firing== 14746 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47118: <==negation-removal== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53786: <==negation-removal== 35963 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #55545: <==uncertain_firing== 24142 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #55602: <==uncertain_firing== 98664 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61166: <==uncertain_firing== 54675 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65940: <==negation-removal== 54675 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67107: <==negation-removal== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68283: <==negation-removal== 62128 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #68594: <==uncertain_firing== 62128 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72937: <==negation-removal== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #81004: <==negation-removal== 43861 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86871: <==uncertain_firing== 35963 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87310: <==uncertain_firing== 43861 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92175: <==uncertain_firing== 51758 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #14746: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #24142: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #35963: <==closure== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #43861: <==closure== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #51758: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #54675: <==closure== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #62128: <==closure== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #98664: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #27478: <==negation-removal== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45901: <==uncertain_firing== 14746 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47118: <==negation-removal== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53786: <==negation-removal== 35963 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #55545: <==uncertain_firing== 24142 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #55602: <==uncertain_firing== 98664 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61166: <==uncertain_firing== 54675 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65940: <==negation-removal== 54675 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67107: <==negation-removal== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68283: <==negation-removal== 62128 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #68594: <==uncertain_firing== 62128 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72937: <==negation-removal== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #81004: <==negation-removal== 43861 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86871: <==uncertain_firing== 35963 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87310: <==uncertain_firing== 43861 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92175: <==uncertain_firing== 51758 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #14746: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #24142: origin
                    (when (and (not_at_d_p9))
                          (Bd_survivorat_s_p9))

                    ; #35963: <==closure== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_survivorat_s_p9))

                    ; #43861: <==closure== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #51758: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #54675: <==closure== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #62128: <==closure== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #98664: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #27478: <==negation-removal== 98664 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45901: <==uncertain_firing== 14746 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47118: <==negation-removal== 51758 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #53786: <==negation-removal== 35963 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #55545: <==uncertain_firing== 24142 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #55602: <==uncertain_firing== 98664 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61166: <==uncertain_firing== 54675 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #65940: <==negation-removal== 54675 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #67107: <==negation-removal== 14746 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68283: <==negation-removal== 62128 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #68594: <==uncertain_firing== 62128 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #72937: <==negation-removal== 24142 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #81004: <==negation-removal== 43861 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86871: <==uncertain_firing== 35963 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #87310: <==uncertain_firing== 43861 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #92175: <==uncertain_firing== 51758 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Pa_survivorat_s_p10)
                           (at_a_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #13605: <==closure== 34655 (pos)
                    (Pc_survivorat_s_p10)

                    ; #32794: origin
                    (Ba_survivorat_s_p10)

                    ; #34655: origin
                    (Bc_survivorat_s_p10)

                    ; #50741: <==closure== 89196 (pos)
                    (Pb_survivorat_s_p10)

                    ; #60701: <==closure== 32794 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63258: <==closure== 71277 (pos)
                    (Pd_survivorat_s_p10)

                    ; #71277: origin
                    (Bd_survivorat_s_p10)

                    ; #89196: origin
                    (Bb_survivorat_s_p10)

                    ; #11525: <==negation-removal== 32794 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #34981: <==negation-removal== 34655 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36826: <==negation-removal== 13605 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #44508: <==negation-removal== 63258 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #50362: <==negation-removal== 71277 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #64324: <==negation-removal== 60701 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 50741 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91669: <==negation-removal== 89196 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #13605: <==closure== 34655 (pos)
                    (Pc_survivorat_s_p10)

                    ; #32794: origin
                    (Ba_survivorat_s_p10)

                    ; #34655: origin
                    (Bc_survivorat_s_p10)

                    ; #50741: <==closure== 89196 (pos)
                    (Pb_survivorat_s_p10)

                    ; #60701: <==closure== 32794 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63258: <==closure== 71277 (pos)
                    (Pd_survivorat_s_p10)

                    ; #71277: origin
                    (Bd_survivorat_s_p10)

                    ; #89196: origin
                    (Bb_survivorat_s_p10)

                    ; #11525: <==negation-removal== 32794 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #34981: <==negation-removal== 34655 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36826: <==negation-removal== 13605 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #44508: <==negation-removal== 63258 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #50362: <==negation-removal== 71277 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #64324: <==negation-removal== 60701 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 50741 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91669: <==negation-removal== 89196 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #13605: <==closure== 34655 (pos)
                    (Pc_survivorat_s_p10)

                    ; #32794: origin
                    (Ba_survivorat_s_p10)

                    ; #34655: origin
                    (Bc_survivorat_s_p10)

                    ; #50741: <==closure== 89196 (pos)
                    (Pb_survivorat_s_p10)

                    ; #60701: <==closure== 32794 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63258: <==closure== 71277 (pos)
                    (Pd_survivorat_s_p10)

                    ; #71277: origin
                    (Bd_survivorat_s_p10)

                    ; #89196: origin
                    (Bb_survivorat_s_p10)

                    ; #11525: <==negation-removal== 32794 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #34981: <==negation-removal== 34655 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36826: <==negation-removal== 13605 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #44508: <==negation-removal== 63258 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #50362: <==negation-removal== 71277 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #64324: <==negation-removal== 60701 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 50741 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91669: <==negation-removal== 89196 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (Pd_survivorat_s_p10)
                           (at_d_p10))
        :effect (and
                    ; #13605: <==closure== 34655 (pos)
                    (Pc_survivorat_s_p10)

                    ; #32794: origin
                    (Ba_survivorat_s_p10)

                    ; #34655: origin
                    (Bc_survivorat_s_p10)

                    ; #50741: <==closure== 89196 (pos)
                    (Pb_survivorat_s_p10)

                    ; #60701: <==closure== 32794 (pos)
                    (Pa_survivorat_s_p10)

                    ; #63258: <==closure== 71277 (pos)
                    (Pd_survivorat_s_p10)

                    ; #71277: origin
                    (Bd_survivorat_s_p10)

                    ; #89196: origin
                    (Bb_survivorat_s_p10)

                    ; #11525: <==negation-removal== 32794 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #34981: <==negation-removal== 34655 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36826: <==negation-removal== 13605 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #44508: <==negation-removal== 63258 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #50362: <==negation-removal== 71277 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #64324: <==negation-removal== 60701 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #82569: <==negation-removal== 50741 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #91669: <==negation-removal== 89196 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #11317: <==closure== 69066 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28881: origin
                    (Bb_survivorat_s_p11)

                    ; #31744: <==closure== 28881 (pos)
                    (Pb_survivorat_s_p11)

                    ; #46531: <==closure== 58546 (pos)
                    (Pd_survivorat_s_p11)

                    ; #58546: origin
                    (Bd_survivorat_s_p11)

                    ; #69066: origin
                    (Bc_survivorat_s_p11)

                    ; #75859: <==closure== 88671 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88671: origin
                    (Ba_survivorat_s_p11)

                    ; #33706: <==negation-removal== 11317 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #37171: <==negation-removal== 46531 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #41806: <==negation-removal== 75859 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #55719: <==negation-removal== 88671 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #55992: <==negation-removal== 58546 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #66195: <==negation-removal== 31744 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78702: <==negation-removal== 69066 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #90255: <==negation-removal== 28881 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #11317: <==closure== 69066 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28881: origin
                    (Bb_survivorat_s_p11)

                    ; #31744: <==closure== 28881 (pos)
                    (Pb_survivorat_s_p11)

                    ; #46531: <==closure== 58546 (pos)
                    (Pd_survivorat_s_p11)

                    ; #58546: origin
                    (Bd_survivorat_s_p11)

                    ; #69066: origin
                    (Bc_survivorat_s_p11)

                    ; #75859: <==closure== 88671 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88671: origin
                    (Ba_survivorat_s_p11)

                    ; #33706: <==negation-removal== 11317 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #37171: <==negation-removal== 46531 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #41806: <==negation-removal== 75859 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #55719: <==negation-removal== 88671 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #55992: <==negation-removal== 58546 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #66195: <==negation-removal== 31744 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78702: <==negation-removal== 69066 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #90255: <==negation-removal== 28881 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #11317: <==closure== 69066 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28881: origin
                    (Bb_survivorat_s_p11)

                    ; #31744: <==closure== 28881 (pos)
                    (Pb_survivorat_s_p11)

                    ; #46531: <==closure== 58546 (pos)
                    (Pd_survivorat_s_p11)

                    ; #58546: origin
                    (Bd_survivorat_s_p11)

                    ; #69066: origin
                    (Bc_survivorat_s_p11)

                    ; #75859: <==closure== 88671 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88671: origin
                    (Ba_survivorat_s_p11)

                    ; #33706: <==negation-removal== 11317 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #37171: <==negation-removal== 46531 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #41806: <==negation-removal== 75859 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #55719: <==negation-removal== 88671 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #55992: <==negation-removal== 58546 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #66195: <==negation-removal== 31744 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78702: <==negation-removal== 69066 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #90255: <==negation-removal== 28881 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (Pd_survivorat_s_p11)
                           (at_d_p11))
        :effect (and
                    ; #11317: <==closure== 69066 (pos)
                    (Pc_survivorat_s_p11)

                    ; #28881: origin
                    (Bb_survivorat_s_p11)

                    ; #31744: <==closure== 28881 (pos)
                    (Pb_survivorat_s_p11)

                    ; #46531: <==closure== 58546 (pos)
                    (Pd_survivorat_s_p11)

                    ; #58546: origin
                    (Bd_survivorat_s_p11)

                    ; #69066: origin
                    (Bc_survivorat_s_p11)

                    ; #75859: <==closure== 88671 (pos)
                    (Pa_survivorat_s_p11)

                    ; #88671: origin
                    (Ba_survivorat_s_p11)

                    ; #33706: <==negation-removal== 11317 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #37171: <==negation-removal== 46531 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #41806: <==negation-removal== 75859 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #55719: <==negation-removal== 88671 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #55992: <==negation-removal== 58546 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #66195: <==negation-removal== 31744 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #78702: <==negation-removal== 69066 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #90255: <==negation-removal== 28881 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #15703: origin
                    (Bc_survivorat_s_p12)

                    ; #17341: <==closure== 15703 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17384: origin
                    (Bb_survivorat_s_p12)

                    ; #35472: <==closure== 17384 (pos)
                    (Pb_survivorat_s_p12)

                    ; #39624: <==closure== 54622 (pos)
                    (Pa_survivorat_s_p12)

                    ; #47712: <==closure== 57104 (pos)
                    (Pd_survivorat_s_p12)

                    ; #54622: origin
                    (Ba_survivorat_s_p12)

                    ; #57104: origin
                    (Bd_survivorat_s_p12)

                    ; #19128: <==negation-removal== 39624 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #26063: <==negation-removal== 17384 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30369: <==negation-removal== 57104 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #53175: <==negation-removal== 17341 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #63577: <==negation-removal== 54622 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #65739: <==negation-removal== 15703 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #78258: <==negation-removal== 35472 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80777: <==negation-removal== 47712 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #15703: origin
                    (Bc_survivorat_s_p12)

                    ; #17341: <==closure== 15703 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17384: origin
                    (Bb_survivorat_s_p12)

                    ; #35472: <==closure== 17384 (pos)
                    (Pb_survivorat_s_p12)

                    ; #39624: <==closure== 54622 (pos)
                    (Pa_survivorat_s_p12)

                    ; #47712: <==closure== 57104 (pos)
                    (Pd_survivorat_s_p12)

                    ; #54622: origin
                    (Ba_survivorat_s_p12)

                    ; #57104: origin
                    (Bd_survivorat_s_p12)

                    ; #19128: <==negation-removal== 39624 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #26063: <==negation-removal== 17384 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30369: <==negation-removal== 57104 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #53175: <==negation-removal== 17341 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #63577: <==negation-removal== 54622 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #65739: <==negation-removal== 15703 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #78258: <==negation-removal== 35472 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80777: <==negation-removal== 47712 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #15703: origin
                    (Bc_survivorat_s_p12)

                    ; #17341: <==closure== 15703 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17384: origin
                    (Bb_survivorat_s_p12)

                    ; #35472: <==closure== 17384 (pos)
                    (Pb_survivorat_s_p12)

                    ; #39624: <==closure== 54622 (pos)
                    (Pa_survivorat_s_p12)

                    ; #47712: <==closure== 57104 (pos)
                    (Pd_survivorat_s_p12)

                    ; #54622: origin
                    (Ba_survivorat_s_p12)

                    ; #57104: origin
                    (Bd_survivorat_s_p12)

                    ; #19128: <==negation-removal== 39624 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #26063: <==negation-removal== 17384 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30369: <==negation-removal== 57104 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #53175: <==negation-removal== 17341 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #63577: <==negation-removal== 54622 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #65739: <==negation-removal== 15703 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #78258: <==negation-removal== 35472 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80777: <==negation-removal== 47712 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #15703: origin
                    (Bc_survivorat_s_p12)

                    ; #17341: <==closure== 15703 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17384: origin
                    (Bb_survivorat_s_p12)

                    ; #35472: <==closure== 17384 (pos)
                    (Pb_survivorat_s_p12)

                    ; #39624: <==closure== 54622 (pos)
                    (Pa_survivorat_s_p12)

                    ; #47712: <==closure== 57104 (pos)
                    (Pd_survivorat_s_p12)

                    ; #54622: origin
                    (Ba_survivorat_s_p12)

                    ; #57104: origin
                    (Bd_survivorat_s_p12)

                    ; #19128: <==negation-removal== 39624 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #26063: <==negation-removal== 17384 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #30369: <==negation-removal== 57104 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #53175: <==negation-removal== 17341 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #63577: <==negation-removal== 54622 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #65739: <==negation-removal== 15703 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #78258: <==negation-removal== 35472 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #80777: <==negation-removal== 47712 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #15064: origin
                    (Ba_survivorat_s_p1)

                    ; #28673: <==closure== 79407 (pos)
                    (Pd_survivorat_s_p1)

                    ; #29965: origin
                    (Bc_survivorat_s_p1)

                    ; #51203: <==closure== 72208 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63567: <==closure== 29965 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72208: origin
                    (Bb_survivorat_s_p1)

                    ; #78584: <==closure== 15064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79407: origin
                    (Bd_survivorat_s_p1)

                    ; #22795: <==negation-removal== 51203 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44015: <==negation-removal== 15064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45357: <==negation-removal== 63567 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56180: <==negation-removal== 72208 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #58616: <==negation-removal== 28673 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #63292: <==negation-removal== 29965 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #68333: <==negation-removal== 79407 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87645: <==negation-removal== 78584 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #15064: origin
                    (Ba_survivorat_s_p1)

                    ; #28673: <==closure== 79407 (pos)
                    (Pd_survivorat_s_p1)

                    ; #29965: origin
                    (Bc_survivorat_s_p1)

                    ; #51203: <==closure== 72208 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63567: <==closure== 29965 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72208: origin
                    (Bb_survivorat_s_p1)

                    ; #78584: <==closure== 15064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79407: origin
                    (Bd_survivorat_s_p1)

                    ; #22795: <==negation-removal== 51203 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44015: <==negation-removal== 15064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45357: <==negation-removal== 63567 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56180: <==negation-removal== 72208 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #58616: <==negation-removal== 28673 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #63292: <==negation-removal== 29965 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #68333: <==negation-removal== 79407 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87645: <==negation-removal== 78584 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #15064: origin
                    (Ba_survivorat_s_p1)

                    ; #28673: <==closure== 79407 (pos)
                    (Pd_survivorat_s_p1)

                    ; #29965: origin
                    (Bc_survivorat_s_p1)

                    ; #51203: <==closure== 72208 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63567: <==closure== 29965 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72208: origin
                    (Bb_survivorat_s_p1)

                    ; #78584: <==closure== 15064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79407: origin
                    (Bd_survivorat_s_p1)

                    ; #22795: <==negation-removal== 51203 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44015: <==negation-removal== 15064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45357: <==negation-removal== 63567 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56180: <==negation-removal== 72208 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #58616: <==negation-removal== 28673 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #63292: <==negation-removal== 29965 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #68333: <==negation-removal== 79407 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87645: <==negation-removal== 78584 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #15064: origin
                    (Ba_survivorat_s_p1)

                    ; #28673: <==closure== 79407 (pos)
                    (Pd_survivorat_s_p1)

                    ; #29965: origin
                    (Bc_survivorat_s_p1)

                    ; #51203: <==closure== 72208 (pos)
                    (Pb_survivorat_s_p1)

                    ; #63567: <==closure== 29965 (pos)
                    (Pc_survivorat_s_p1)

                    ; #72208: origin
                    (Bb_survivorat_s_p1)

                    ; #78584: <==closure== 15064 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79407: origin
                    (Bd_survivorat_s_p1)

                    ; #22795: <==negation-removal== 51203 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #44015: <==negation-removal== 15064 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #45357: <==negation-removal== 63567 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56180: <==negation-removal== 72208 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #58616: <==negation-removal== 28673 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #63292: <==negation-removal== 29965 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #68333: <==negation-removal== 79407 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #87645: <==negation-removal== 78584 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #11369: origin
                    (Ba_survivorat_s_p2)

                    ; #12196: origin
                    (Bc_survivorat_s_p2)

                    ; #30610: <==closure== 57176 (pos)
                    (Pd_survivorat_s_p2)

                    ; #47605: <==closure== 12196 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57176: origin
                    (Bd_survivorat_s_p2)

                    ; #69262: <==closure== 11369 (pos)
                    (Pa_survivorat_s_p2)

                    ; #79802: origin
                    (Bb_survivorat_s_p2)

                    ; #89323: <==closure== 79802 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22175: <==negation-removal== 30610 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #24864: <==negation-removal== 47605 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #49399: <==negation-removal== 12196 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #51051: <==negation-removal== 89323 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55749: <==negation-removal== 79802 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56222: <==negation-removal== 69262 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #78572: <==negation-removal== 57176 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #91949: <==negation-removal== 11369 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #11369: origin
                    (Ba_survivorat_s_p2)

                    ; #12196: origin
                    (Bc_survivorat_s_p2)

                    ; #30610: <==closure== 57176 (pos)
                    (Pd_survivorat_s_p2)

                    ; #47605: <==closure== 12196 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57176: origin
                    (Bd_survivorat_s_p2)

                    ; #69262: <==closure== 11369 (pos)
                    (Pa_survivorat_s_p2)

                    ; #79802: origin
                    (Bb_survivorat_s_p2)

                    ; #89323: <==closure== 79802 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22175: <==negation-removal== 30610 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #24864: <==negation-removal== 47605 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #49399: <==negation-removal== 12196 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #51051: <==negation-removal== 89323 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55749: <==negation-removal== 79802 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56222: <==negation-removal== 69262 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #78572: <==negation-removal== 57176 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #91949: <==negation-removal== 11369 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #11369: origin
                    (Ba_survivorat_s_p2)

                    ; #12196: origin
                    (Bc_survivorat_s_p2)

                    ; #30610: <==closure== 57176 (pos)
                    (Pd_survivorat_s_p2)

                    ; #47605: <==closure== 12196 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57176: origin
                    (Bd_survivorat_s_p2)

                    ; #69262: <==closure== 11369 (pos)
                    (Pa_survivorat_s_p2)

                    ; #79802: origin
                    (Bb_survivorat_s_p2)

                    ; #89323: <==closure== 79802 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22175: <==negation-removal== 30610 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #24864: <==negation-removal== 47605 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #49399: <==negation-removal== 12196 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #51051: <==negation-removal== 89323 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55749: <==negation-removal== 79802 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56222: <==negation-removal== 69262 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #78572: <==negation-removal== 57176 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #91949: <==negation-removal== 11369 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #11369: origin
                    (Ba_survivorat_s_p2)

                    ; #12196: origin
                    (Bc_survivorat_s_p2)

                    ; #30610: <==closure== 57176 (pos)
                    (Pd_survivorat_s_p2)

                    ; #47605: <==closure== 12196 (pos)
                    (Pc_survivorat_s_p2)

                    ; #57176: origin
                    (Bd_survivorat_s_p2)

                    ; #69262: <==closure== 11369 (pos)
                    (Pa_survivorat_s_p2)

                    ; #79802: origin
                    (Bb_survivorat_s_p2)

                    ; #89323: <==closure== 79802 (pos)
                    (Pb_survivorat_s_p2)

                    ; #22175: <==negation-removal== 30610 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #24864: <==negation-removal== 47605 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #49399: <==negation-removal== 12196 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #51051: <==negation-removal== 89323 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55749: <==negation-removal== 79802 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #56222: <==negation-removal== 69262 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #78572: <==negation-removal== 57176 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #91949: <==negation-removal== 11369 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #10156: origin
                    (Bd_survivorat_s_p3)

                    ; #12130: <==closure== 10156 (pos)
                    (Pd_survivorat_s_p3)

                    ; #13544: origin
                    (Bc_survivorat_s_p3)

                    ; #37516: <==closure== 86730 (pos)
                    (Pb_survivorat_s_p3)

                    ; #40220: <==closure== 13544 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67692: origin
                    (Ba_survivorat_s_p3)

                    ; #86730: origin
                    (Bb_survivorat_s_p3)

                    ; #90014: <==closure== 67692 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18583: <==negation-removal== 37516 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #25400: <==negation-removal== 90014 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #32065: <==negation-removal== 13544 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #34828: <==negation-removal== 67692 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #57684: <==negation-removal== 10156 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #59352: <==negation-removal== 86730 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73865: <==negation-removal== 40220 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88792: <==negation-removal== 12130 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #10156: origin
                    (Bd_survivorat_s_p3)

                    ; #12130: <==closure== 10156 (pos)
                    (Pd_survivorat_s_p3)

                    ; #13544: origin
                    (Bc_survivorat_s_p3)

                    ; #37516: <==closure== 86730 (pos)
                    (Pb_survivorat_s_p3)

                    ; #40220: <==closure== 13544 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67692: origin
                    (Ba_survivorat_s_p3)

                    ; #86730: origin
                    (Bb_survivorat_s_p3)

                    ; #90014: <==closure== 67692 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18583: <==negation-removal== 37516 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #25400: <==negation-removal== 90014 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #32065: <==negation-removal== 13544 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #34828: <==negation-removal== 67692 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #57684: <==negation-removal== 10156 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #59352: <==negation-removal== 86730 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73865: <==negation-removal== 40220 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88792: <==negation-removal== 12130 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #10156: origin
                    (Bd_survivorat_s_p3)

                    ; #12130: <==closure== 10156 (pos)
                    (Pd_survivorat_s_p3)

                    ; #13544: origin
                    (Bc_survivorat_s_p3)

                    ; #37516: <==closure== 86730 (pos)
                    (Pb_survivorat_s_p3)

                    ; #40220: <==closure== 13544 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67692: origin
                    (Ba_survivorat_s_p3)

                    ; #86730: origin
                    (Bb_survivorat_s_p3)

                    ; #90014: <==closure== 67692 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18583: <==negation-removal== 37516 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #25400: <==negation-removal== 90014 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #32065: <==negation-removal== 13544 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #34828: <==negation-removal== 67692 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #57684: <==negation-removal== 10156 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #59352: <==negation-removal== 86730 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73865: <==negation-removal== 40220 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88792: <==negation-removal== 12130 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (at_d_p3)
                           (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #10156: origin
                    (Bd_survivorat_s_p3)

                    ; #12130: <==closure== 10156 (pos)
                    (Pd_survivorat_s_p3)

                    ; #13544: origin
                    (Bc_survivorat_s_p3)

                    ; #37516: <==closure== 86730 (pos)
                    (Pb_survivorat_s_p3)

                    ; #40220: <==closure== 13544 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67692: origin
                    (Ba_survivorat_s_p3)

                    ; #86730: origin
                    (Bb_survivorat_s_p3)

                    ; #90014: <==closure== 67692 (pos)
                    (Pa_survivorat_s_p3)

                    ; #18583: <==negation-removal== 37516 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #25400: <==negation-removal== 90014 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #32065: <==negation-removal== 13544 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #34828: <==negation-removal== 67692 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #57684: <==negation-removal== 10156 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #59352: <==negation-removal== 86730 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #73865: <==negation-removal== 40220 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #88792: <==negation-removal== 12130 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #12884: origin
                    (Ba_survivorat_s_p4)

                    ; #27897: origin
                    (Bb_survivorat_s_p4)

                    ; #37208: <==closure== 27897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48607: <==closure== 49480 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49480: origin
                    (Bc_survivorat_s_p4)

                    ; #65378: origin
                    (Bd_survivorat_s_p4)

                    ; #70870: <==closure== 65378 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89130: <==closure== 12884 (pos)
                    (Pa_survivorat_s_p4)

                    ; #19423: <==negation-removal== 49480 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20693: <==negation-removal== 27897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22102: <==negation-removal== 48607 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #26911: <==negation-removal== 70870 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49692: <==negation-removal== 37208 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #57453: <==negation-removal== 12884 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #78191: <==negation-removal== 89130 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #86312: <==negation-removal== 65378 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #12884: origin
                    (Ba_survivorat_s_p4)

                    ; #27897: origin
                    (Bb_survivorat_s_p4)

                    ; #37208: <==closure== 27897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48607: <==closure== 49480 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49480: origin
                    (Bc_survivorat_s_p4)

                    ; #65378: origin
                    (Bd_survivorat_s_p4)

                    ; #70870: <==closure== 65378 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89130: <==closure== 12884 (pos)
                    (Pa_survivorat_s_p4)

                    ; #19423: <==negation-removal== 49480 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20693: <==negation-removal== 27897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22102: <==negation-removal== 48607 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #26911: <==negation-removal== 70870 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49692: <==negation-removal== 37208 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #57453: <==negation-removal== 12884 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #78191: <==negation-removal== 89130 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #86312: <==negation-removal== 65378 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #12884: origin
                    (Ba_survivorat_s_p4)

                    ; #27897: origin
                    (Bb_survivorat_s_p4)

                    ; #37208: <==closure== 27897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48607: <==closure== 49480 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49480: origin
                    (Bc_survivorat_s_p4)

                    ; #65378: origin
                    (Bd_survivorat_s_p4)

                    ; #70870: <==closure== 65378 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89130: <==closure== 12884 (pos)
                    (Pa_survivorat_s_p4)

                    ; #19423: <==negation-removal== 49480 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20693: <==negation-removal== 27897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22102: <==negation-removal== 48607 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #26911: <==negation-removal== 70870 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49692: <==negation-removal== 37208 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #57453: <==negation-removal== 12884 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #78191: <==negation-removal== 89130 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #86312: <==negation-removal== 65378 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #12884: origin
                    (Ba_survivorat_s_p4)

                    ; #27897: origin
                    (Bb_survivorat_s_p4)

                    ; #37208: <==closure== 27897 (pos)
                    (Pb_survivorat_s_p4)

                    ; #48607: <==closure== 49480 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49480: origin
                    (Bc_survivorat_s_p4)

                    ; #65378: origin
                    (Bd_survivorat_s_p4)

                    ; #70870: <==closure== 65378 (pos)
                    (Pd_survivorat_s_p4)

                    ; #89130: <==closure== 12884 (pos)
                    (Pa_survivorat_s_p4)

                    ; #19423: <==negation-removal== 49480 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #20693: <==negation-removal== 27897 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22102: <==negation-removal== 48607 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #26911: <==negation-removal== 70870 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #49692: <==negation-removal== 37208 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #57453: <==negation-removal== 12884 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #78191: <==negation-removal== 89130 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #86312: <==negation-removal== 65378 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #37481: origin
                    (Ba_survivorat_s_p5)

                    ; #37490: origin
                    (Bd_survivorat_s_p5)

                    ; #40288: <==closure== 59006 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56112: <==closure== 37481 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56514: <==closure== 68156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #59006: origin
                    (Bc_survivorat_s_p5)

                    ; #68156: origin
                    (Bb_survivorat_s_p5)

                    ; #74331: <==closure== 37490 (pos)
                    (Pd_survivorat_s_p5)

                    ; #13978: <==negation-removal== 37490 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14791: <==negation-removal== 37481 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #22061: <==negation-removal== 56514 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #27828: <==negation-removal== 74331 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #35926: <==negation-removal== 40288 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #68836: <==negation-removal== 68156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #70031: <==negation-removal== 59006 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #76981: <==negation-removal== 56112 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #37481: origin
                    (Ba_survivorat_s_p5)

                    ; #37490: origin
                    (Bd_survivorat_s_p5)

                    ; #40288: <==closure== 59006 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56112: <==closure== 37481 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56514: <==closure== 68156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #59006: origin
                    (Bc_survivorat_s_p5)

                    ; #68156: origin
                    (Bb_survivorat_s_p5)

                    ; #74331: <==closure== 37490 (pos)
                    (Pd_survivorat_s_p5)

                    ; #13978: <==negation-removal== 37490 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14791: <==negation-removal== 37481 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #22061: <==negation-removal== 56514 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #27828: <==negation-removal== 74331 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #35926: <==negation-removal== 40288 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #68836: <==negation-removal== 68156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #70031: <==negation-removal== 59006 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #76981: <==negation-removal== 56112 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #37481: origin
                    (Ba_survivorat_s_p5)

                    ; #37490: origin
                    (Bd_survivorat_s_p5)

                    ; #40288: <==closure== 59006 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56112: <==closure== 37481 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56514: <==closure== 68156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #59006: origin
                    (Bc_survivorat_s_p5)

                    ; #68156: origin
                    (Bb_survivorat_s_p5)

                    ; #74331: <==closure== 37490 (pos)
                    (Pd_survivorat_s_p5)

                    ; #13978: <==negation-removal== 37490 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14791: <==negation-removal== 37481 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #22061: <==negation-removal== 56514 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #27828: <==negation-removal== 74331 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #35926: <==negation-removal== 40288 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #68836: <==negation-removal== 68156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #70031: <==negation-removal== 59006 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #76981: <==negation-removal== 56112 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (Pd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #37481: origin
                    (Ba_survivorat_s_p5)

                    ; #37490: origin
                    (Bd_survivorat_s_p5)

                    ; #40288: <==closure== 59006 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56112: <==closure== 37481 (pos)
                    (Pa_survivorat_s_p5)

                    ; #56514: <==closure== 68156 (pos)
                    (Pb_survivorat_s_p5)

                    ; #59006: origin
                    (Bc_survivorat_s_p5)

                    ; #68156: origin
                    (Bb_survivorat_s_p5)

                    ; #74331: <==closure== 37490 (pos)
                    (Pd_survivorat_s_p5)

                    ; #13978: <==negation-removal== 37490 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #14791: <==negation-removal== 37481 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #22061: <==negation-removal== 56514 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #27828: <==negation-removal== 74331 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #35926: <==negation-removal== 40288 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #68836: <==negation-removal== 68156 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #70031: <==negation-removal== 59006 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #76981: <==negation-removal== 56112 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #11168: <==closure== 13460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13460: origin
                    (Ba_survivorat_s_p6)

                    ; #19055: origin
                    (Bc_survivorat_s_p6)

                    ; #25054: <==closure== 83153 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34153: <==closure== 58671 (pos)
                    (Pd_survivorat_s_p6)

                    ; #58193: <==closure== 19055 (pos)
                    (Pc_survivorat_s_p6)

                    ; #58671: origin
                    (Bd_survivorat_s_p6)

                    ; #83153: origin
                    (Bb_survivorat_s_p6)

                    ; #20382: <==negation-removal== 58193 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22504: <==negation-removal== 11168 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22520: <==negation-removal== 19055 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #34245: <==negation-removal== 83153 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44626: <==negation-removal== 25054 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69170: <==negation-removal== 13460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81762: <==negation-removal== 34153 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #85619: <==negation-removal== 58671 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #11168: <==closure== 13460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13460: origin
                    (Ba_survivorat_s_p6)

                    ; #19055: origin
                    (Bc_survivorat_s_p6)

                    ; #25054: <==closure== 83153 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34153: <==closure== 58671 (pos)
                    (Pd_survivorat_s_p6)

                    ; #58193: <==closure== 19055 (pos)
                    (Pc_survivorat_s_p6)

                    ; #58671: origin
                    (Bd_survivorat_s_p6)

                    ; #83153: origin
                    (Bb_survivorat_s_p6)

                    ; #20382: <==negation-removal== 58193 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22504: <==negation-removal== 11168 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22520: <==negation-removal== 19055 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #34245: <==negation-removal== 83153 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44626: <==negation-removal== 25054 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69170: <==negation-removal== 13460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81762: <==negation-removal== 34153 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #85619: <==negation-removal== 58671 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11168: <==closure== 13460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13460: origin
                    (Ba_survivorat_s_p6)

                    ; #19055: origin
                    (Bc_survivorat_s_p6)

                    ; #25054: <==closure== 83153 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34153: <==closure== 58671 (pos)
                    (Pd_survivorat_s_p6)

                    ; #58193: <==closure== 19055 (pos)
                    (Pc_survivorat_s_p6)

                    ; #58671: origin
                    (Bd_survivorat_s_p6)

                    ; #83153: origin
                    (Bb_survivorat_s_p6)

                    ; #20382: <==negation-removal== 58193 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22504: <==negation-removal== 11168 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22520: <==negation-removal== 19055 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #34245: <==negation-removal== 83153 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44626: <==negation-removal== 25054 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69170: <==negation-removal== 13460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81762: <==negation-removal== 34153 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #85619: <==negation-removal== 58671 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (at_d_p6)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #11168: <==closure== 13460 (pos)
                    (Pa_survivorat_s_p6)

                    ; #13460: origin
                    (Ba_survivorat_s_p6)

                    ; #19055: origin
                    (Bc_survivorat_s_p6)

                    ; #25054: <==closure== 83153 (pos)
                    (Pb_survivorat_s_p6)

                    ; #34153: <==closure== 58671 (pos)
                    (Pd_survivorat_s_p6)

                    ; #58193: <==closure== 19055 (pos)
                    (Pc_survivorat_s_p6)

                    ; #58671: origin
                    (Bd_survivorat_s_p6)

                    ; #83153: origin
                    (Bb_survivorat_s_p6)

                    ; #20382: <==negation-removal== 58193 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #22504: <==negation-removal== 11168 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #22520: <==negation-removal== 19055 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #34245: <==negation-removal== 83153 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #44626: <==negation-removal== 25054 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69170: <==negation-removal== 13460 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #81762: <==negation-removal== 34153 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #85619: <==negation-removal== 58671 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #37988: origin
                    (Bc_survivorat_s_p7)

                    ; #38266: origin
                    (Bd_survivorat_s_p7)

                    ; #45842: origin
                    (Bb_survivorat_s_p7)

                    ; #55527: <==closure== 56824 (pos)
                    (Pa_survivorat_s_p7)

                    ; #56824: origin
                    (Ba_survivorat_s_p7)

                    ; #61467: <==closure== 45842 (pos)
                    (Pb_survivorat_s_p7)

                    ; #82153: <==closure== 38266 (pos)
                    (Pd_survivorat_s_p7)

                    ; #82309: <==closure== 37988 (pos)
                    (Pc_survivorat_s_p7)

                    ; #26006: <==negation-removal== 38266 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36731: <==negation-removal== 56824 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #45098: <==negation-removal== 55527 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47699: <==negation-removal== 37988 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #47739: <==negation-removal== 82309 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51225: <==negation-removal== 45842 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #59698: <==negation-removal== 82153 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #84348: <==negation-removal== 61467 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #37988: origin
                    (Bc_survivorat_s_p7)

                    ; #38266: origin
                    (Bd_survivorat_s_p7)

                    ; #45842: origin
                    (Bb_survivorat_s_p7)

                    ; #55527: <==closure== 56824 (pos)
                    (Pa_survivorat_s_p7)

                    ; #56824: origin
                    (Ba_survivorat_s_p7)

                    ; #61467: <==closure== 45842 (pos)
                    (Pb_survivorat_s_p7)

                    ; #82153: <==closure== 38266 (pos)
                    (Pd_survivorat_s_p7)

                    ; #82309: <==closure== 37988 (pos)
                    (Pc_survivorat_s_p7)

                    ; #26006: <==negation-removal== 38266 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36731: <==negation-removal== 56824 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #45098: <==negation-removal== 55527 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47699: <==negation-removal== 37988 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #47739: <==negation-removal== 82309 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51225: <==negation-removal== 45842 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #59698: <==negation-removal== 82153 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #84348: <==negation-removal== 61467 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #37988: origin
                    (Bc_survivorat_s_p7)

                    ; #38266: origin
                    (Bd_survivorat_s_p7)

                    ; #45842: origin
                    (Bb_survivorat_s_p7)

                    ; #55527: <==closure== 56824 (pos)
                    (Pa_survivorat_s_p7)

                    ; #56824: origin
                    (Ba_survivorat_s_p7)

                    ; #61467: <==closure== 45842 (pos)
                    (Pb_survivorat_s_p7)

                    ; #82153: <==closure== 38266 (pos)
                    (Pd_survivorat_s_p7)

                    ; #82309: <==closure== 37988 (pos)
                    (Pc_survivorat_s_p7)

                    ; #26006: <==negation-removal== 38266 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36731: <==negation-removal== 56824 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #45098: <==negation-removal== 55527 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47699: <==negation-removal== 37988 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #47739: <==negation-removal== 82309 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51225: <==negation-removal== 45842 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #59698: <==negation-removal== 82153 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #84348: <==negation-removal== 61467 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #37988: origin
                    (Bc_survivorat_s_p7)

                    ; #38266: origin
                    (Bd_survivorat_s_p7)

                    ; #45842: origin
                    (Bb_survivorat_s_p7)

                    ; #55527: <==closure== 56824 (pos)
                    (Pa_survivorat_s_p7)

                    ; #56824: origin
                    (Ba_survivorat_s_p7)

                    ; #61467: <==closure== 45842 (pos)
                    (Pb_survivorat_s_p7)

                    ; #82153: <==closure== 38266 (pos)
                    (Pd_survivorat_s_p7)

                    ; #82309: <==closure== 37988 (pos)
                    (Pc_survivorat_s_p7)

                    ; #26006: <==negation-removal== 38266 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #36731: <==negation-removal== 56824 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #45098: <==negation-removal== 55527 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #47699: <==negation-removal== 37988 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #47739: <==negation-removal== 82309 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #51225: <==negation-removal== 45842 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #59698: <==negation-removal== 82153 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #84348: <==negation-removal== 61467 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #22405: origin
                    (Ba_survivorat_s_p8)

                    ; #23406: <==closure== 40899 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37977: origin
                    (Bb_survivorat_s_p8)

                    ; #40899: origin
                    (Bc_survivorat_s_p8)

                    ; #42592: <==closure== 88776 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62845: <==closure== 22405 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76094: <==closure== 37977 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88776: origin
                    (Bd_survivorat_s_p8)

                    ; #15531: <==negation-removal== 23406 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33639: <==negation-removal== 62845 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37206: <==negation-removal== 88776 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #54132: <==negation-removal== 37977 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60294: <==negation-removal== 22405 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69371: <==negation-removal== 40899 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72155: <==negation-removal== 42592 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87022: <==negation-removal== 76094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #22405: origin
                    (Ba_survivorat_s_p8)

                    ; #23406: <==closure== 40899 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37977: origin
                    (Bb_survivorat_s_p8)

                    ; #40899: origin
                    (Bc_survivorat_s_p8)

                    ; #42592: <==closure== 88776 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62845: <==closure== 22405 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76094: <==closure== 37977 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88776: origin
                    (Bd_survivorat_s_p8)

                    ; #15531: <==negation-removal== 23406 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33639: <==negation-removal== 62845 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37206: <==negation-removal== 88776 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #54132: <==negation-removal== 37977 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60294: <==negation-removal== 22405 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69371: <==negation-removal== 40899 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72155: <==negation-removal== 42592 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87022: <==negation-removal== 76094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #22405: origin
                    (Ba_survivorat_s_p8)

                    ; #23406: <==closure== 40899 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37977: origin
                    (Bb_survivorat_s_p8)

                    ; #40899: origin
                    (Bc_survivorat_s_p8)

                    ; #42592: <==closure== 88776 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62845: <==closure== 22405 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76094: <==closure== 37977 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88776: origin
                    (Bd_survivorat_s_p8)

                    ; #15531: <==negation-removal== 23406 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33639: <==negation-removal== 62845 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37206: <==negation-removal== 88776 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #54132: <==negation-removal== 37977 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60294: <==negation-removal== 22405 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69371: <==negation-removal== 40899 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72155: <==negation-removal== 42592 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87022: <==negation-removal== 76094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #22405: origin
                    (Ba_survivorat_s_p8)

                    ; #23406: <==closure== 40899 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37977: origin
                    (Bb_survivorat_s_p8)

                    ; #40899: origin
                    (Bc_survivorat_s_p8)

                    ; #42592: <==closure== 88776 (pos)
                    (Pd_survivorat_s_p8)

                    ; #62845: <==closure== 22405 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76094: <==closure== 37977 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88776: origin
                    (Bd_survivorat_s_p8)

                    ; #15531: <==negation-removal== 23406 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #33639: <==negation-removal== 62845 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #37206: <==negation-removal== 88776 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #54132: <==negation-removal== 37977 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #60294: <==negation-removal== 22405 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #69371: <==negation-removal== 40899 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #72155: <==negation-removal== 42592 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #87022: <==negation-removal== 76094 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #15631: <==closure== 87932 (pos)
                    (Pd_survivorat_s_p9)

                    ; #31391: origin
                    (Bc_survivorat_s_p9)

                    ; #34114: <==closure== 36929 (pos)
                    (Pa_survivorat_s_p9)

                    ; #36929: origin
                    (Ba_survivorat_s_p9)

                    ; #55116: origin
                    (Bb_survivorat_s_p9)

                    ; #62138: <==closure== 31391 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75515: <==closure== 55116 (pos)
                    (Pb_survivorat_s_p9)

                    ; #87932: origin
                    (Bd_survivorat_s_p9)

                    ; #11654: <==negation-removal== 75515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #13690: <==negation-removal== 36929 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25942: <==negation-removal== 15631 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36529: <==negation-removal== 34114 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52106: <==negation-removal== 87932 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 55116 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 62138 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70711: <==negation-removal== 31391 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #15631: <==closure== 87932 (pos)
                    (Pd_survivorat_s_p9)

                    ; #31391: origin
                    (Bc_survivorat_s_p9)

                    ; #34114: <==closure== 36929 (pos)
                    (Pa_survivorat_s_p9)

                    ; #36929: origin
                    (Ba_survivorat_s_p9)

                    ; #55116: origin
                    (Bb_survivorat_s_p9)

                    ; #62138: <==closure== 31391 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75515: <==closure== 55116 (pos)
                    (Pb_survivorat_s_p9)

                    ; #87932: origin
                    (Bd_survivorat_s_p9)

                    ; #11654: <==negation-removal== 75515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #13690: <==negation-removal== 36929 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25942: <==negation-removal== 15631 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36529: <==negation-removal== 34114 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52106: <==negation-removal== 87932 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 55116 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 62138 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70711: <==negation-removal== 31391 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #15631: <==closure== 87932 (pos)
                    (Pd_survivorat_s_p9)

                    ; #31391: origin
                    (Bc_survivorat_s_p9)

                    ; #34114: <==closure== 36929 (pos)
                    (Pa_survivorat_s_p9)

                    ; #36929: origin
                    (Ba_survivorat_s_p9)

                    ; #55116: origin
                    (Bb_survivorat_s_p9)

                    ; #62138: <==closure== 31391 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75515: <==closure== 55116 (pos)
                    (Pb_survivorat_s_p9)

                    ; #87932: origin
                    (Bd_survivorat_s_p9)

                    ; #11654: <==negation-removal== 75515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #13690: <==negation-removal== 36929 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25942: <==negation-removal== 15631 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36529: <==negation-removal== 34114 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52106: <==negation-removal== 87932 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 55116 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 62138 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70711: <==negation-removal== 31391 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #15631: <==closure== 87932 (pos)
                    (Pd_survivorat_s_p9)

                    ; #31391: origin
                    (Bc_survivorat_s_p9)

                    ; #34114: <==closure== 36929 (pos)
                    (Pa_survivorat_s_p9)

                    ; #36929: origin
                    (Ba_survivorat_s_p9)

                    ; #55116: origin
                    (Bb_survivorat_s_p9)

                    ; #62138: <==closure== 31391 (pos)
                    (Pc_survivorat_s_p9)

                    ; #75515: <==closure== 55116 (pos)
                    (Pb_survivorat_s_p9)

                    ; #87932: origin
                    (Bd_survivorat_s_p9)

                    ; #11654: <==negation-removal== 75515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #13690: <==negation-removal== 36929 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #25942: <==negation-removal== 15631 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #36529: <==negation-removal== 34114 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #52106: <==negation-removal== 87932 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #52430: <==negation-removal== 55116 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #57083: <==negation-removal== 62138 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70711: <==negation-removal== 31391 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #75875: origin
                    (at_a_p3)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #82669: origin
                    (not_at_a_p10)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #82669: origin
                    (not_at_a_p10)

                    ; #97760: origin
                    (at_a_p7)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #82669: origin
                    (not_at_a_p10)

                    ; #98638: origin
                    (at_a_p8)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #82669: origin
                    (not_at_a_p10)

                    ; #88322: origin
                    (at_a_p9)

                    ; #25840: <==negation-removal== 82669 (pos)
                    (not (at_a_p10))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #72151: origin
                    (not_at_a_p11)

                    ; #75875: origin
                    (at_a_p3)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #72151: origin
                    (not_at_a_p11)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #72151: origin
                    (not_at_a_p11)

                    ; #97760: origin
                    (at_a_p7)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #72151: origin
                    (not_at_a_p11)

                    ; #98638: origin
                    (at_a_p8)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #72151: origin
                    (not_at_a_p11)

                    ; #88322: origin
                    (at_a_p9)

                    ; #18861: <==negation-removal== 72151 (pos)
                    (not (at_a_p11))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #60896: origin
                    (at_a_p1)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #25840: origin
                    (at_a_p10)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #18861: origin
                    (at_a_p11)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #36694: origin
                    (at_a_p12)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #36161: origin
                    (at_a_p2)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #75875: origin
                    (at_a_p3)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #42794: origin
                    (at_a_p4)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #62697: origin
                    (at_a_p5)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #15305: origin
                    (at_a_p6)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #97760: origin
                    (at_a_p7)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #98638: origin
                    (at_a_p8)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #10238: origin
                    (not_at_a_p12)

                    ; #88322: origin
                    (at_a_p9)

                    ; #36694: <==negation-removal== 10238 (pos)
                    (not (at_a_p12))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #75875: origin
                    (at_a_p3)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #78016: origin
                    (not_at_a_p1)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #78016: origin
                    (not_at_a_p1)

                    ; #97760: origin
                    (at_a_p7)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #78016: origin
                    (not_at_a_p1)

                    ; #98638: origin
                    (at_a_p8)

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #78016: origin
                    (not_at_a_p1)

                    ; #88322: origin
                    (at_a_p9)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #60896: <==negation-removal== 78016 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #75875: origin
                    (at_a_p3)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #83907: origin
                    (not_at_a_p2)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #83907: origin
                    (not_at_a_p2)

                    ; #97760: origin
                    (at_a_p7)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #83907: origin
                    (not_at_a_p2)

                    ; #98638: origin
                    (at_a_p8)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #83907: origin
                    (not_at_a_p2)

                    ; #88322: origin
                    (at_a_p9)

                    ; #36161: <==negation-removal== 83907 (pos)
                    (not (at_a_p2))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #60896: origin
                    (at_a_p1)

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #75875: origin
                    (at_a_p3)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #62697: origin
                    (at_a_p5)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #60573: origin
                    (not_at_a_p3)

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #97760: origin
                    (at_a_p7)

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #98638: origin
                    (at_a_p8)

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #60573: origin
                    (not_at_a_p3)

                    ; #88322: origin
                    (at_a_p9)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #75875: <==negation-removal== 60573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #71749: origin
                    (not_at_a_p4)

                    ; #75875: origin
                    (at_a_p3)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #71749: origin
                    (not_at_a_p4)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #71749: origin
                    (not_at_a_p4)

                    ; #97760: origin
                    (at_a_p7)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #71749: origin
                    (not_at_a_p4)

                    ; #98638: origin
                    (at_a_p8)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #71749: origin
                    (not_at_a_p4)

                    ; #88322: origin
                    (at_a_p9)

                    ; #42794: <==negation-removal== 71749 (pos)
                    (not (at_a_p4))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #60896: origin
                    (at_a_p1)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #25840: origin
                    (at_a_p10)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #18861: origin
                    (at_a_p11)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #36694: origin
                    (at_a_p12)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #36161: origin
                    (at_a_p2)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #75875: origin
                    (at_a_p3)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #42794: origin
                    (at_a_p4)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #62697: origin
                    (at_a_p5)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #15305: origin
                    (at_a_p6)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #97760: origin
                    (at_a_p7)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #98638: origin
                    (at_a_p8)

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #14981: origin
                    (not_at_a_p5)

                    ; #88322: origin
                    (at_a_p9)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #62697: <==negation-removal== 14981 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #63486: origin
                    (not_at_a_p6)

                    ; #75875: origin
                    (at_a_p3)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #63486: origin
                    (not_at_a_p6)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #63486: origin
                    (not_at_a_p6)

                    ; #97760: origin
                    (at_a_p7)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #63486: origin
                    (not_at_a_p6)

                    ; #98638: origin
                    (at_a_p8)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #63486: origin
                    (not_at_a_p6)

                    ; #88322: origin
                    (at_a_p9)

                    ; #15305: <==negation-removal== 63486 (pos)
                    (not (at_a_p6))

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #65781: origin
                    (not_at_a_p7)

                    ; #75875: origin
                    (at_a_p3)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #65781: origin
                    (not_at_a_p7)

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #65781: origin
                    (not_at_a_p7)

                    ; #97760: origin
                    (at_a_p7)

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #65781: origin
                    (not_at_a_p7)

                    ; #98638: origin
                    (at_a_p8)

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #65781: origin
                    (not_at_a_p7)

                    ; #88322: origin
                    (at_a_p9)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #97760: <==negation-removal== 65781 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #60896: origin
                    (at_a_p1)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #75875: origin
                    (at_a_p3)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #62697: origin
                    (at_a_p5)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #90973: origin
                    (not_at_a_p8)

                    ; #97760: origin
                    (at_a_p7)

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #90973: origin
                    (not_at_a_p8)

                    ; #98638: origin
                    (at_a_p8)

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #88322: origin
                    (at_a_p9)

                    ; #90973: origin
                    (not_at_a_p8)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #98638: <==negation-removal== 90973 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #60896: origin
                    (at_a_p1)

                    ; #78016: <==negation-removal== 60896 (pos)
                    (not (not_at_a_p1))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #25840: origin
                    (at_a_p10)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #82669: <==negation-removal== 25840 (pos)
                    (not (not_at_a_p10))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #18861: origin
                    (at_a_p11)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #72151: <==negation-removal== 18861 (pos)
                    (not (not_at_a_p11))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #36694: origin
                    (at_a_p12)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #10238: <==negation-removal== 36694 (pos)
                    (not (not_at_a_p12))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #36161: origin
                    (at_a_p2)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #83907: <==negation-removal== 36161 (pos)
                    (not (not_at_a_p2))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #75875: origin
                    (at_a_p3)

                    ; #60573: <==negation-removal== 75875 (pos)
                    (not (not_at_a_p3))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #42794: origin
                    (at_a_p4)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #71749: <==negation-removal== 42794 (pos)
                    (not (not_at_a_p4))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #62697: origin
                    (at_a_p5)

                    ; #14981: <==negation-removal== 62697 (pos)
                    (not (not_at_a_p5))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #15305: origin
                    (at_a_p6)

                    ; #43364: origin
                    (not_at_a_p9)

                    ; #63486: <==negation-removal== 15305 (pos)
                    (not (not_at_a_p6))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #97760: origin
                    (at_a_p7)

                    ; #65781: <==negation-removal== 97760 (pos)
                    (not (not_at_a_p7))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #98638: origin
                    (at_a_p8)

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))

                    ; #90973: <==negation-removal== 98638 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #43364: origin
                    (not_at_a_p9)

                    ; #88322: origin
                    (at_a_p9)

                    ; #43364: <==negation-removal== 88322 (pos)
                    (not (not_at_a_p9))

                    ; #88322: <==negation-removal== 43364 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #71590: origin
                    (not_at_b_p10)

                    ; #81351: origin
                    (at_b_p1)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #71590: origin
                    (not_at_b_p10)

                    ; #90298: origin
                    (at_b_p3)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #71590: origin
                    (not_at_b_p10)

                    ; #80617: origin
                    (at_b_p5)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #71590: origin
                    (not_at_b_p10)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #25416: <==negation-removal== 71590 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #59764: origin
                    (not_at_b_p11)

                    ; #81351: origin
                    (at_b_p1)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #59764: origin
                    (not_at_b_p11)

                    ; #90298: origin
                    (at_b_p3)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #59764: origin
                    (not_at_b_p11)

                    ; #80617: origin
                    (at_b_p5)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #59764: origin
                    (not_at_b_p11)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #29500: <==negation-removal== 59764 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #81351: origin
                    (at_b_p1)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #88668: origin
                    (not_at_b_p12)

                    ; #90298: origin
                    (at_b_p3)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #80617: origin
                    (at_b_p5)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #88668: origin
                    (not_at_b_p12)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #38485: <==negation-removal== 88668 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #81351: origin
                    (at_b_p1)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #90298: origin
                    (at_b_p3)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #80617: origin
                    (at_b_p5)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #99797: origin
                    (not_at_b_p1)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #81351: <==negation-removal== 99797 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #81351: origin
                    (at_b_p1)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #90298: origin
                    (at_b_p3)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #80617: origin
                    (at_b_p5)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #90475: origin
                    (not_at_b_p2)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #31736: <==negation-removal== 90475 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #81351: origin
                    (at_b_p1)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #90298: origin
                    (at_b_p3)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #80617: origin
                    (at_b_p5)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #95715: origin
                    (not_at_b_p3)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #90298: <==negation-removal== 95715 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #51372: origin
                    (not_at_b_p4)

                    ; #81351: origin
                    (at_b_p1)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #51372: origin
                    (not_at_b_p4)

                    ; #90298: origin
                    (at_b_p3)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: origin
                    (at_b_p4)

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #51372: origin
                    (not_at_b_p4)

                    ; #80617: origin
                    (at_b_p5)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #51372: origin
                    (not_at_b_p4)

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #51372: origin
                    (not_at_b_p4)

                    ; #58175: origin
                    (at_b_p9)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #51572: <==negation-removal== 51372 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #81351: origin
                    (at_b_p1)

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #37216: origin
                    (not_at_b_p5)

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #37216: origin
                    (not_at_b_p5)

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #38485: origin
                    (at_b_p12)

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #37216: origin
                    (not_at_b_p5)

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #90298: origin
                    (at_b_p3)

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #51572: origin
                    (at_b_p4)

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #80617: origin
                    (at_b_p5)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #48420: origin
                    (at_b_p6)

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #37216: origin
                    (not_at_b_p5)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #37216: origin
                    (not_at_b_p5)

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #37216: origin
                    (not_at_b_p5)

                    ; #58175: origin
                    (at_b_p9)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #80617: <==negation-removal== 37216 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #62358: origin
                    (not_at_b_p6)

                    ; #81351: origin
                    (at_b_p1)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #62358: origin
                    (not_at_b_p6)

                    ; #90298: origin
                    (at_b_p3)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #62358: origin
                    (not_at_b_p6)

                    ; #80617: origin
                    (at_b_p5)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #62358: origin
                    (not_at_b_p6)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #48420: <==negation-removal== 62358 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #81351: origin
                    (at_b_p1)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #90298: origin
                    (at_b_p3)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #51572: origin
                    (at_b_p4)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #80617: origin
                    (at_b_p5)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #48420: origin
                    (at_b_p6)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #47128: origin
                    (not_at_b_p7)

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #47128: origin
                    (not_at_b_p7)

                    ; #58175: origin
                    (at_b_p9)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #25523: <==negation-removal== 47128 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #81351: origin
                    (at_b_p1)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #25416: origin
                    (at_b_p10)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #29500: origin
                    (at_b_p11)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #38485: origin
                    (at_b_p12)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #31736: origin
                    (at_b_p2)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #84883: origin
                    (not_at_b_p8)

                    ; #90298: origin
                    (at_b_p3)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #51572: origin
                    (at_b_p4)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #80617: origin
                    (at_b_p5)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #48420: origin
                    (at_b_p6)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #25523: origin
                    (at_b_p7)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #58175: origin
                    (at_b_p9)

                    ; #84883: origin
                    (not_at_b_p8)

                    ; #12632: <==negation-removal== 84883 (pos)
                    (not (at_b_p8))

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #81351: origin
                    (at_b_p1)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #99797: <==negation-removal== 81351 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #25416: origin
                    (at_b_p10)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #71590: <==negation-removal== 25416 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #29500: origin
                    (at_b_p11)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #59764: <==negation-removal== 29500 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #38485: origin
                    (at_b_p12)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #88668: <==negation-removal== 38485 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #31736: origin
                    (at_b_p2)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #90475: <==negation-removal== 31736 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #90298: origin
                    (at_b_p3)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #95715: <==negation-removal== 90298 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #51572: origin
                    (at_b_p4)

                    ; #51372: <==negation-removal== 51572 (pos)
                    (not (not_at_b_p4))

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #80617: origin
                    (at_b_p5)

                    ; #37216: <==negation-removal== 80617 (pos)
                    (not (not_at_b_p5))

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #48420: origin
                    (at_b_p6)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #62358: <==negation-removal== 48420 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #25523: origin
                    (at_b_p7)

                    ; #47128: <==negation-removal== 25523 (pos)
                    (not (not_at_b_p7))

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #12632: origin
                    (at_b_p8)

                    ; #15740: origin
                    (not_at_b_p9)

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))

                    ; #84883: <==negation-removal== 12632 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #15740: origin
                    (not_at_b_p9)

                    ; #58175: origin
                    (at_b_p9)

                    ; #15740: <==negation-removal== 58175 (pos)
                    (not (not_at_b_p9))

                    ; #58175: <==negation-removal== 15740 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #56726: origin
                    (at_c_p1)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #35641: origin
                    (at_c_p10)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #54664: origin
                    (at_c_p11)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #75102: origin
                    (at_c_p12)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #32456: origin
                    (at_c_p2)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #29621: origin
                    (not_at_c_p10)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #33948: origin
                    (at_c_p4)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #56711: origin
                    (at_c_p5)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #29621: origin
                    (not_at_c_p10)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #29621: origin
                    (not_at_c_p10)

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #29621: origin
                    (not_at_c_p10)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #35641: <==negation-removal== 29621 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #56726: origin
                    (at_c_p1)

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #54664: origin
                    (at_c_p11)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #75102: origin
                    (at_c_p12)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #56711: origin
                    (at_c_p5)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #51620: origin
                    (not_at_c_p11)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #51620: origin
                    (not_at_c_p11)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #54664: <==negation-removal== 51620 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #56726: origin
                    (at_c_p1)

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #54664: origin
                    (at_c_p11)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #75102: origin
                    (at_c_p12)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #56711: origin
                    (at_c_p5)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #41962: origin
                    (not_at_c_p12)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #41962: origin
                    (not_at_c_p12)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #75102: <==negation-removal== 41962 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #56726: origin
                    (at_c_p1)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #54664: origin
                    (at_c_p11)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #75102: origin
                    (at_c_p12)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #56711: origin
                    (at_c_p5)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #76517: origin
                    (at_c_p8)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #73593: origin
                    (at_c_p9)

                    ; #83038: origin
                    (not_at_c_p1)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #56726: <==negation-removal== 83038 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #56726: origin
                    (at_c_p1)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #35641: origin
                    (at_c_p10)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #54664: origin
                    (at_c_p11)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #75102: origin
                    (at_c_p12)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #32456: origin
                    (at_c_p2)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #29502: origin
                    (at_c_p3)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #33948: origin
                    (at_c_p4)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #56711: origin
                    (at_c_p5)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #23493: origin
                    (not_at_c_p2)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #23493: origin
                    (not_at_c_p2)

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #23493: origin
                    (not_at_c_p2)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #32456: <==negation-removal== 23493 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #56726: origin
                    (at_c_p1)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #54664: origin
                    (at_c_p11)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #57228: origin
                    (not_at_c_p3)

                    ; #75102: origin
                    (at_c_p12)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #56711: origin
                    (at_c_p5)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #57228: origin
                    (not_at_c_p3)

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #57228: origin
                    (not_at_c_p3)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #57228: origin
                    (not_at_c_p3)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #29502: <==negation-removal== 57228 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #56726: origin
                    (at_c_p1)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #54664: origin
                    (at_c_p11)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #75102: origin
                    (at_c_p12)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #56711: origin
                    (at_c_p5)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #76517: origin
                    (at_c_p8)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #73593: origin
                    (at_c_p9)

                    ; #80030: origin
                    (not_at_c_p4)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #33948: <==negation-removal== 80030 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #56726: origin
                    (at_c_p1)

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #54664: origin
                    (at_c_p11)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #75102: origin
                    (at_c_p12)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #56711: origin
                    (at_c_p5)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #51515: origin
                    (not_at_c_p5)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #51515: origin
                    (not_at_c_p5)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #56711: <==negation-removal== 51515 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #56726: origin
                    (at_c_p1)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #54664: origin
                    (at_c_p11)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #59986: origin
                    (not_at_c_p6)

                    ; #75102: origin
                    (at_c_p12)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #56711: origin
                    (at_c_p5)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #59986: origin
                    (not_at_c_p6)

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #59986: origin
                    (not_at_c_p6)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #59986: origin
                    (not_at_c_p6)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #17762: <==negation-removal== 59986 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #56726: origin
                    (at_c_p1)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #35641: origin
                    (at_c_p10)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #54664: origin
                    (at_c_p11)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #75102: origin
                    (at_c_p12)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #32456: origin
                    (at_c_p2)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #29502: origin
                    (at_c_p3)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #33948: origin
                    (at_c_p4)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #56711: origin
                    (at_c_p5)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #17762: origin
                    (at_c_p6)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #41171: origin
                    (not_at_c_p7)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #76517: origin
                    (at_c_p8)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #41171: origin
                    (not_at_c_p7)

                    ; #73593: origin
                    (at_c_p9)

                    ; #12268: <==negation-removal== 41171 (pos)
                    (not (at_c_p7))

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #56726: origin
                    (at_c_p1)

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #35641: origin
                    (at_c_p10)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #54664: origin
                    (at_c_p11)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #75102: origin
                    (at_c_p12)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #32456: origin
                    (at_c_p2)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #29502: origin
                    (at_c_p3)

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #33948: origin
                    (at_c_p4)

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #56711: origin
                    (at_c_p5)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #17762: origin
                    (at_c_p6)

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #16518: origin
                    (not_at_c_p8)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #16518: origin
                    (not_at_c_p8)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #76517: <==negation-removal== 16518 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #56726: origin
                    (at_c_p1)

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))

                    ; #83038: <==negation-removal== 56726 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #35641: origin
                    (at_c_p10)

                    ; #29621: <==negation-removal== 35641 (pos)
                    (not (not_at_c_p10))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #54664: origin
                    (at_c_p11)

                    ; #51620: <==negation-removal== 54664 (pos)
                    (not (not_at_c_p11))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #75102: origin
                    (at_c_p12)

                    ; #41962: <==negation-removal== 75102 (pos)
                    (not (not_at_c_p12))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #32456: origin
                    (at_c_p2)

                    ; #23493: <==negation-removal== 32456 (pos)
                    (not (not_at_c_p2))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #29502: origin
                    (at_c_p3)

                    ; #57228: <==negation-removal== 29502 (pos)
                    (not (not_at_c_p3))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #33948: origin
                    (at_c_p4)

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))

                    ; #80030: <==negation-removal== 33948 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #56711: origin
                    (at_c_p5)

                    ; #51515: <==negation-removal== 56711 (pos)
                    (not (not_at_c_p5))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #17762: origin
                    (at_c_p6)

                    ; #59986: <==negation-removal== 17762 (pos)
                    (not (not_at_c_p6))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #12268: origin
                    (at_c_p7)

                    ; #15066: origin
                    (not_at_c_p9)

                    ; #41171: <==negation-removal== 12268 (pos)
                    (not (not_at_c_p7))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #76517: origin
                    (at_c_p8)

                    ; #16518: <==negation-removal== 76517 (pos)
                    (not (not_at_c_p8))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #15066: origin
                    (not_at_c_p9)

                    ; #73593: origin
                    (at_c_p9)

                    ; #15066: <==negation-removal== 73593 (pos)
                    (not (not_at_c_p9))

                    ; #73593: <==negation-removal== 15066 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #60395: origin
                    (at_d_p1)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #48583: origin
                    (at_d_p10)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #64961: origin
                    (at_d_p11)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #30998: origin
                    (at_d_p2)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #41303: origin
                    (at_d_p3)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #62568: origin
                    (at_d_p4)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #69277: origin
                    (at_d_p5)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #46067: origin
                    (at_d_p6)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #35307: origin
                    (at_d_p7)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #62282: origin
                    (at_d_p8)

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10))
        :effect (and
                    ; #27924: origin
                    (not_at_d_p10)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #48583: <==negation-removal== 27924 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11))
        :effect (and
                    ; #73080: origin
                    (not_at_d_p11)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_d_p11))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #73080: origin
                    (not_at_d_p11)

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11))
        :effect (and
                    ; #73080: origin
                    (not_at_d_p11)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #64961: <==negation-removal== 73080 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #60395: origin
                    (at_d_p1)

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #48583: origin
                    (at_d_p10)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #64961: origin
                    (at_d_p11)

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #38097: origin
                    (not_at_d_p12)

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #41303: origin
                    (at_d_p3)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #62568: origin
                    (at_d_p4)

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #69277: origin
                    (at_d_p5)

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #46067: origin
                    (at_d_p6)

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #38097: origin
                    (not_at_d_p12)

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #62282: origin
                    (at_d_p8)

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #38097: origin
                    (not_at_d_p12)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #90950: <==negation-removal== 38097 (pos)
                    (not (at_d_p12))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1))
        :effect (and
                    ; #86723: origin
                    (not_at_d_p1)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #80170: origin
                    (at_d_p9)

                    ; #86723: origin
                    (not_at_d_p1)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #60395: <==negation-removal== 86723 (pos)
                    (not (at_d_p1))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #82796: origin
                    (not_at_d_p2)

                    ; #90950: origin
                    (at_d_p12)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (at_d_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (at_d_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #80170: origin
                    (at_d_p9)

                    ; #82796: origin
                    (not_at_d_p2)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #30998: <==negation-removal== 82796 (pos)
                    (not (at_d_p2))))

    (:action move_d_p3_p1
        :precondition (and (at_d_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #60395: origin
                    (at_d_p1)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #48583: origin
                    (at_d_p10)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #64961: origin
                    (at_d_p11)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #30998: origin
                    (at_d_p2)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #41303: origin
                    (at_d_p3)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #62568: origin
                    (at_d_p4)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #69277: origin
                    (at_d_p5)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #46067: origin
                    (at_d_p6)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #35307: origin
                    (at_d_p7)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #62282: origin
                    (at_d_p8)

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #29280: origin
                    (not_at_d_p3)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #41303: <==negation-removal== 29280 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_d_p4))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #64051: origin
                    (not_at_d_p4)

                    ; #64961: origin
                    (at_d_p11)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #64051: origin
                    (not_at_d_p4)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #64051: origin
                    (not_at_d_p4)

                    ; #69277: origin
                    (at_d_p5)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #64051: origin
                    (not_at_d_p4)

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4))
        :effect (and
                    ; #64051: origin
                    (not_at_d_p4)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #62568: <==negation-removal== 64051 (pos)
                    (not (at_d_p4))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5))
        :effect (and
                    ; #69505: origin
                    (not_at_d_p5)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #69505: origin
                    (not_at_d_p5)

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #69505: origin
                    (not_at_d_p5)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #69277: <==negation-removal== 69505 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #78081: origin
                    (not_at_d_p6)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #78081: origin
                    (not_at_d_p6)

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #78081: origin
                    (not_at_d_p6)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #46067: <==negation-removal== 78081 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #90546: origin
                    (not_at_d_p7)

                    ; #90950: origin
                    (at_d_p12)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #80170: origin
                    (at_d_p9)

                    ; #90546: origin
                    (not_at_d_p7)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #35307: <==negation-removal== 90546 (pos)
                    (not (at_d_p7))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #60395: origin
                    (at_d_p1)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8))
        :effect (and
                    ; #48583: origin
                    (at_d_p10)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_d_p8))
        :effect (and
                    ; #64961: origin
                    (at_d_p11)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #71087: origin
                    (not_at_d_p8)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #30998: origin
                    (at_d_p2)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #41303: origin
                    (at_d_p3)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #62568: origin
                    (at_d_p4)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #69277: origin
                    (at_d_p5)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #46067: origin
                    (at_d_p6)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #35307: origin
                    (at_d_p7)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #62282: origin
                    (at_d_p8)

                    ; #71087: origin
                    (not_at_d_p8)

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #71087: origin
                    (not_at_d_p8)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #62282: <==negation-removal== 71087 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #60395: origin
                    (at_d_p1)

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))

                    ; #86723: <==negation-removal== 60395 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #48583: origin
                    (at_d_p10)

                    ; #27924: <==negation-removal== 48583 (pos)
                    (not (not_at_d_p10))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #64961: origin
                    (at_d_p11)

                    ; #73080: <==negation-removal== 64961 (pos)
                    (not (not_at_d_p11))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #90950: origin
                    (at_d_p12)

                    ; #38097: <==negation-removal== 90950 (pos)
                    (not (not_at_d_p12))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #30998: origin
                    (at_d_p2)

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))

                    ; #82796: <==negation-removal== 30998 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #41303: origin
                    (at_d_p3)

                    ; #29280: <==negation-removal== 41303 (pos)
                    (not (not_at_d_p3))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #62568: origin
                    (at_d_p4)

                    ; #64051: <==negation-removal== 62568 (pos)
                    (not (not_at_d_p4))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #69277: origin
                    (at_d_p5)

                    ; #69505: <==negation-removal== 69277 (pos)
                    (not (not_at_d_p5))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #46067: origin
                    (at_d_p6)

                    ; #78081: <==negation-removal== 46067 (pos)
                    (not (not_at_d_p6))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #35307: origin
                    (at_d_p7)

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))

                    ; #90546: <==negation-removal== 35307 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #62282: origin
                    (at_d_p8)

                    ; #71087: <==negation-removal== 62282 (pos)
                    (not (not_at_d_p8))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9))
        :effect (and
                    ; #25018: origin
                    (not_at_d_p9)

                    ; #80170: origin
                    (at_d_p9)

                    ; #25018: <==negation-removal== 80170 (pos)
                    (not (not_at_d_p9))

                    ; #80170: <==negation-removal== 25018 (pos)
                    (not (at_d_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15186: origin
                    (checked_p10)

                    ; #22996: <==commonly_known== 80955 (neg)
                    (Pc_checked_p10)

                    ; #31190: <==commonly_known== 80955 (neg)
                    (Pb_checked_p10)

                    ; #55917: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #56227: <==commonly_known== 15186 (pos)
                    (Ba_checked_p10)

                    ; #58864: <==closure== 55917 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #59281: <==commonly_known== 15186 (pos)
                    (Bd_checked_p10)

                    ; #61019: <==commonly_known== 15186 (pos)
                    (Bc_checked_p10)

                    ; #71476: <==closure== 90302 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #77167: <==commonly_known== 80955 (neg)
                    (Pa_checked_p10)

                    ; #80900: <==commonly_known== 80955 (neg)
                    (Pd_checked_p10)

                    ; #83027: <==commonly_known== 15186 (pos)
                    (Bb_checked_p10)

                    ; #90302: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #11141: <==negation-removal== 61019 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27419: <==uncertain_firing== 90302 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #27746: <==negation-removal== 77167 (pos)
                    (not (Ba_not_checked_p10))

                    ; #28289: <==negation-removal== 31190 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30255: <==negation-removal== 80900 (pos)
                    (not (Bd_not_checked_p10))

                    ; #30300: <==negation-removal== 56227 (pos)
                    (not (Pa_not_checked_p10))

                    ; #42364: <==uncertain_firing== 55917 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #42411: <==negation-removal== 22996 (pos)
                    (not (Bc_not_checked_p10))

                    ; #47501: <==uncertain_firing== 58864 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #49364: <==negation-removal== 71476 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #56300: <==uncertain_firing== 71476 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #57219: <==negation-removal== 59281 (pos)
                    (not (Pd_not_checked_p10))

                    ; #63482: <==negation-removal== 83027 (pos)
                    (not (Pb_not_checked_p10))

                    ; #69682: <==negation-removal== 58864 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #80955: <==negation-removal== 15186 (pos)
                    (not (not_checked_p10))

                    ; #84373: <==negation-removal== 55917 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #85010: <==negation-removal== 90302 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11487: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #21095: <==closure== 11487 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #26962: <==commonly_known== 29074 (pos)
                    (Ba_checked_p11)

                    ; #29074: origin
                    (checked_p11)

                    ; #29118: <==commonly_known== 14939 (neg)
                    (Pb_checked_p11)

                    ; #52515: <==commonly_known== 14939 (neg)
                    (Pd_checked_p11)

                    ; #55096: <==commonly_known== 29074 (pos)
                    (Bd_checked_p11)

                    ; #57895: <==commonly_known== 14939 (neg)
                    (Pa_checked_p11)

                    ; #83499: <==commonly_known== 29074 (pos)
                    (Bb_checked_p11)

                    ; #83855: <==closure== 86472 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #84843: <==commonly_known== 14939 (neg)
                    (Pc_checked_p11)

                    ; #86472: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #90207: <==commonly_known== 29074 (pos)
                    (Bc_checked_p11)

                    ; #14939: <==negation-removal== 29074 (pos)
                    (not (not_checked_p11))

                    ; #18851: <==negation-removal== 84843 (pos)
                    (not (Bc_not_checked_p11))

                    ; #19328: <==negation-removal== 83499 (pos)
                    (not (Pb_not_checked_p11))

                    ; #22033: <==negation-removal== 52515 (pos)
                    (not (Bd_not_checked_p11))

                    ; #24769: <==negation-removal== 29118 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24970: <==negation-removal== 57895 (pos)
                    (not (Ba_not_checked_p11))

                    ; #26900: <==uncertain_firing== 86472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #31977: <==negation-removal== 55096 (pos)
                    (not (Pd_not_checked_p11))

                    ; #39417: <==negation-removal== 26962 (pos)
                    (not (Pa_not_checked_p11))

                    ; #40668: <==uncertain_firing== 83855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #48913: <==negation-removal== 83855 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #63459: <==negation-removal== 90207 (pos)
                    (not (Pc_not_checked_p11))

                    ; #65119: <==negation-removal== 11487 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #75585: <==negation-removal== 86472 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #79314: <==negation-removal== 21095 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #89272: <==uncertain_firing== 21095 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #92596: <==uncertain_firing== 11487 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11811: <==closure== 31864 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #15334: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #20682: <==commonly_known== 17719 (neg)
                    (Pb_checked_p12)

                    ; #23834: <==commonly_known== 63926 (pos)
                    (Bd_checked_p12)

                    ; #31864: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #33874: <==commonly_known== 17719 (neg)
                    (Pa_checked_p12)

                    ; #50219: <==commonly_known== 17719 (neg)
                    (Pc_checked_p12)

                    ; #53960: <==closure== 15334 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #59605: <==commonly_known== 63926 (pos)
                    (Ba_checked_p12)

                    ; #63926: origin
                    (checked_p12)

                    ; #72279: <==commonly_known== 63926 (pos)
                    (Bc_checked_p12)

                    ; #89990: <==commonly_known== 63926 (pos)
                    (Bb_checked_p12)

                    ; #99632: <==commonly_known== 17719 (neg)
                    (Pd_checked_p12)

                    ; #10591: <==negation-removal== 15334 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #17719: <==negation-removal== 63926 (pos)
                    (not (not_checked_p12))

                    ; #22550: <==negation-removal== 99632 (pos)
                    (not (Bd_not_checked_p12))

                    ; #24927: <==negation-removal== 50219 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27133: <==negation-removal== 23834 (pos)
                    (not (Pd_not_checked_p12))

                    ; #29909: <==uncertain_firing== 53960 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #42472: <==uncertain_firing== 11811 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #50965: <==negation-removal== 72279 (pos)
                    (not (Pc_not_checked_p12))

                    ; #53826: <==negation-removal== 33874 (pos)
                    (not (Ba_not_checked_p12))

                    ; #54080: <==uncertain_firing== 31864 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #55856: <==negation-removal== 89990 (pos)
                    (not (Pb_not_checked_p12))

                    ; #62181: <==negation-removal== 11811 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #70487: <==negation-removal== 20682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #82284: <==negation-removal== 53960 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #83190: <==uncertain_firing== 15334 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #86826: <==negation-removal== 31864 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #88299: <==negation-removal== 59605 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12832: <==commonly_known== 14611 (pos)
                    (Bd_checked_p1)

                    ; #14611: origin
                    (checked_p1)

                    ; #15685: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #16065: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #21837: <==commonly_known== 12798 (neg)
                    (Pd_checked_p1)

                    ; #33021: <==closure== 15685 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #42692: <==commonly_known== 14611 (pos)
                    (Bc_checked_p1)

                    ; #43944: <==commonly_known== 14611 (pos)
                    (Bb_checked_p1)

                    ; #47803: <==commonly_known== 12798 (neg)
                    (Pc_checked_p1)

                    ; #54155: <==commonly_known== 12798 (neg)
                    (Pa_checked_p1)

                    ; #70758: <==commonly_known== 12798 (neg)
                    (Pb_checked_p1)

                    ; #76314: <==closure== 16065 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #86784: <==commonly_known== 14611 (pos)
                    (Ba_checked_p1)

                    ; #11787: <==negation-removal== 76314 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #12798: <==negation-removal== 14611 (pos)
                    (not (not_checked_p1))

                    ; #13643: <==negation-removal== 47803 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15042: <==negation-removal== 42692 (pos)
                    (not (Pc_not_checked_p1))

                    ; #21228: <==negation-removal== 16065 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #34610: <==uncertain_firing== 33021 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #38224: <==negation-removal== 70758 (pos)
                    (not (Bb_not_checked_p1))

                    ; #43298: <==negation-removal== 15685 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #51705: <==uncertain_firing== 15685 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #52012: <==uncertain_firing== 16065 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #54363: <==uncertain_firing== 76314 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #56101: <==negation-removal== 43944 (pos)
                    (not (Pb_not_checked_p1))

                    ; #71923: <==negation-removal== 54155 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73670: <==negation-removal== 33021 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #76894: <==negation-removal== 86784 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83232: <==negation-removal== 21837 (pos)
                    (not (Bd_not_checked_p1))

                    ; #88210: <==negation-removal== 12832 (pos)
                    (not (Pd_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10275: <==commonly_known== 83246 (neg)
                    (Pa_checked_p2)

                    ; #14073: <==commonly_known== 82831 (pos)
                    (Bd_checked_p2)

                    ; #15743: <==commonly_known== 83246 (neg)
                    (Pc_checked_p2)

                    ; #22610: <==commonly_known== 82831 (pos)
                    (Ba_checked_p2)

                    ; #47204: <==commonly_known== 83246 (neg)
                    (Pb_checked_p2)

                    ; #55843: <==closure== 66922 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #59708: <==commonly_known== 83246 (neg)
                    (Pd_checked_p2)

                    ; #61182: <==commonly_known== 82831 (pos)
                    (Bb_checked_p2)

                    ; #66171: <==closure== 67452 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #66922: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #67452: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #82094: <==commonly_known== 82831 (pos)
                    (Bc_checked_p2)

                    ; #82831: origin
                    (checked_p2)

                    ; #14759: <==negation-removal== 67452 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #17889: <==negation-removal== 47204 (pos)
                    (not (Bb_not_checked_p2))

                    ; #22339: <==negation-removal== 66922 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #23735: <==negation-removal== 22610 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24008: <==negation-removal== 61182 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31070: <==uncertain_firing== 67452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37494: <==negation-removal== 66171 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #40736: <==negation-removal== 82094 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43793: <==negation-removal== 59708 (pos)
                    (not (Bd_not_checked_p2))

                    ; #45550: <==uncertain_firing== 55843 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #51213: <==uncertain_firing== 66171 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #53371: <==negation-removal== 15743 (pos)
                    (not (Bc_not_checked_p2))

                    ; #71523: <==negation-removal== 55843 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83246: <==negation-removal== 82831 (pos)
                    (not (not_checked_p2))

                    ; #83725: <==negation-removal== 10275 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87546: <==negation-removal== 14073 (pos)
                    (not (Pd_not_checked_p2))

                    ; #90752: <==uncertain_firing== 66922 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16247: <==closure== 84781 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #32484: <==commonly_known== 51222 (pos)
                    (Bc_checked_p3)

                    ; #32524: <==commonly_known== 58602 (neg)
                    (Pa_checked_p3)

                    ; #36758: <==commonly_known== 51222 (pos)
                    (Ba_checked_p3)

                    ; #51222: origin
                    (checked_p3)

                    ; #60654: <==commonly_known== 51222 (pos)
                    (Bb_checked_p3)

                    ; #61154: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #68065: <==commonly_known== 58602 (neg)
                    (Pc_checked_p3)

                    ; #75980: <==commonly_known== 51222 (pos)
                    (Bd_checked_p3)

                    ; #80132: <==commonly_known== 58602 (neg)
                    (Pd_checked_p3)

                    ; #84781: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #85179: <==closure== 61154 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #96912: <==commonly_known== 58602 (neg)
                    (Pb_checked_p3)

                    ; #12831: <==negation-removal== 96912 (pos)
                    (not (Bb_not_checked_p3))

                    ; #16966: <==negation-removal== 16247 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #23265: <==uncertain_firing== 16247 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #33931: <==negation-removal== 60654 (pos)
                    (not (Pb_not_checked_p3))

                    ; #38956: <==uncertain_firing== 85179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #40207: <==negation-removal== 36758 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45338: <==negation-removal== 80132 (pos)
                    (not (Bd_not_checked_p3))

                    ; #48551: <==negation-removal== 68065 (pos)
                    (not (Bc_not_checked_p3))

                    ; #58602: <==negation-removal== 51222 (pos)
                    (not (not_checked_p3))

                    ; #73532: <==negation-removal== 61154 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78274: <==uncertain_firing== 84781 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #78821: <==uncertain_firing== 61154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #86675: <==negation-removal== 32484 (pos)
                    (not (Pc_not_checked_p3))

                    ; #86860: <==negation-removal== 84781 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #87053: <==negation-removal== 85179 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #89008: <==negation-removal== 75980 (pos)
                    (not (Pd_not_checked_p3))

                    ; #89611: <==negation-removal== 32524 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14084: <==commonly_known== 47551 (pos)
                    (Bb_checked_p4)

                    ; #14181: <==commonly_known== 32973 (neg)
                    (Pa_checked_p4)

                    ; #20118: <==commonly_known== 32973 (neg)
                    (Pd_checked_p4)

                    ; #30803: <==commonly_known== 47551 (pos)
                    (Bd_checked_p4)

                    ; #32017: <==commonly_known== 47551 (pos)
                    (Bc_checked_p4)

                    ; #35276: <==closure== 62424 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #35581: <==commonly_known== 32973 (neg)
                    (Pc_checked_p4)

                    ; #37478: <==closure== 74849 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #38246: <==commonly_known== 47551 (pos)
                    (Ba_checked_p4)

                    ; #47551: origin
                    (checked_p4)

                    ; #62424: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #74849: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #88990: <==commonly_known== 32973 (neg)
                    (Pb_checked_p4)

                    ; #19890: <==negation-removal== 37478 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #21297: <==uncertain_firing== 74849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #21309: <==negation-removal== 32017 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22270: <==negation-removal== 14181 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32973: <==negation-removal== 47551 (pos)
                    (not (not_checked_p4))

                    ; #42187: <==negation-removal== 14084 (pos)
                    (not (Pb_not_checked_p4))

                    ; #48440: <==uncertain_firing== 35276 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #52158: <==negation-removal== 62424 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #59414: <==uncertain_firing== 62424 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #60720: <==negation-removal== 88990 (pos)
                    (not (Bb_not_checked_p4))

                    ; #61109: <==negation-removal== 35276 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #62382: <==uncertain_firing== 37478 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #66899: <==negation-removal== 30803 (pos)
                    (not (Pd_not_checked_p4))

                    ; #71429: <==negation-removal== 74849 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79146: <==negation-removal== 20118 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80503: <==negation-removal== 35581 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85146: <==negation-removal== 38246 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #23843: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #29155: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #31042: <==commonly_known== 45401 (pos)
                    (Ba_checked_p5)

                    ; #43560: <==closure== 23843 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #44170: <==commonly_known== 45401 (pos)
                    (Bb_checked_p5)

                    ; #44650: <==commonly_known== 11612 (neg)
                    (Pa_checked_p5)

                    ; #45347: <==commonly_known== 11612 (neg)
                    (Pc_checked_p5)

                    ; #45401: origin
                    (checked_p5)

                    ; #60444: <==closure== 29155 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #66746: <==commonly_known== 45401 (pos)
                    (Bc_checked_p5)

                    ; #71762: <==commonly_known== 11612 (neg)
                    (Pd_checked_p5)

                    ; #76573: <==commonly_known== 45401 (pos)
                    (Bd_checked_p5)

                    ; #81004: <==commonly_known== 11612 (neg)
                    (Pb_checked_p5)

                    ; #11582: <==negation-removal== 76573 (pos)
                    (not (Pd_not_checked_p5))

                    ; #11612: <==negation-removal== 45401 (pos)
                    (not (not_checked_p5))

                    ; #12961: <==negation-removal== 43560 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #13210: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14884: <==negation-removal== 71762 (pos)
                    (not (Bd_not_checked_p5))

                    ; #33232: <==uncertain_firing== 29155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #34640: <==uncertain_firing== 43560 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #43017: <==negation-removal== 44650 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50463: <==negation-removal== 66746 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52261: <==negation-removal== 31042 (pos)
                    (not (Pa_not_checked_p5))

                    ; #58701: <==negation-removal== 60444 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67035: <==negation-removal== 29155 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #71223: <==uncertain_firing== 60444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #78888: <==negation-removal== 81004 (pos)
                    (not (Bb_not_checked_p5))

                    ; #79426: <==negation-removal== 23843 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #83958: <==negation-removal== 45347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #88577: <==uncertain_firing== 23843 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10449: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #11291: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #20129: <==commonly_known== 65911 (neg)
                    (Pb_checked_p6)

                    ; #22918: origin
                    (checked_p6)

                    ; #44430: <==commonly_known== 22918 (pos)
                    (Bd_checked_p6)

                    ; #49892: <==closure== 10449 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #50108: <==commonly_known== 65911 (neg)
                    (Pc_checked_p6)

                    ; #55011: <==commonly_known== 65911 (neg)
                    (Pd_checked_p6)

                    ; #59132: <==commonly_known== 22918 (pos)
                    (Ba_checked_p6)

                    ; #62967: <==commonly_known== 22918 (pos)
                    (Bb_checked_p6)

                    ; #79123: <==commonly_known== 65911 (neg)
                    (Pa_checked_p6)

                    ; #80425: <==closure== 11291 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #88981: <==commonly_known== 22918 (pos)
                    (Bc_checked_p6)

                    ; #21231: <==negation-removal== 59132 (pos)
                    (not (Pa_not_checked_p6))

                    ; #25964: <==uncertain_firing== 80425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #33607: <==negation-removal== 20129 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37529: <==uncertain_firing== 11291 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #37879: <==negation-removal== 80425 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #40624: <==uncertain_firing== 49892 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #44458: <==negation-removal== 50108 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45178: <==negation-removal== 62967 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52967: <==negation-removal== 11291 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #54843: <==negation-removal== 10449 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #63818: <==negation-removal== 44430 (pos)
                    (not (Pd_not_checked_p6))

                    ; #65911: <==negation-removal== 22918 (pos)
                    (not (not_checked_p6))

                    ; #70035: <==negation-removal== 55011 (pos)
                    (not (Bd_not_checked_p6))

                    ; #82939: <==negation-removal== 49892 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #85802: <==negation-removal== 88981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87525: <==uncertain_firing== 10449 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #90619: <==negation-removal== 79123 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10793: <==closure== 31116 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #11834: <==closure== 49951 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #14454: <==commonly_known== 56906 (neg)
                    (Pb_checked_p7)

                    ; #29220: <==commonly_known== 48390 (pos)
                    (Bc_checked_p7)

                    ; #30328: <==commonly_known== 56906 (neg)
                    (Pd_checked_p7)

                    ; #31116: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48390: origin
                    (checked_p7)

                    ; #49951: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #65444: <==commonly_known== 56906 (neg)
                    (Pc_checked_p7)

                    ; #66733: <==commonly_known== 48390 (pos)
                    (Bb_checked_p7)

                    ; #75057: <==commonly_known== 48390 (pos)
                    (Bd_checked_p7)

                    ; #80820: <==commonly_known== 56906 (neg)
                    (Pa_checked_p7)

                    ; #84284: <==commonly_known== 48390 (pos)
                    (Ba_checked_p7)

                    ; #11356: <==negation-removal== 30328 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16681: <==uncertain_firing== 11834 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #21974: <==uncertain_firing== 10793 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #27897: <==negation-removal== 11834 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #34383: <==negation-removal== 84284 (pos)
                    (not (Pa_not_checked_p7))

                    ; #41770: <==negation-removal== 10793 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #45804: <==uncertain_firing== 49951 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46061: <==negation-removal== 80820 (pos)
                    (not (Ba_not_checked_p7))

                    ; #51910: <==uncertain_firing== 31116 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #52364: <==negation-removal== 49951 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #56235: <==negation-removal== 66733 (pos)
                    (not (Pb_not_checked_p7))

                    ; #56906: <==negation-removal== 48390 (pos)
                    (not (not_checked_p7))

                    ; #66462: <==negation-removal== 14454 (pos)
                    (not (Bb_not_checked_p7))

                    ; #69840: <==negation-removal== 29220 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73398: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p7))

                    ; #73561: <==negation-removal== 31116 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #74355: <==negation-removal== 65444 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10202: <==commonly_known== 83163 (neg)
                    (Pc_checked_p8)

                    ; #16213: <==commonly_known== 83163 (neg)
                    (Pb_checked_p8)

                    ; #24600: <==commonly_known== 66693 (pos)
                    (Bb_checked_p8)

                    ; #29140: <==commonly_known== 83163 (neg)
                    (Pd_checked_p8)

                    ; #38060: <==closure== 38164 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #38164: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #48848: <==commonly_known== 83163 (neg)
                    (Pa_checked_p8)

                    ; #61699: <==commonly_known== 66693 (pos)
                    (Bc_checked_p8)

                    ; #66693: origin
                    (checked_p8)

                    ; #69738: <==commonly_known== 66693 (pos)
                    (Bd_checked_p8)

                    ; #74816: <==closure== 93608 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #76363: <==commonly_known== 66693 (pos)
                    (Ba_checked_p8)

                    ; #93608: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #11816: <==negation-removal== 76363 (pos)
                    (not (Pa_not_checked_p8))

                    ; #16264: <==negation-removal== 24600 (pos)
                    (not (Pb_not_checked_p8))

                    ; #24854: <==uncertain_firing== 38164 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #46140: <==negation-removal== 38164 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #48148: <==negation-removal== 69738 (pos)
                    (not (Pd_not_checked_p8))

                    ; #49489: <==negation-removal== 10202 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50259: <==negation-removal== 29140 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51942: <==negation-removal== 61699 (pos)
                    (not (Pc_not_checked_p8))

                    ; #61832: <==negation-removal== 74816 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #67993: <==negation-removal== 93608 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #68160: <==uncertain_firing== 38060 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #70955: <==negation-removal== 48848 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75990: <==uncertain_firing== 93608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #76762: <==negation-removal== 38060 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #81551: <==uncertain_firing== 74816 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #83163: <==negation-removal== 66693 (pos)
                    (not (not_checked_p8))

                    ; #84087: <==negation-removal== 16213 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10157: <==commonly_known== 44618 (neg)
                    (Pd_checked_p9)

                    ; #14637: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #20074: <==commonly_known== 44618 (neg)
                    (Pc_checked_p9)

                    ; #34465: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35158: <==commonly_known== 37743 (pos)
                    (Bc_checked_p9)

                    ; #35347: <==commonly_known== 37743 (pos)
                    (Ba_checked_p9)

                    ; #37743: origin
                    (checked_p9)

                    ; #42173: <==commonly_known== 44618 (neg)
                    (Pb_checked_p9)

                    ; #53135: <==closure== 34465 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #61586: <==commonly_known== 44618 (neg)
                    (Pa_checked_p9)

                    ; #62200: <==closure== 14637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #67365: <==commonly_known== 37743 (pos)
                    (Bd_checked_p9)

                    ; #90786: <==commonly_known== 37743 (pos)
                    (Bb_checked_p9)

                    ; #16748: <==uncertain_firing== 62200 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #16902: <==negation-removal== 20074 (pos)
                    (not (Bc_not_checked_p9))

                    ; #18539: <==negation-removal== 35158 (pos)
                    (not (Pc_not_checked_p9))

                    ; #21711: <==negation-removal== 34465 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #28895: <==uncertain_firing== 14637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #36856: <==negation-removal== 90786 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38059: <==negation-removal== 67365 (pos)
                    (not (Pd_not_checked_p9))

                    ; #42257: <==negation-removal== 61586 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44618: <==negation-removal== 37743 (pos)
                    (not (not_checked_p9))

                    ; #51614: <==negation-removal== 42173 (pos)
                    (not (Bb_not_checked_p9))

                    ; #54654: <==negation-removal== 14637 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #60438: <==uncertain_firing== 53135 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #66531: <==negation-removal== 62200 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69259: <==uncertain_firing== 34465 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #69562: <==negation-removal== 35347 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74782: <==negation-removal== 53135 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #87223: <==negation-removal== 10157 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15186: origin
                    (checked_p10)

                    ; #18842: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #22996: <==commonly_known== 80955 (neg)
                    (Pc_checked_p10)

                    ; #31190: <==commonly_known== 80955 (neg)
                    (Pb_checked_p10)

                    ; #39337: <==closure== 18842 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #55746: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #56227: <==commonly_known== 15186 (pos)
                    (Ba_checked_p10)

                    ; #59163: <==closure== 55746 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #59281: <==commonly_known== 15186 (pos)
                    (Bd_checked_p10)

                    ; #61019: <==commonly_known== 15186 (pos)
                    (Bc_checked_p10)

                    ; #77167: <==commonly_known== 80955 (neg)
                    (Pa_checked_p10)

                    ; #80900: <==commonly_known== 80955 (neg)
                    (Pd_checked_p10)

                    ; #83027: <==commonly_known== 15186 (pos)
                    (Bb_checked_p10)

                    ; #10736: <==uncertain_firing== 18842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #11141: <==negation-removal== 61019 (pos)
                    (not (Pc_not_checked_p10))

                    ; #11846: <==negation-removal== 39337 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #16630: <==uncertain_firing== 39337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #17565: <==uncertain_firing== 55746 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #27746: <==negation-removal== 77167 (pos)
                    (not (Ba_not_checked_p10))

                    ; #28289: <==negation-removal== 31190 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30255: <==negation-removal== 80900 (pos)
                    (not (Bd_not_checked_p10))

                    ; #30300: <==negation-removal== 56227 (pos)
                    (not (Pa_not_checked_p10))

                    ; #42411: <==negation-removal== 22996 (pos)
                    (not (Bc_not_checked_p10))

                    ; #54803: <==negation-removal== 18842 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #56394: <==uncertain_firing== 59163 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #57119: <==negation-removal== 55746 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #57219: <==negation-removal== 59281 (pos)
                    (not (Pd_not_checked_p10))

                    ; #63482: <==negation-removal== 83027 (pos)
                    (not (Pb_not_checked_p10))

                    ; #75911: <==negation-removal== 59163 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #80955: <==negation-removal== 15186 (pos)
                    (not (not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #26331: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #26962: <==commonly_known== 29074 (pos)
                    (Ba_checked_p11)

                    ; #29074: origin
                    (checked_p11)

                    ; #29118: <==commonly_known== 14939 (neg)
                    (Pb_checked_p11)

                    ; #45224: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #52515: <==commonly_known== 14939 (neg)
                    (Pd_checked_p11)

                    ; #55096: <==commonly_known== 29074 (pos)
                    (Bd_checked_p11)

                    ; #57895: <==commonly_known== 14939 (neg)
                    (Pa_checked_p11)

                    ; #80010: <==closure== 45224 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #83499: <==commonly_known== 29074 (pos)
                    (Bb_checked_p11)

                    ; #84843: <==commonly_known== 14939 (neg)
                    (Pc_checked_p11)

                    ; #90207: <==commonly_known== 29074 (pos)
                    (Bc_checked_p11)

                    ; #91432: <==closure== 26331 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #14939: <==negation-removal== 29074 (pos)
                    (not (not_checked_p11))

                    ; #18851: <==negation-removal== 84843 (pos)
                    (not (Bc_not_checked_p11))

                    ; #19328: <==negation-removal== 83499 (pos)
                    (not (Pb_not_checked_p11))

                    ; #22033: <==negation-removal== 52515 (pos)
                    (not (Bd_not_checked_p11))

                    ; #22934: <==negation-removal== 91432 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #24769: <==negation-removal== 29118 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24970: <==negation-removal== 57895 (pos)
                    (not (Ba_not_checked_p11))

                    ; #31977: <==negation-removal== 55096 (pos)
                    (not (Pd_not_checked_p11))

                    ; #39417: <==negation-removal== 26962 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56358: <==uncertain_firing== 91432 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #63459: <==negation-removal== 90207 (pos)
                    (not (Pc_not_checked_p11))

                    ; #71187: <==negation-removal== 80010 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #72392: <==uncertain_firing== 45224 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #72896: <==uncertain_firing== 80010 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #87983: <==uncertain_firing== 26331 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #88191: <==negation-removal== 45224 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #89950: <==negation-removal== 26331 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #20682: <==commonly_known== 17719 (neg)
                    (Pb_checked_p12)

                    ; #23834: <==commonly_known== 63926 (pos)
                    (Bd_checked_p12)

                    ; #33874: <==commonly_known== 17719 (neg)
                    (Pa_checked_p12)

                    ; #34913: <==closure== 67504 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #50219: <==commonly_known== 17719 (neg)
                    (Pc_checked_p12)

                    ; #59605: <==commonly_known== 63926 (pos)
                    (Ba_checked_p12)

                    ; #63926: origin
                    (checked_p12)

                    ; #67504: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #67886: <==closure== 87447 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #72279: <==commonly_known== 63926 (pos)
                    (Bc_checked_p12)

                    ; #87447: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #89990: <==commonly_known== 63926 (pos)
                    (Bb_checked_p12)

                    ; #99632: <==commonly_known== 17719 (neg)
                    (Pd_checked_p12)

                    ; #17719: <==negation-removal== 63926 (pos)
                    (not (not_checked_p12))

                    ; #21542: <==negation-removal== 87447 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #22550: <==negation-removal== 99632 (pos)
                    (not (Bd_not_checked_p12))

                    ; #24927: <==negation-removal== 50219 (pos)
                    (not (Bc_not_checked_p12))

                    ; #26146: <==negation-removal== 34913 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #27133: <==negation-removal== 23834 (pos)
                    (not (Pd_not_checked_p12))

                    ; #33054: <==uncertain_firing== 87447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #45455: <==uncertain_firing== 67504 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #50965: <==negation-removal== 72279 (pos)
                    (not (Pc_not_checked_p12))

                    ; #51340: <==uncertain_firing== 34913 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #53826: <==negation-removal== 33874 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55856: <==negation-removal== 89990 (pos)
                    (not (Pb_not_checked_p12))

                    ; #58865: <==negation-removal== 67886 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #70487: <==negation-removal== 20682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #80277: <==uncertain_firing== 67886 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #87651: <==negation-removal== 67504 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #88299: <==negation-removal== 59605 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12832: <==commonly_known== 14611 (pos)
                    (Bd_checked_p1)

                    ; #14611: origin
                    (checked_p1)

                    ; #21837: <==commonly_known== 12798 (neg)
                    (Pd_checked_p1)

                    ; #28313: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #33902: <==closure== 28313 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #37507: <==closure== 44634 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #42692: <==commonly_known== 14611 (pos)
                    (Bc_checked_p1)

                    ; #43944: <==commonly_known== 14611 (pos)
                    (Bb_checked_p1)

                    ; #44634: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #47803: <==commonly_known== 12798 (neg)
                    (Pc_checked_p1)

                    ; #54155: <==commonly_known== 12798 (neg)
                    (Pa_checked_p1)

                    ; #70758: <==commonly_known== 12798 (neg)
                    (Pb_checked_p1)

                    ; #86784: <==commonly_known== 14611 (pos)
                    (Ba_checked_p1)

                    ; #10343: <==negation-removal== 44634 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #12798: <==negation-removal== 14611 (pos)
                    (not (not_checked_p1))

                    ; #13643: <==negation-removal== 47803 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15042: <==negation-removal== 42692 (pos)
                    (not (Pc_not_checked_p1))

                    ; #27948: <==uncertain_firing== 37507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37547: <==uncertain_firing== 33902 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #38148: <==negation-removal== 28313 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #38224: <==negation-removal== 70758 (pos)
                    (not (Bb_not_checked_p1))

                    ; #51086: <==uncertain_firing== 28313 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #53962: <==negation-removal== 37507 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56101: <==negation-removal== 43944 (pos)
                    (not (Pb_not_checked_p1))

                    ; #66675: <==uncertain_firing== 44634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #71923: <==negation-removal== 54155 (pos)
                    (not (Ba_not_checked_p1))

                    ; #72919: <==negation-removal== 33902 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #76894: <==negation-removal== 86784 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83232: <==negation-removal== 21837 (pos)
                    (not (Bd_not_checked_p1))

                    ; #88210: <==negation-removal== 12832 (pos)
                    (not (Pd_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10275: <==commonly_known== 83246 (neg)
                    (Pa_checked_p2)

                    ; #14073: <==commonly_known== 82831 (pos)
                    (Bd_checked_p2)

                    ; #15743: <==commonly_known== 83246 (neg)
                    (Pc_checked_p2)

                    ; #22610: <==commonly_known== 82831 (pos)
                    (Ba_checked_p2)

                    ; #33625: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #38049: <==closure== 33625 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #47204: <==commonly_known== 83246 (neg)
                    (Pb_checked_p2)

                    ; #59708: <==commonly_known== 83246 (neg)
                    (Pd_checked_p2)

                    ; #61182: <==commonly_known== 82831 (pos)
                    (Bb_checked_p2)

                    ; #81159: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #82094: <==commonly_known== 82831 (pos)
                    (Bc_checked_p2)

                    ; #82831: origin
                    (checked_p2)

                    ; #86861: <==closure== 81159 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #11370: <==negation-removal== 86861 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #17889: <==negation-removal== 47204 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20253: <==uncertain_firing== 38049 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23735: <==negation-removal== 22610 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24008: <==negation-removal== 61182 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30156: <==negation-removal== 81159 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #40736: <==negation-removal== 82094 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43793: <==negation-removal== 59708 (pos)
                    (not (Bd_not_checked_p2))

                    ; #49789: <==uncertain_firing== 86861 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #53371: <==negation-removal== 15743 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56433: <==uncertain_firing== 81159 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #60149: <==negation-removal== 33625 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #75674: <==uncertain_firing== 33625 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #83042: <==negation-removal== 38049 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #83246: <==negation-removal== 82831 (pos)
                    (not (not_checked_p2))

                    ; #83725: <==negation-removal== 10275 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87546: <==negation-removal== 14073 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #32484: <==commonly_known== 51222 (pos)
                    (Bc_checked_p3)

                    ; #32524: <==commonly_known== 58602 (neg)
                    (Pa_checked_p3)

                    ; #36758: <==commonly_known== 51222 (pos)
                    (Ba_checked_p3)

                    ; #49091: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #51222: origin
                    (checked_p3)

                    ; #60654: <==commonly_known== 51222 (pos)
                    (Bb_checked_p3)

                    ; #62241: <==closure== 67974 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62510: <==closure== 49091 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #67974: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #68065: <==commonly_known== 58602 (neg)
                    (Pc_checked_p3)

                    ; #75980: <==commonly_known== 51222 (pos)
                    (Bd_checked_p3)

                    ; #80132: <==commonly_known== 58602 (neg)
                    (Pd_checked_p3)

                    ; #96912: <==commonly_known== 58602 (neg)
                    (Pb_checked_p3)

                    ; #12831: <==negation-removal== 96912 (pos)
                    (not (Bb_not_checked_p3))

                    ; #22717: <==negation-removal== 62510 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #33931: <==negation-removal== 60654 (pos)
                    (not (Pb_not_checked_p3))

                    ; #40207: <==negation-removal== 36758 (pos)
                    (not (Pa_not_checked_p3))

                    ; #42821: <==negation-removal== 49091 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #45338: <==negation-removal== 80132 (pos)
                    (not (Bd_not_checked_p3))

                    ; #47748: <==uncertain_firing== 49091 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #48551: <==negation-removal== 68065 (pos)
                    (not (Bc_not_checked_p3))

                    ; #52765: <==uncertain_firing== 67974 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #53546: <==uncertain_firing== 62510 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #56446: <==uncertain_firing== 62241 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #58602: <==negation-removal== 51222 (pos)
                    (not (not_checked_p3))

                    ; #70169: <==negation-removal== 62241 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #83836: <==negation-removal== 67974 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #86675: <==negation-removal== 32484 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89008: <==negation-removal== 75980 (pos)
                    (not (Pd_not_checked_p3))

                    ; #89611: <==negation-removal== 32524 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14084: <==commonly_known== 47551 (pos)
                    (Bb_checked_p4)

                    ; #14181: <==commonly_known== 32973 (neg)
                    (Pa_checked_p4)

                    ; #20118: <==commonly_known== 32973 (neg)
                    (Pd_checked_p4)

                    ; #21794: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #30803: <==commonly_known== 47551 (pos)
                    (Bd_checked_p4)

                    ; #32017: <==commonly_known== 47551 (pos)
                    (Bc_checked_p4)

                    ; #35581: <==commonly_known== 32973 (neg)
                    (Pc_checked_p4)

                    ; #38246: <==commonly_known== 47551 (pos)
                    (Ba_checked_p4)

                    ; #42989: <==closure== 50526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #47551: origin
                    (checked_p4)

                    ; #50526: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #88990: <==commonly_known== 32973 (neg)
                    (Pb_checked_p4)

                    ; #90526: <==closure== 21794 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #21309: <==negation-removal== 32017 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22270: <==negation-removal== 14181 (pos)
                    (not (Ba_not_checked_p4))

                    ; #28492: <==negation-removal== 21794 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #30882: <==uncertain_firing== 42989 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #32973: <==negation-removal== 47551 (pos)
                    (not (not_checked_p4))

                    ; #37110: <==negation-removal== 42989 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #42187: <==negation-removal== 14084 (pos)
                    (not (Pb_not_checked_p4))

                    ; #54386: <==negation-removal== 90526 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #54819: <==negation-removal== 50526 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #59063: <==uncertain_firing== 21794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #60720: <==negation-removal== 88990 (pos)
                    (not (Bb_not_checked_p4))

                    ; #60930: <==uncertain_firing== 90526 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #66899: <==negation-removal== 30803 (pos)
                    (not (Pd_not_checked_p4))

                    ; #67529: <==uncertain_firing== 50526 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #79146: <==negation-removal== 20118 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80503: <==negation-removal== 35581 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85146: <==negation-removal== 38246 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14175: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #26533: <==closure== 14175 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #31042: <==commonly_known== 45401 (pos)
                    (Ba_checked_p5)

                    ; #44170: <==commonly_known== 45401 (pos)
                    (Bb_checked_p5)

                    ; #44650: <==commonly_known== 11612 (neg)
                    (Pa_checked_p5)

                    ; #45347: <==commonly_known== 11612 (neg)
                    (Pc_checked_p5)

                    ; #45401: origin
                    (checked_p5)

                    ; #50204: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #66746: <==commonly_known== 45401 (pos)
                    (Bc_checked_p5)

                    ; #71762: <==commonly_known== 11612 (neg)
                    (Pd_checked_p5)

                    ; #76573: <==commonly_known== 45401 (pos)
                    (Bd_checked_p5)

                    ; #77264: <==closure== 50204 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #81004: <==commonly_known== 11612 (neg)
                    (Pb_checked_p5)

                    ; #11582: <==negation-removal== 76573 (pos)
                    (not (Pd_not_checked_p5))

                    ; #11612: <==negation-removal== 45401 (pos)
                    (not (not_checked_p5))

                    ; #13210: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14857: <==uncertain_firing== 14175 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #14884: <==negation-removal== 71762 (pos)
                    (not (Bd_not_checked_p5))

                    ; #42021: <==uncertain_firing== 50204 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43017: <==negation-removal== 44650 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50463: <==negation-removal== 66746 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52261: <==negation-removal== 31042 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54912: <==negation-removal== 26533 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #59212: <==negation-removal== 14175 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #63388: <==negation-removal== 77264 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #70797: <==negation-removal== 50204 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #78888: <==negation-removal== 81004 (pos)
                    (not (Bb_not_checked_p5))

                    ; #82564: <==uncertain_firing== 26533 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #83958: <==negation-removal== 45347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #85117: <==uncertain_firing== 77264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13706: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #15145: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #20129: <==commonly_known== 65911 (neg)
                    (Pb_checked_p6)

                    ; #21173: <==closure== 13706 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #22918: origin
                    (checked_p6)

                    ; #44430: <==commonly_known== 22918 (pos)
                    (Bd_checked_p6)

                    ; #50108: <==commonly_known== 65911 (neg)
                    (Pc_checked_p6)

                    ; #55011: <==commonly_known== 65911 (neg)
                    (Pd_checked_p6)

                    ; #59132: <==commonly_known== 22918 (pos)
                    (Ba_checked_p6)

                    ; #62967: <==commonly_known== 22918 (pos)
                    (Bb_checked_p6)

                    ; #64486: <==closure== 15145 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #79123: <==commonly_known== 65911 (neg)
                    (Pa_checked_p6)

                    ; #88981: <==commonly_known== 22918 (pos)
                    (Bc_checked_p6)

                    ; #11414: <==uncertain_firing== 13706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #17799: <==uncertain_firing== 15145 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #21231: <==negation-removal== 59132 (pos)
                    (not (Pa_not_checked_p6))

                    ; #21952: <==negation-removal== 13706 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #33607: <==negation-removal== 20129 (pos)
                    (not (Bb_not_checked_p6))

                    ; #44458: <==negation-removal== 50108 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45178: <==negation-removal== 62967 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52967: <==negation-removal== 64486 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #60680: <==uncertain_firing== 64486 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #63818: <==negation-removal== 44430 (pos)
                    (not (Pd_not_checked_p6))

                    ; #64388: <==negation-removal== 21173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #64855: <==negation-removal== 15145 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #65911: <==negation-removal== 22918 (pos)
                    (not (not_checked_p6))

                    ; #70035: <==negation-removal== 55011 (pos)
                    (not (Bd_not_checked_p6))

                    ; #80432: <==uncertain_firing== 21173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #85802: <==negation-removal== 88981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #90619: <==negation-removal== 79123 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14454: <==commonly_known== 56906 (neg)
                    (Pb_checked_p7)

                    ; #16215: <==closure== 77349 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #25106: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #28370: <==closure== 25106 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #29220: <==commonly_known== 48390 (pos)
                    (Bc_checked_p7)

                    ; #30328: <==commonly_known== 56906 (neg)
                    (Pd_checked_p7)

                    ; #48390: origin
                    (checked_p7)

                    ; #65444: <==commonly_known== 56906 (neg)
                    (Pc_checked_p7)

                    ; #66733: <==commonly_known== 48390 (pos)
                    (Bb_checked_p7)

                    ; #75057: <==commonly_known== 48390 (pos)
                    (Bd_checked_p7)

                    ; #77349: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #80820: <==commonly_known== 56906 (neg)
                    (Pa_checked_p7)

                    ; #84284: <==commonly_known== 48390 (pos)
                    (Ba_checked_p7)

                    ; #11356: <==negation-removal== 30328 (pos)
                    (not (Bd_not_checked_p7))

                    ; #34383: <==negation-removal== 84284 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46061: <==negation-removal== 80820 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48518: <==uncertain_firing== 16215 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49588: <==negation-removal== 25106 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #56235: <==negation-removal== 66733 (pos)
                    (not (Pb_not_checked_p7))

                    ; #56906: <==negation-removal== 48390 (pos)
                    (not (not_checked_p7))

                    ; #58401: <==uncertain_firing== 25106 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #66462: <==negation-removal== 14454 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67925: <==uncertain_firing== 28370 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #69840: <==negation-removal== 29220 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73398: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p7))

                    ; #73915: <==negation-removal== 16215 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #74355: <==negation-removal== 65444 (pos)
                    (not (Bc_not_checked_p7))

                    ; #74561: <==negation-removal== 77349 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #75916: <==uncertain_firing== 77349 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #87557: <==negation-removal== 28370 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10202: <==commonly_known== 83163 (neg)
                    (Pc_checked_p8)

                    ; #16213: <==commonly_known== 83163 (neg)
                    (Pb_checked_p8)

                    ; #24600: <==commonly_known== 66693 (pos)
                    (Bb_checked_p8)

                    ; #29140: <==commonly_known== 83163 (neg)
                    (Pd_checked_p8)

                    ; #48848: <==commonly_known== 83163 (neg)
                    (Pa_checked_p8)

                    ; #55513: <==closure== 66029 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #61699: <==commonly_known== 66693 (pos)
                    (Bc_checked_p8)

                    ; #66029: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #66693: origin
                    (checked_p8)

                    ; #68455: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #69738: <==commonly_known== 66693 (pos)
                    (Bd_checked_p8)

                    ; #76363: <==commonly_known== 66693 (pos)
                    (Ba_checked_p8)

                    ; #76392: <==closure== 68455 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #11816: <==negation-removal== 76363 (pos)
                    (not (Pa_not_checked_p8))

                    ; #16264: <==negation-removal== 24600 (pos)
                    (not (Pb_not_checked_p8))

                    ; #19722: <==uncertain_firing== 76392 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24796: <==negation-removal== 55513 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #25698: <==uncertain_firing== 68455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29683: <==uncertain_firing== 55513 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #48148: <==negation-removal== 69738 (pos)
                    (not (Pd_not_checked_p8))

                    ; #48302: <==negation-removal== 76392 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48572: <==negation-removal== 68455 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #49489: <==negation-removal== 10202 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50259: <==negation-removal== 29140 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51942: <==negation-removal== 61699 (pos)
                    (not (Pc_not_checked_p8))

                    ; #70955: <==negation-removal== 48848 (pos)
                    (not (Ba_not_checked_p8))

                    ; #71990: <==uncertain_firing== 66029 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #74380: <==negation-removal== 66029 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #83163: <==negation-removal== 66693 (pos)
                    (not (not_checked_p8))

                    ; #84087: <==negation-removal== 16213 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10157: <==commonly_known== 44618 (neg)
                    (Pd_checked_p9)

                    ; #15260: <==closure== 51979 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #20074: <==commonly_known== 44618 (neg)
                    (Pc_checked_p9)

                    ; #35158: <==commonly_known== 37743 (pos)
                    (Bc_checked_p9)

                    ; #35347: <==commonly_known== 37743 (pos)
                    (Ba_checked_p9)

                    ; #37743: origin
                    (checked_p9)

                    ; #42173: <==commonly_known== 44618 (neg)
                    (Pb_checked_p9)

                    ; #51979: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #52026: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #56160: <==closure== 52026 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #61586: <==commonly_known== 44618 (neg)
                    (Pa_checked_p9)

                    ; #67365: <==commonly_known== 37743 (pos)
                    (Bd_checked_p9)

                    ; #90786: <==commonly_known== 37743 (pos)
                    (Bb_checked_p9)

                    ; #16902: <==negation-removal== 20074 (pos)
                    (not (Bc_not_checked_p9))

                    ; #18539: <==negation-removal== 35158 (pos)
                    (not (Pc_not_checked_p9))

                    ; #20157: <==uncertain_firing== 56160 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #25088: <==negation-removal== 52026 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #27424: <==negation-removal== 51979 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #29992: <==negation-removal== 56160 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #36856: <==negation-removal== 90786 (pos)
                    (not (Pb_not_checked_p9))

                    ; #37385: <==uncertain_firing== 15260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #38059: <==negation-removal== 67365 (pos)
                    (not (Pd_not_checked_p9))

                    ; #42257: <==negation-removal== 61586 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44618: <==negation-removal== 37743 (pos)
                    (not (not_checked_p9))

                    ; #51614: <==negation-removal== 42173 (pos)
                    (not (Bb_not_checked_p9))

                    ; #55545: <==uncertain_firing== 51979 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #69562: <==negation-removal== 35347 (pos)
                    (not (Pa_not_checked_p9))

                    ; #79052: <==uncertain_firing== 52026 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #80751: <==negation-removal== 15260 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #87223: <==negation-removal== 10157 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15186: origin
                    (checked_p10)

                    ; #22996: <==commonly_known== 80955 (neg)
                    (Pc_checked_p10)

                    ; #31190: <==commonly_known== 80955 (neg)
                    (Pb_checked_p10)

                    ; #52550: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #56227: <==commonly_known== 15186 (pos)
                    (Ba_checked_p10)

                    ; #57844: <==closure== 52550 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #59281: <==commonly_known== 15186 (pos)
                    (Bd_checked_p10)

                    ; #60987: <==closure== 88211 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #61019: <==commonly_known== 15186 (pos)
                    (Bc_checked_p10)

                    ; #77167: <==commonly_known== 80955 (neg)
                    (Pa_checked_p10)

                    ; #80900: <==commonly_known== 80955 (neg)
                    (Pd_checked_p10)

                    ; #83027: <==commonly_known== 15186 (pos)
                    (Bb_checked_p10)

                    ; #88211: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #11089: <==uncertain_firing== 52550 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #11141: <==negation-removal== 61019 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27746: <==negation-removal== 77167 (pos)
                    (not (Ba_not_checked_p10))

                    ; #28289: <==negation-removal== 31190 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30255: <==negation-removal== 80900 (pos)
                    (not (Bd_not_checked_p10))

                    ; #30300: <==negation-removal== 56227 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37124: <==uncertain_firing== 88211 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #39620: <==negation-removal== 52550 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #42411: <==negation-removal== 22996 (pos)
                    (not (Bc_not_checked_p10))

                    ; #44654: <==negation-removal== 57844 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #53874: <==uncertain_firing== 57844 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #57144: <==negation-removal== 88211 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #57219: <==negation-removal== 59281 (pos)
                    (not (Pd_not_checked_p10))

                    ; #63482: <==negation-removal== 83027 (pos)
                    (not (Pb_not_checked_p10))

                    ; #80955: <==negation-removal== 15186 (pos)
                    (not (not_checked_p10))

                    ; #90311: <==negation-removal== 60987 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #91893: <==uncertain_firing== 60987 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #16621: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #26962: <==commonly_known== 29074 (pos)
                    (Ba_checked_p11)

                    ; #29074: origin
                    (checked_p11)

                    ; #29118: <==commonly_known== 14939 (neg)
                    (Pb_checked_p11)

                    ; #29155: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #52515: <==commonly_known== 14939 (neg)
                    (Pd_checked_p11)

                    ; #55096: <==commonly_known== 29074 (pos)
                    (Bd_checked_p11)

                    ; #57895: <==commonly_known== 14939 (neg)
                    (Pa_checked_p11)

                    ; #65020: <==closure== 16621 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #83499: <==commonly_known== 29074 (pos)
                    (Bb_checked_p11)

                    ; #84843: <==commonly_known== 14939 (neg)
                    (Pc_checked_p11)

                    ; #90051: <==closure== 29155 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #90207: <==commonly_known== 29074 (pos)
                    (Bc_checked_p11)

                    ; #14939: <==negation-removal== 29074 (pos)
                    (not (not_checked_p11))

                    ; #18851: <==negation-removal== 84843 (pos)
                    (not (Bc_not_checked_p11))

                    ; #19328: <==negation-removal== 83499 (pos)
                    (not (Pb_not_checked_p11))

                    ; #22033: <==negation-removal== 52515 (pos)
                    (not (Bd_not_checked_p11))

                    ; #22182: <==uncertain_firing== 29155 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #24769: <==negation-removal== 29118 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24970: <==negation-removal== 57895 (pos)
                    (not (Ba_not_checked_p11))

                    ; #30168: <==negation-removal== 65020 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #31977: <==negation-removal== 55096 (pos)
                    (not (Pd_not_checked_p11))

                    ; #33561: <==negation-removal== 16621 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #39417: <==negation-removal== 26962 (pos)
                    (not (Pa_not_checked_p11))

                    ; #52397: <==uncertain_firing== 65020 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #63459: <==negation-removal== 90207 (pos)
                    (not (Pc_not_checked_p11))

                    ; #67704: <==uncertain_firing== 90051 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #71395: <==negation-removal== 29155 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #86459: <==negation-removal== 90051 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #91106: <==uncertain_firing== 16621 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #19750: <==closure== 82669 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #20682: <==commonly_known== 17719 (neg)
                    (Pb_checked_p12)

                    ; #23834: <==commonly_known== 63926 (pos)
                    (Bd_checked_p12)

                    ; #27022: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #33874: <==commonly_known== 17719 (neg)
                    (Pa_checked_p12)

                    ; #42625: <==closure== 27022 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #50219: <==commonly_known== 17719 (neg)
                    (Pc_checked_p12)

                    ; #59605: <==commonly_known== 63926 (pos)
                    (Ba_checked_p12)

                    ; #63926: origin
                    (checked_p12)

                    ; #72279: <==commonly_known== 63926 (pos)
                    (Bc_checked_p12)

                    ; #82669: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #89990: <==commonly_known== 63926 (pos)
                    (Bb_checked_p12)

                    ; #99632: <==commonly_known== 17719 (neg)
                    (Pd_checked_p12)

                    ; #11497: <==uncertain_firing== 27022 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #17719: <==negation-removal== 63926 (pos)
                    (not (not_checked_p12))

                    ; #19301: <==negation-removal== 42625 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #22550: <==negation-removal== 99632 (pos)
                    (not (Bd_not_checked_p12))

                    ; #24927: <==negation-removal== 50219 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27133: <==negation-removal== 23834 (pos)
                    (not (Pd_not_checked_p12))

                    ; #39243: <==uncertain_firing== 82669 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #47008: <==uncertain_firing== 42625 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #49027: <==negation-removal== 19750 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #50965: <==negation-removal== 72279 (pos)
                    (not (Pc_not_checked_p12))

                    ; #53826: <==negation-removal== 33874 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55856: <==negation-removal== 89990 (pos)
                    (not (Pb_not_checked_p12))

                    ; #64775: <==negation-removal== 27022 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #70487: <==negation-removal== 20682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #79934: <==negation-removal== 82669 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #87975: <==uncertain_firing== 19750 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #88299: <==negation-removal== 59605 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12832: <==commonly_known== 14611 (pos)
                    (Bd_checked_p1)

                    ; #14611: origin
                    (checked_p1)

                    ; #21837: <==commonly_known== 12798 (neg)
                    (Pd_checked_p1)

                    ; #32483: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #42692: <==commonly_known== 14611 (pos)
                    (Bc_checked_p1)

                    ; #43944: <==commonly_known== 14611 (pos)
                    (Bb_checked_p1)

                    ; #47803: <==commonly_known== 12798 (neg)
                    (Pc_checked_p1)

                    ; #54155: <==commonly_known== 12798 (neg)
                    (Pa_checked_p1)

                    ; #54292: <==closure== 65310 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #65310: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #70758: <==commonly_known== 12798 (neg)
                    (Pb_checked_p1)

                    ; #78571: <==closure== 32483 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #86784: <==commonly_known== 14611 (pos)
                    (Ba_checked_p1)

                    ; #12798: <==negation-removal== 14611 (pos)
                    (not (not_checked_p1))

                    ; #13643: <==negation-removal== 47803 (pos)
                    (not (Bc_not_checked_p1))

                    ; #15042: <==negation-removal== 42692 (pos)
                    (not (Pc_not_checked_p1))

                    ; #29845: <==negation-removal== 65310 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #31533: <==negation-removal== 54292 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #38224: <==negation-removal== 70758 (pos)
                    (not (Bb_not_checked_p1))

                    ; #48741: <==uncertain_firing== 65310 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #56101: <==negation-removal== 43944 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57325: <==uncertain_firing== 32483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #68396: <==negation-removal== 78571 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71923: <==negation-removal== 54155 (pos)
                    (not (Ba_not_checked_p1))

                    ; #72070: <==uncertain_firing== 54292 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #76894: <==negation-removal== 86784 (pos)
                    (not (Pa_not_checked_p1))

                    ; #83232: <==negation-removal== 21837 (pos)
                    (not (Bd_not_checked_p1))

                    ; #88210: <==negation-removal== 12832 (pos)
                    (not (Pd_not_checked_p1))

                    ; #90317: <==uncertain_firing== 78571 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #90472: <==negation-removal== 32483 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10275: <==commonly_known== 83246 (neg)
                    (Pa_checked_p2)

                    ; #14073: <==commonly_known== 82831 (pos)
                    (Bd_checked_p2)

                    ; #15743: <==commonly_known== 83246 (neg)
                    (Pc_checked_p2)

                    ; #22610: <==commonly_known== 82831 (pos)
                    (Ba_checked_p2)

                    ; #30094: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #39613: <==closure== 70598 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #47204: <==commonly_known== 83246 (neg)
                    (Pb_checked_p2)

                    ; #59708: <==commonly_known== 83246 (neg)
                    (Pd_checked_p2)

                    ; #61182: <==commonly_known== 82831 (pos)
                    (Bb_checked_p2)

                    ; #70598: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #74496: <==closure== 30094 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #82094: <==commonly_known== 82831 (pos)
                    (Bc_checked_p2)

                    ; #82831: origin
                    (checked_p2)

                    ; #17889: <==negation-removal== 47204 (pos)
                    (not (Bb_not_checked_p2))

                    ; #18171: <==uncertain_firing== 30094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #18739: <==uncertain_firing== 39613 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #23735: <==negation-removal== 22610 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24008: <==negation-removal== 61182 (pos)
                    (not (Pb_not_checked_p2))

                    ; #30743: <==negation-removal== 74496 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #40736: <==negation-removal== 82094 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43793: <==negation-removal== 59708 (pos)
                    (not (Bd_not_checked_p2))

                    ; #53371: <==negation-removal== 15743 (pos)
                    (not (Bc_not_checked_p2))

                    ; #55611: <==negation-removal== 30094 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #63835: <==negation-removal== 39613 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #66478: <==uncertain_firing== 74496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #67552: <==negation-removal== 70598 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #83246: <==negation-removal== 82831 (pos)
                    (not (not_checked_p2))

                    ; #83725: <==negation-removal== 10275 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87546: <==negation-removal== 14073 (pos)
                    (not (Pd_not_checked_p2))

                    ; #91737: <==uncertain_firing== 70598 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16874: <==closure== 40389 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #32484: <==commonly_known== 51222 (pos)
                    (Bc_checked_p3)

                    ; #32524: <==commonly_known== 58602 (neg)
                    (Pa_checked_p3)

                    ; #36758: <==commonly_known== 51222 (pos)
                    (Ba_checked_p3)

                    ; #40389: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #51222: origin
                    (checked_p3)

                    ; #60654: <==commonly_known== 51222 (pos)
                    (Bb_checked_p3)

                    ; #61953: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #68065: <==commonly_known== 58602 (neg)
                    (Pc_checked_p3)

                    ; #75980: <==commonly_known== 51222 (pos)
                    (Bd_checked_p3)

                    ; #80132: <==commonly_known== 58602 (neg)
                    (Pd_checked_p3)

                    ; #88829: <==closure== 61953 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #96912: <==commonly_known== 58602 (neg)
                    (Pb_checked_p3)

                    ; #12831: <==negation-removal== 96912 (pos)
                    (not (Bb_not_checked_p3))

                    ; #15936: <==uncertain_firing== 88829 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #26734: <==negation-removal== 16874 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #33340: <==negation-removal== 88829 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #33931: <==negation-removal== 60654 (pos)
                    (not (Pb_not_checked_p3))

                    ; #40207: <==negation-removal== 36758 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45338: <==negation-removal== 80132 (pos)
                    (not (Bd_not_checked_p3))

                    ; #48551: <==negation-removal== 68065 (pos)
                    (not (Bc_not_checked_p3))

                    ; #56666: <==negation-removal== 40389 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #58602: <==negation-removal== 51222 (pos)
                    (not (not_checked_p3))

                    ; #60113: <==uncertain_firing== 61953 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #76654: <==negation-removal== 61953 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #78557: <==uncertain_firing== 40389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #83732: <==uncertain_firing== 16874 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86675: <==negation-removal== 32484 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89008: <==negation-removal== 75980 (pos)
                    (not (Pd_not_checked_p3))

                    ; #89611: <==negation-removal== 32524 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14084: <==commonly_known== 47551 (pos)
                    (Bb_checked_p4)

                    ; #14181: <==commonly_known== 32973 (neg)
                    (Pa_checked_p4)

                    ; #18935: <==closure== 35346 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #20118: <==commonly_known== 32973 (neg)
                    (Pd_checked_p4)

                    ; #30803: <==commonly_known== 47551 (pos)
                    (Bd_checked_p4)

                    ; #32017: <==commonly_known== 47551 (pos)
                    (Bc_checked_p4)

                    ; #35346: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #35581: <==commonly_known== 32973 (neg)
                    (Pc_checked_p4)

                    ; #38246: <==commonly_known== 47551 (pos)
                    (Ba_checked_p4)

                    ; #47551: origin
                    (checked_p4)

                    ; #51031: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #64163: <==closure== 51031 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #88990: <==commonly_known== 32973 (neg)
                    (Pb_checked_p4)

                    ; #10205: <==uncertain_firing== 35346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #17992: <==negation-removal== 35346 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #19122: <==uncertain_firing== 18935 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #21309: <==negation-removal== 32017 (pos)
                    (not (Pc_not_checked_p4))

                    ; #21435: <==uncertain_firing== 51031 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #22270: <==negation-removal== 14181 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32973: <==negation-removal== 47551 (pos)
                    (not (not_checked_p4))

                    ; #42187: <==negation-removal== 14084 (pos)
                    (not (Pb_not_checked_p4))

                    ; #45565: <==negation-removal== 51031 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #60720: <==negation-removal== 88990 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66899: <==negation-removal== 30803 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68670: <==negation-removal== 18935 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #77950: <==uncertain_firing== 64163 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #79146: <==negation-removal== 20118 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80503: <==negation-removal== 35581 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81888: <==negation-removal== 64163 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #85146: <==negation-removal== 38246 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10582: <==closure== 28668 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #28668: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #31042: <==commonly_known== 45401 (pos)
                    (Ba_checked_p5)

                    ; #44170: <==commonly_known== 45401 (pos)
                    (Bb_checked_p5)

                    ; #44650: <==commonly_known== 11612 (neg)
                    (Pa_checked_p5)

                    ; #45347: <==commonly_known== 11612 (neg)
                    (Pc_checked_p5)

                    ; #45401: origin
                    (checked_p5)

                    ; #61589: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #66746: <==commonly_known== 45401 (pos)
                    (Bc_checked_p5)

                    ; #71762: <==commonly_known== 11612 (neg)
                    (Pd_checked_p5)

                    ; #76573: <==commonly_known== 45401 (pos)
                    (Bd_checked_p5)

                    ; #81004: <==commonly_known== 11612 (neg)
                    (Pb_checked_p5)

                    ; #83465: <==closure== 61589 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #11582: <==negation-removal== 76573 (pos)
                    (not (Pd_not_checked_p5))

                    ; #11612: <==negation-removal== 45401 (pos)
                    (not (not_checked_p5))

                    ; #12874: <==negation-removal== 10582 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #13210: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14884: <==negation-removal== 71762 (pos)
                    (not (Bd_not_checked_p5))

                    ; #37899: <==uncertain_firing== 83465 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38738: <==negation-removal== 28668 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43017: <==negation-removal== 44650 (pos)
                    (not (Ba_not_checked_p5))

                    ; #45925: <==uncertain_firing== 61589 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #50463: <==negation-removal== 66746 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52261: <==negation-removal== 31042 (pos)
                    (not (Pa_not_checked_p5))

                    ; #57282: <==negation-removal== 61589 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #59851: <==uncertain_firing== 28668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #78888: <==negation-removal== 81004 (pos)
                    (not (Bb_not_checked_p5))

                    ; #83958: <==negation-removal== 45347 (pos)
                    (not (Bc_not_checked_p5))

                    ; #85966: <==negation-removal== 83465 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #91464: <==uncertain_firing== 10582 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12256: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #19569: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #20129: <==commonly_known== 65911 (neg)
                    (Pb_checked_p6)

                    ; #22918: origin
                    (checked_p6)

                    ; #29681: <==closure== 19569 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #44430: <==commonly_known== 22918 (pos)
                    (Bd_checked_p6)

                    ; #50108: <==commonly_known== 65911 (neg)
                    (Pc_checked_p6)

                    ; #55011: <==commonly_known== 65911 (neg)
                    (Pd_checked_p6)

                    ; #59132: <==commonly_known== 22918 (pos)
                    (Ba_checked_p6)

                    ; #62967: <==commonly_known== 22918 (pos)
                    (Bb_checked_p6)

                    ; #79123: <==commonly_known== 65911 (neg)
                    (Pa_checked_p6)

                    ; #88981: <==commonly_known== 22918 (pos)
                    (Bc_checked_p6)

                    ; #89102: <==closure== 12256 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #19009: <==negation-removal== 19569 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #21231: <==negation-removal== 59132 (pos)
                    (not (Pa_not_checked_p6))

                    ; #30786: <==negation-removal== 89102 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #33607: <==negation-removal== 20129 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41785: <==uncertain_firing== 19569 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #44458: <==negation-removal== 50108 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45178: <==negation-removal== 62967 (pos)
                    (not (Pb_not_checked_p6))

                    ; #53199: <==negation-removal== 29681 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #63625: <==uncertain_firing== 29681 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #63818: <==negation-removal== 44430 (pos)
                    (not (Pd_not_checked_p6))

                    ; #65507: <==uncertain_firing== 12256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #65911: <==negation-removal== 22918 (pos)
                    (not (not_checked_p6))

                    ; #69605: <==negation-removal== 12256 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70035: <==negation-removal== 55011 (pos)
                    (not (Bd_not_checked_p6))

                    ; #76946: <==uncertain_firing== 89102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #85802: <==negation-removal== 88981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #90619: <==negation-removal== 79123 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10403: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #14454: <==commonly_known== 56906 (neg)
                    (Pb_checked_p7)

                    ; #29220: <==commonly_known== 48390 (pos)
                    (Bc_checked_p7)

                    ; #30328: <==commonly_known== 56906 (neg)
                    (Pd_checked_p7)

                    ; #44979: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #48390: origin
                    (checked_p7)

                    ; #56662: <==closure== 10403 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #65444: <==commonly_known== 56906 (neg)
                    (Pc_checked_p7)

                    ; #66733: <==commonly_known== 48390 (pos)
                    (Bb_checked_p7)

                    ; #75057: <==commonly_known== 48390 (pos)
                    (Bd_checked_p7)

                    ; #80820: <==commonly_known== 56906 (neg)
                    (Pa_checked_p7)

                    ; #83931: <==closure== 44979 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #84284: <==commonly_known== 48390 (pos)
                    (Ba_checked_p7)

                    ; #11356: <==negation-removal== 30328 (pos)
                    (not (Bd_not_checked_p7))

                    ; #15113: <==uncertain_firing== 56662 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #26740: <==negation-removal== 83931 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #33280: <==negation-removal== 56662 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #34383: <==negation-removal== 84284 (pos)
                    (not (Pa_not_checked_p7))

                    ; #46061: <==negation-removal== 80820 (pos)
                    (not (Ba_not_checked_p7))

                    ; #55430: <==negation-removal== 44979 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #56235: <==negation-removal== 66733 (pos)
                    (not (Pb_not_checked_p7))

                    ; #56906: <==negation-removal== 48390 (pos)
                    (not (not_checked_p7))

                    ; #66462: <==negation-removal== 14454 (pos)
                    (not (Bb_not_checked_p7))

                    ; #69840: <==negation-removal== 29220 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73257: <==negation-removal== 10403 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #73398: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p7))

                    ; #74355: <==negation-removal== 65444 (pos)
                    (not (Bc_not_checked_p7))

                    ; #76605: <==uncertain_firing== 83931 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #80805: <==uncertain_firing== 44979 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #92057: <==uncertain_firing== 10403 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10202: <==commonly_known== 83163 (neg)
                    (Pc_checked_p8)

                    ; #16213: <==commonly_known== 83163 (neg)
                    (Pb_checked_p8)

                    ; #24600: <==commonly_known== 66693 (pos)
                    (Bb_checked_p8)

                    ; #29140: <==commonly_known== 83163 (neg)
                    (Pd_checked_p8)

                    ; #48848: <==commonly_known== 83163 (neg)
                    (Pa_checked_p8)

                    ; #50437: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #57985: <==closure== 50437 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #59409: <==closure== 89363 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #61699: <==commonly_known== 66693 (pos)
                    (Bc_checked_p8)

                    ; #66693: origin
                    (checked_p8)

                    ; #69738: <==commonly_known== 66693 (pos)
                    (Bd_checked_p8)

                    ; #76363: <==commonly_known== 66693 (pos)
                    (Ba_checked_p8)

                    ; #89363: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #11816: <==negation-removal== 76363 (pos)
                    (not (Pa_not_checked_p8))

                    ; #15710: <==uncertain_firing== 89363 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #16264: <==negation-removal== 24600 (pos)
                    (not (Pb_not_checked_p8))

                    ; #35473: <==uncertain_firing== 50437 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #48148: <==negation-removal== 69738 (pos)
                    (not (Pd_not_checked_p8))

                    ; #49489: <==negation-removal== 10202 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50259: <==negation-removal== 29140 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51942: <==negation-removal== 61699 (pos)
                    (not (Pc_not_checked_p8))

                    ; #58756: <==negation-removal== 59409 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #65084: <==negation-removal== 89363 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70955: <==negation-removal== 48848 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75948: <==negation-removal== 50437 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #81561: <==uncertain_firing== 57985 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #83163: <==negation-removal== 66693 (pos)
                    (not (not_checked_p8))

                    ; #84087: <==negation-removal== 16213 (pos)
                    (not (Bb_not_checked_p8))

                    ; #90613: <==uncertain_firing== 59409 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #91577: <==negation-removal== 57985 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10157: <==commonly_known== 44618 (neg)
                    (Pd_checked_p9)

                    ; #13427: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #20074: <==commonly_known== 44618 (neg)
                    (Pc_checked_p9)

                    ; #25053: <==closure== 13427 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #31795: <==closure== 42385 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #35158: <==commonly_known== 37743 (pos)
                    (Bc_checked_p9)

                    ; #35347: <==commonly_known== 37743 (pos)
                    (Ba_checked_p9)

                    ; #37743: origin
                    (checked_p9)

                    ; #42173: <==commonly_known== 44618 (neg)
                    (Pb_checked_p9)

                    ; #42385: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #61586: <==commonly_known== 44618 (neg)
                    (Pa_checked_p9)

                    ; #67365: <==commonly_known== 37743 (pos)
                    (Bd_checked_p9)

                    ; #90786: <==commonly_known== 37743 (pos)
                    (Bb_checked_p9)

                    ; #11873: <==negation-removal== 42385 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #14667: <==negation-removal== 13427 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #16902: <==negation-removal== 20074 (pos)
                    (not (Bc_not_checked_p9))

                    ; #18539: <==negation-removal== 35158 (pos)
                    (not (Pc_not_checked_p9))

                    ; #27512: <==negation-removal== 31795 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #36856: <==negation-removal== 90786 (pos)
                    (not (Pb_not_checked_p9))

                    ; #37117: <==negation-removal== 25053 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #38059: <==negation-removal== 67365 (pos)
                    (not (Pd_not_checked_p9))

                    ; #42257: <==negation-removal== 61586 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44618: <==negation-removal== 37743 (pos)
                    (not (not_checked_p9))

                    ; #47390: <==uncertain_firing== 42385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #51614: <==negation-removal== 42173 (pos)
                    (not (Bb_not_checked_p9))

                    ; #69562: <==negation-removal== 35347 (pos)
                    (not (Pa_not_checked_p9))

                    ; #74507: <==uncertain_firing== 25053 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #83719: <==uncertain_firing== 31795 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #87108: <==uncertain_firing== 13427 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #87223: <==negation-removal== 10157 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observ_d_p10_s
        :precondition (and (at_d_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11709: <==closure== 18920 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #15186: origin
                    (checked_p10)

                    ; #18920: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #22996: <==commonly_known== 80955 (neg)
                    (Pc_checked_p10)

                    ; #31190: <==commonly_known== 80955 (neg)
                    (Pb_checked_p10)

                    ; #56227: <==commonly_known== 15186 (pos)
                    (Ba_checked_p10)

                    ; #59281: <==commonly_known== 15186 (pos)
                    (Bd_checked_p10)

                    ; #61019: <==commonly_known== 15186 (pos)
                    (Bc_checked_p10)

                    ; #65879: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #77167: <==commonly_known== 80955 (neg)
                    (Pa_checked_p10)

                    ; #80900: <==commonly_known== 80955 (neg)
                    (Pd_checked_p10)

                    ; #83027: <==commonly_known== 15186 (pos)
                    (Bb_checked_p10)

                    ; #84272: <==closure== 65879 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #11141: <==negation-removal== 61019 (pos)
                    (not (Pc_not_checked_p10))

                    ; #27746: <==negation-removal== 77167 (pos)
                    (not (Ba_not_checked_p10))

                    ; #28014: <==negation-removal== 11709 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #28289: <==negation-removal== 31190 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30255: <==negation-removal== 80900 (pos)
                    (not (Bd_not_checked_p10))

                    ; #30300: <==negation-removal== 56227 (pos)
                    (not (Pa_not_checked_p10))

                    ; #42411: <==negation-removal== 22996 (pos)
                    (not (Bc_not_checked_p10))

                    ; #52092: <==uncertain_firing== 11709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #57219: <==negation-removal== 59281 (pos)
                    (not (Pd_not_checked_p10))

                    ; #61751: <==uncertain_firing== 18920 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #63482: <==negation-removal== 83027 (pos)
                    (not (Pb_not_checked_p10))

                    ; #66461: <==negation-removal== 18920 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #69546: <==negation-removal== 65879 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #80308: <==negation-removal== 84272 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #80955: <==negation-removal== 15186 (pos)
                    (not (not_checked_p10))

                    ; #85357: <==uncertain_firing== 84272 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #89704: <==uncertain_firing== 65879 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))))

    (:action observ_d_p11_s
        :precondition (and (at_d_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #20863: <==closure== 47456 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #25269: <==closure== 85136 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #26962: <==commonly_known== 29074 (pos)
                    (Ba_checked_p11)

                    ; #29074: origin
                    (checked_p11)

                    ; #29118: <==commonly_known== 14939 (neg)
                    (Pb_checked_p11)

                    ; #47456: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #52515: <==commonly_known== 14939 (neg)
                    (Pd_checked_p11)

                    ; #55096: <==commonly_known== 29074 (pos)
                    (Bd_checked_p11)

                    ; #57895: <==commonly_known== 14939 (neg)
                    (Pa_checked_p11)

                    ; #83499: <==commonly_known== 29074 (pos)
                    (Bb_checked_p11)

                    ; #84843: <==commonly_known== 14939 (neg)
                    (Pc_checked_p11)

                    ; #85136: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #90207: <==commonly_known== 29074 (pos)
                    (Bc_checked_p11)

                    ; #14939: <==negation-removal== 29074 (pos)
                    (not (not_checked_p11))

                    ; #18851: <==negation-removal== 84843 (pos)
                    (not (Bc_not_checked_p11))

                    ; #19328: <==negation-removal== 83499 (pos)
                    (not (Pb_not_checked_p11))

                    ; #20031: <==uncertain_firing== 25269 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #22033: <==negation-removal== 52515 (pos)
                    (not (Bd_not_checked_p11))

                    ; #24769: <==negation-removal== 29118 (pos)
                    (not (Bb_not_checked_p11))

                    ; #24970: <==negation-removal== 57895 (pos)
                    (not (Ba_not_checked_p11))

                    ; #26333: <==uncertain_firing== 85136 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #26815: <==negation-removal== 20863 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #31948: <==negation-removal== 25269 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #31977: <==negation-removal== 55096 (pos)
                    (not (Pd_not_checked_p11))

                    ; #37475: <==uncertain_firing== 20863 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #39417: <==negation-removal== 26962 (pos)
                    (not (Pa_not_checked_p11))

                    ; #42249: <==negation-removal== 85136 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #63459: <==negation-removal== 90207 (pos)
                    (not (Pc_not_checked_p11))

                    ; #84058: <==uncertain_firing== 47456 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #86252: <==negation-removal== 47456 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))))

    (:action observ_d_p12_s
        :precondition (and (at_d_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #13452: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #15867: <==closure== 18749 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #18749: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #20682: <==commonly_known== 17719 (neg)
                    (Pb_checked_p12)

                    ; #23834: <==commonly_known== 63926 (pos)
                    (Bd_checked_p12)

                    ; #33874: <==commonly_known== 17719 (neg)
                    (Pa_checked_p12)

                    ; #50219: <==commonly_known== 17719 (neg)
                    (Pc_checked_p12)

                    ; #59605: <==commonly_known== 63926 (pos)
                    (Ba_checked_p12)

                    ; #63926: origin
                    (checked_p12)

                    ; #72279: <==commonly_known== 63926 (pos)
                    (Bc_checked_p12)

                    ; #82305: <==closure== 13452 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #89990: <==commonly_known== 63926 (pos)
                    (Bb_checked_p12)

                    ; #99632: <==commonly_known== 17719 (neg)
                    (Pd_checked_p12)

                    ; #17719: <==negation-removal== 63926 (pos)
                    (not (not_checked_p12))

                    ; #21329: <==negation-removal== 13452 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #22550: <==negation-removal== 99632 (pos)
                    (not (Bd_not_checked_p12))

                    ; #24927: <==negation-removal== 50219 (pos)
                    (not (Bc_not_checked_p12))

                    ; #27133: <==negation-removal== 23834 (pos)
                    (not (Pd_not_checked_p12))

                    ; #29553: <==negation-removal== 82305 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #35514: <==negation-removal== 15867 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #40278: <==uncertain_firing== 15867 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #44734: <==uncertain_firing== 18749 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #50965: <==negation-removal== 72279 (pos)
                    (not (Pc_not_checked_p12))

                    ; #51008: <==negation-removal== 18749 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #53826: <==negation-removal== 33874 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55856: <==negation-removal== 89990 (pos)
                    (not (Pb_not_checked_p12))

                    ; #59705: <==uncertain_firing== 13452 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #63033: <==uncertain_firing== 82305 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #70487: <==negation-removal== 20682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #88299: <==negation-removal== 59605 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12832: <==commonly_known== 14611 (pos)
                    (Bd_checked_p1)

                    ; #14611: origin
                    (checked_p1)

                    ; #21837: <==commonly_known== 12798 (neg)
                    (Pd_checked_p1)

                    ; #22127: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #34851: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #36581: <==closure== 34851 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #42692: <==commonly_known== 14611 (pos)
                    (Bc_checked_p1)

                    ; #43944: <==commonly_known== 14611 (pos)
                    (Bb_checked_p1)

                    ; #47803: <==commonly_known== 12798 (neg)
                    (Pc_checked_p1)

                    ; #54155: <==commonly_known== 12798 (neg)
                    (Pa_checked_p1)

                    ; #70758: <==commonly_known== 12798 (neg)
                    (Pb_checked_p1)

                    ; #75762: <==closure== 22127 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #86784: <==commonly_known== 14611 (pos)
                    (Ba_checked_p1)

                    ; #12798: <==negation-removal== 14611 (pos)
                    (not (not_checked_p1))

                    ; #13643: <==negation-removal== 47803 (pos)
                    (not (Bc_not_checked_p1))

                    ; #14840: <==negation-removal== 75762 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #15042: <==negation-removal== 42692 (pos)
                    (not (Pc_not_checked_p1))

                    ; #17858: <==uncertain_firing== 75762 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #34769: <==negation-removal== 36581 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #38224: <==negation-removal== 70758 (pos)
                    (not (Bb_not_checked_p1))

                    ; #56101: <==negation-removal== 43944 (pos)
                    (not (Pb_not_checked_p1))

                    ; #56323: <==negation-removal== 22127 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #61981: <==uncertain_firing== 36581 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #71923: <==negation-removal== 54155 (pos)
                    (not (Ba_not_checked_p1))

                    ; #76894: <==negation-removal== 86784 (pos)
                    (not (Pa_not_checked_p1))

                    ; #78644: <==uncertain_firing== 22127 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #83232: <==negation-removal== 21837 (pos)
                    (not (Bd_not_checked_p1))

                    ; #88210: <==negation-removal== 12832 (pos)
                    (not (Pd_not_checked_p1))

                    ; #88478: <==uncertain_firing== 34851 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #89516: <==negation-removal== 34851 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10275: <==commonly_known== 83246 (neg)
                    (Pa_checked_p2)

                    ; #14073: <==commonly_known== 82831 (pos)
                    (Bd_checked_p2)

                    ; #15743: <==commonly_known== 83246 (neg)
                    (Pc_checked_p2)

                    ; #22610: <==commonly_known== 82831 (pos)
                    (Ba_checked_p2)

                    ; #38347: <==closure== 66452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #47204: <==commonly_known== 83246 (neg)
                    (Pb_checked_p2)

                    ; #59708: <==commonly_known== 83246 (neg)
                    (Pd_checked_p2)

                    ; #61182: <==commonly_known== 82831 (pos)
                    (Bb_checked_p2)

                    ; #66452: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #82094: <==commonly_known== 82831 (pos)
                    (Bc_checked_p2)

                    ; #82831: origin
                    (checked_p2)

                    ; #86752: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #92100: <==closure== 86752 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #11268: <==negation-removal== 86752 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #11691: <==negation-removal== 38347 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #17889: <==negation-removal== 47204 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23735: <==negation-removal== 22610 (pos)
                    (not (Pa_not_checked_p2))

                    ; #24008: <==negation-removal== 61182 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26936: <==negation-removal== 66452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #32983: <==uncertain_firing== 38347 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #40736: <==negation-removal== 82094 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43793: <==negation-removal== 59708 (pos)
                    (not (Bd_not_checked_p2))

                    ; #44739: <==negation-removal== 92100 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #53195: <==uncertain_firing== 86752 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #53371: <==negation-removal== 15743 (pos)
                    (not (Bc_not_checked_p2))

                    ; #60827: <==uncertain_firing== 92100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #83246: <==negation-removal== 82831 (pos)
                    (not (not_checked_p2))

                    ; #83725: <==negation-removal== 10275 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87546: <==negation-removal== 14073 (pos)
                    (not (Pd_not_checked_p2))

                    ; #89203: <==uncertain_firing== 66452 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #32484: <==commonly_known== 51222 (pos)
                    (Bc_checked_p3)

                    ; #32524: <==commonly_known== 58602 (neg)
                    (Pa_checked_p3)

                    ; #36758: <==commonly_known== 51222 (pos)
                    (Ba_checked_p3)

                    ; #51222: origin
                    (checked_p3)

                    ; #59753: <==closure== 63329 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #60654: <==commonly_known== 51222 (pos)
                    (Bb_checked_p3)

                    ; #63329: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #68065: <==commonly_known== 58602 (neg)
                    (Pc_checked_p3)

                    ; #71149: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #75980: <==commonly_known== 51222 (pos)
                    (Bd_checked_p3)

                    ; #76988: <==closure== 71149 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #80132: <==commonly_known== 58602 (neg)
                    (Pd_checked_p3)

                    ; #96912: <==commonly_known== 58602 (neg)
                    (Pb_checked_p3)

                    ; #12831: <==negation-removal== 96912 (pos)
                    (not (Bb_not_checked_p3))

                    ; #28935: <==uncertain_firing== 76988 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #33931: <==negation-removal== 60654 (pos)
                    (not (Pb_not_checked_p3))

                    ; #38906: <==negation-removal== 59753 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #40207: <==negation-removal== 36758 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45338: <==negation-removal== 80132 (pos)
                    (not (Bd_not_checked_p3))

                    ; #48551: <==negation-removal== 68065 (pos)
                    (not (Bc_not_checked_p3))

                    ; #52399: <==uncertain_firing== 59753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #58602: <==negation-removal== 51222 (pos)
                    (not (not_checked_p3))

                    ; #65781: <==negation-removal== 76988 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #66097: <==negation-removal== 71149 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #66267: <==negation-removal== 63329 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #76007: <==uncertain_firing== 63329 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #86675: <==negation-removal== 32484 (pos)
                    (not (Pc_not_checked_p3))

                    ; #89008: <==negation-removal== 75980 (pos)
                    (not (Pd_not_checked_p3))

                    ; #89611: <==negation-removal== 32524 (pos)
                    (not (Ba_not_checked_p3))

                    ; #91657: <==uncertain_firing== 71149 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #14084: <==commonly_known== 47551 (pos)
                    (Bb_checked_p4)

                    ; #14181: <==commonly_known== 32973 (neg)
                    (Pa_checked_p4)

                    ; #20118: <==commonly_known== 32973 (neg)
                    (Pd_checked_p4)

                    ; #21977: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #30803: <==commonly_known== 47551 (pos)
                    (Bd_checked_p4)

                    ; #32017: <==commonly_known== 47551 (pos)
                    (Bc_checked_p4)

                    ; #33272: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #35581: <==commonly_known== 32973 (neg)
                    (Pc_checked_p4)

                    ; #38246: <==commonly_known== 47551 (pos)
                    (Ba_checked_p4)

                    ; #39703: <==closure== 21977 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #47551: origin
                    (checked_p4)

                    ; #67665: <==closure== 33272 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #88990: <==commonly_known== 32973 (neg)
                    (Pb_checked_p4)

                    ; #13731: <==uncertain_firing== 67665 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #18471: <==negation-removal== 33272 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #21309: <==negation-removal== 32017 (pos)
                    (not (Pc_not_checked_p4))

                    ; #22270: <==negation-removal== 14181 (pos)
                    (not (Ba_not_checked_p4))

                    ; #24235: <==uncertain_firing== 39703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #26898: <==negation-removal== 21977 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32973: <==negation-removal== 47551 (pos)
                    (not (not_checked_p4))

                    ; #42187: <==negation-removal== 14084 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51953: <==uncertain_firing== 21977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #56893: <==uncertain_firing== 33272 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #59004: <==negation-removal== 67665 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #60720: <==negation-removal== 88990 (pos)
                    (not (Bb_not_checked_p4))

                    ; #66899: <==negation-removal== 30803 (pos)
                    (not (Pd_not_checked_p4))

                    ; #79146: <==negation-removal== 20118 (pos)
                    (not (Bd_not_checked_p4))

                    ; #80503: <==negation-removal== 35581 (pos)
                    (not (Bc_not_checked_p4))

                    ; #85146: <==negation-removal== 38246 (pos)
                    (not (Pa_not_checked_p4))

                    ; #92178: <==negation-removal== 39703 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #31042: <==commonly_known== 45401 (pos)
                    (Ba_checked_p5)

                    ; #34103: <==closure== 48910 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #44170: <==commonly_known== 45401 (pos)
                    (Bb_checked_p5)

                    ; #44650: <==commonly_known== 11612 (neg)
                    (Pa_checked_p5)

                    ; #45347: <==commonly_known== 11612 (neg)
                    (Pc_checked_p5)

                    ; #45401: origin
                    (checked_p5)

                    ; #46095: <==closure== 49237 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #48910: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #49237: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #66746: <==commonly_known== 45401 (pos)
                    (Bc_checked_p5)

                    ; #71762: <==commonly_known== 11612 (neg)
                    (Pd_checked_p5)

                    ; #76573: <==commonly_known== 45401 (pos)
                    (Bd_checked_p5)

                    ; #81004: <==commonly_known== 11612 (neg)
                    (Pb_checked_p5)

                    ; #11582: <==negation-removal== 76573 (pos)
                    (not (Pd_not_checked_p5))

                    ; #11612: <==negation-removal== 45401 (pos)
                    (not (not_checked_p5))

                    ; #13210: <==negation-removal== 44170 (pos)
                    (not (Pb_not_checked_p5))

                    ; #14436: <==uncertain_firing== 46095 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #14884: <==negation-removal== 71762 (pos)
                    (not (Bd_not_checked_p5))

                    ; #18612: <==uncertain_firing== 34103 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #29449: <==negation-removal== 34103 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #41154: <==negation-removal== 49237 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #43017: <==negation-removal== 44650 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50463: <==negation-removal== 66746 (pos)
                    (not (Pc_not_checked_p5))

                    ; #52261: <==negation-removal== 31042 (pos)
                    (not (Pa_not_checked_p5))

                    ; #53468: <==uncertain_firing== 49237 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #56109: <==uncertain_firing== 48910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #60742: <==negation-removal== 48910 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #78888: <==negation-removal== 81004 (pos)
                    (not (Bb_not_checked_p5))

                    ; #83859: <==negation-removal== 46095 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #83958: <==negation-removal== 45347 (pos)
                    (not (Bc_not_checked_p5))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20129: <==commonly_known== 65911 (neg)
                    (Pb_checked_p6)

                    ; #22043: <==closure== 40233 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #22918: origin
                    (checked_p6)

                    ; #40233: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #44430: <==commonly_known== 22918 (pos)
                    (Bd_checked_p6)

                    ; #50108: <==commonly_known== 65911 (neg)
                    (Pc_checked_p6)

                    ; #55011: <==commonly_known== 65911 (neg)
                    (Pd_checked_p6)

                    ; #59132: <==commonly_known== 22918 (pos)
                    (Ba_checked_p6)

                    ; #62967: <==commonly_known== 22918 (pos)
                    (Bb_checked_p6)

                    ; #63343: <==closure== 64226 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #64226: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #79123: <==commonly_known== 65911 (neg)
                    (Pa_checked_p6)

                    ; #88981: <==commonly_known== 22918 (pos)
                    (Bc_checked_p6)

                    ; #21231: <==negation-removal== 59132 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24197: <==negation-removal== 22043 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #25016: <==uncertain_firing== 22043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #33607: <==negation-removal== 20129 (pos)
                    (not (Bb_not_checked_p6))

                    ; #35761: <==negation-removal== 64226 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #37064: <==uncertain_firing== 63343 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #44458: <==negation-removal== 50108 (pos)
                    (not (Bc_not_checked_p6))

                    ; #45178: <==negation-removal== 62967 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59730: <==uncertain_firing== 64226 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #63818: <==negation-removal== 44430 (pos)
                    (not (Pd_not_checked_p6))

                    ; #65911: <==negation-removal== 22918 (pos)
                    (not (not_checked_p6))

                    ; #70035: <==negation-removal== 55011 (pos)
                    (not (Bd_not_checked_p6))

                    ; #76148: <==negation-removal== 63343 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #83446: <==negation-removal== 40233 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #85802: <==negation-removal== 88981 (pos)
                    (not (Pc_not_checked_p6))

                    ; #85960: <==uncertain_firing== 40233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #90619: <==negation-removal== 79123 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14454: <==commonly_known== 56906 (neg)
                    (Pb_checked_p7)

                    ; #29220: <==commonly_known== 48390 (pos)
                    (Bc_checked_p7)

                    ; #30328: <==commonly_known== 56906 (neg)
                    (Pd_checked_p7)

                    ; #32977: <==closure== 39867 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #39867: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #46267: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #48390: origin
                    (checked_p7)

                    ; #52808: <==closure== 46267 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #65444: <==commonly_known== 56906 (neg)
                    (Pc_checked_p7)

                    ; #66733: <==commonly_known== 48390 (pos)
                    (Bb_checked_p7)

                    ; #75057: <==commonly_known== 48390 (pos)
                    (Bd_checked_p7)

                    ; #80820: <==commonly_known== 56906 (neg)
                    (Pa_checked_p7)

                    ; #84284: <==commonly_known== 48390 (pos)
                    (Ba_checked_p7)

                    ; #11356: <==negation-removal== 30328 (pos)
                    (not (Bd_not_checked_p7))

                    ; #13404: <==uncertain_firing== 32977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #18668: <==uncertain_firing== 39867 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #29553: <==negation-removal== 52808 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #30047: <==uncertain_firing== 46267 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #34383: <==negation-removal== 84284 (pos)
                    (not (Pa_not_checked_p7))

                    ; #38693: <==negation-removal== 46267 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #46061: <==negation-removal== 80820 (pos)
                    (not (Ba_not_checked_p7))

                    ; #56235: <==negation-removal== 66733 (pos)
                    (not (Pb_not_checked_p7))

                    ; #56906: <==negation-removal== 48390 (pos)
                    (not (not_checked_p7))

                    ; #64732: <==uncertain_firing== 52808 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #66462: <==negation-removal== 14454 (pos)
                    (not (Bb_not_checked_p7))

                    ; #68607: <==negation-removal== 32977 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #69840: <==negation-removal== 29220 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73398: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p7))

                    ; #74355: <==negation-removal== 65444 (pos)
                    (not (Bc_not_checked_p7))

                    ; #85204: <==negation-removal== 39867 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10202: <==commonly_known== 83163 (neg)
                    (Pc_checked_p8)

                    ; #16213: <==commonly_known== 83163 (neg)
                    (Pb_checked_p8)

                    ; #19695: <==closure== 69816 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #24600: <==commonly_known== 66693 (pos)
                    (Bb_checked_p8)

                    ; #29140: <==commonly_known== 83163 (neg)
                    (Pd_checked_p8)

                    ; #48848: <==commonly_known== 83163 (neg)
                    (Pa_checked_p8)

                    ; #53648: <==closure== 79202 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #61699: <==commonly_known== 66693 (pos)
                    (Bc_checked_p8)

                    ; #66693: origin
                    (checked_p8)

                    ; #69738: <==commonly_known== 66693 (pos)
                    (Bd_checked_p8)

                    ; #69816: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #76363: <==commonly_known== 66693 (pos)
                    (Ba_checked_p8)

                    ; #79202: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #11816: <==negation-removal== 76363 (pos)
                    (not (Pa_not_checked_p8))

                    ; #14687: <==negation-removal== 79202 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #16264: <==negation-removal== 24600 (pos)
                    (not (Pb_not_checked_p8))

                    ; #17494: <==negation-removal== 53648 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #44117: <==uncertain_firing== 53648 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #48148: <==negation-removal== 69738 (pos)
                    (not (Pd_not_checked_p8))

                    ; #49489: <==negation-removal== 10202 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50259: <==negation-removal== 29140 (pos)
                    (not (Bd_not_checked_p8))

                    ; #51942: <==negation-removal== 61699 (pos)
                    (not (Pc_not_checked_p8))

                    ; #54736: <==negation-removal== 69816 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #57716: <==uncertain_firing== 79202 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #61836: <==uncertain_firing== 19695 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #67551: <==uncertain_firing== 69816 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #70955: <==negation-removal== 48848 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83163: <==negation-removal== 66693 (pos)
                    (not (not_checked_p8))

                    ; #84087: <==negation-removal== 16213 (pos)
                    (not (Bb_not_checked_p8))

                    ; #90883: <==negation-removal== 19695 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10157: <==commonly_known== 44618 (neg)
                    (Pd_checked_p9)

                    ; #14722: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #15948: <==closure== 94170 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #20074: <==commonly_known== 44618 (neg)
                    (Pc_checked_p9)

                    ; #35158: <==commonly_known== 37743 (pos)
                    (Bc_checked_p9)

                    ; #35347: <==commonly_known== 37743 (pos)
                    (Ba_checked_p9)

                    ; #37743: origin
                    (checked_p9)

                    ; #39046: <==closure== 14722 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #42173: <==commonly_known== 44618 (neg)
                    (Pb_checked_p9)

                    ; #61586: <==commonly_known== 44618 (neg)
                    (Pa_checked_p9)

                    ; #67365: <==commonly_known== 37743 (pos)
                    (Bd_checked_p9)

                    ; #90786: <==commonly_known== 37743 (pos)
                    (Bb_checked_p9)

                    ; #94170: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #16902: <==negation-removal== 20074 (pos)
                    (not (Bc_not_checked_p9))

                    ; #18539: <==negation-removal== 35158 (pos)
                    (not (Pc_not_checked_p9))

                    ; #21669: <==negation-removal== 14722 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #23942: <==uncertain_firing== 15948 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #35378: <==uncertain_firing== 94170 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #36856: <==negation-removal== 90786 (pos)
                    (not (Pb_not_checked_p9))

                    ; #38059: <==negation-removal== 67365 (pos)
                    (not (Pd_not_checked_p9))

                    ; #38730: <==negation-removal== 15948 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #42144: <==negation-removal== 94170 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #42257: <==negation-removal== 61586 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44618: <==negation-removal== 37743 (pos)
                    (not (not_checked_p9))

                    ; #51614: <==negation-removal== 42173 (pos)
                    (not (Bb_not_checked_p9))

                    ; #65362: <==uncertain_firing== 14722 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #69083: <==negation-removal== 39046 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #69562: <==negation-removal== 35347 (pos)
                    (not (Pa_not_checked_p9))

                    ; #87223: <==negation-removal== 10157 (pos)
                    (not (Bd_not_checked_p9))

                    ; #92106: <==uncertain_firing== 39046 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))))

)