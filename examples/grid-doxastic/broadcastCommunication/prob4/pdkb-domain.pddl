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
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_leader_d)
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
        (leader_a)
        (leader_b)
        (leader_c)
        (leader_d)
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

    (:action badcomm_p10_a_a_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_a)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #47902: <==closure== 72397 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #72397: origin
                    (Ba_not_survivorat_s_p10)

                    ; #32299: <==negation-removal== 47902 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #88641: <==negation-removal== 72397 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #12442: <==closure== 61021 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #61021: origin
                    (Bb_not_survivorat_s_p10)

                    ; #74021: <==negation-removal== 12442 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #82852: <==negation-removal== 61021 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #62180: origin
                    (Bc_not_survivorat_s_p10)

                    ; #87916: <==closure== 62180 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #39331: <==negation-removal== 62180 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #77679: <==negation-removal== 87916 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #14565: origin
                    (Bd_not_survivorat_s_p10)

                    ; #62617: <==closure== 14565 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #15794: <==negation-removal== 62617 (pos)
                    (not (Bd_survivorat_s_p10))

                    ; #62570: <==negation-removal== 14565 (pos)
                    (not (Pd_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #47902: <==closure== 72397 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #72397: origin
                    (Ba_not_survivorat_s_p10)

                    ; #32299: <==negation-removal== 47902 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #88641: <==negation-removal== 72397 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #12442: <==closure== 61021 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #61021: origin
                    (Bb_not_survivorat_s_p10)

                    ; #74021: <==negation-removal== 12442 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #82852: <==negation-removal== 61021 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #62180: origin
                    (Bc_not_survivorat_s_p10)

                    ; #87916: <==closure== 62180 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #39331: <==negation-removal== 62180 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #77679: <==negation-removal== 87916 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_d)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #14565: origin
                    (Bd_not_survivorat_s_p10)

                    ; #62617: <==closure== 14565 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #15794: <==negation-removal== 62617 (pos)
                    (not (Bd_survivorat_s_p10))

                    ; #62570: <==negation-removal== 14565 (pos)
                    (not (Pd_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10))
        :effect (and
                    ; #47902: <==closure== 72397 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #72397: origin
                    (Ba_not_survivorat_s_p10)

                    ; #32299: <==negation-removal== 47902 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #88641: <==negation-removal== 72397 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_b))
        :effect (and
                    ; #12442: <==closure== 61021 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #61021: origin
                    (Bb_not_survivorat_s_p10)

                    ; #74021: <==negation-removal== 12442 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #82852: <==negation-removal== 61021 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #62180: origin
                    (Bc_not_survivorat_s_p10)

                    ; #87916: <==closure== 62180 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #39331: <==negation-removal== 62180 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #77679: <==negation-removal== 87916 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_d_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_d)
                           (at_c_p10))
        :effect (and
                    ; #14565: origin
                    (Bd_not_survivorat_s_p10)

                    ; #62617: <==closure== 14565 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #15794: <==negation-removal== 62617 (pos)
                    (not (Bd_survivorat_s_p10))

                    ; #62570: <==negation-removal== 14565 (pos)
                    (not (Pd_survivorat_s_p10))))

    (:action badcomm_p10_d_a_s
        :precondition (and (leader_a)
                           (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #47902: <==closure== 72397 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #72397: origin
                    (Ba_not_survivorat_s_p10)

                    ; #32299: <==negation-removal== 47902 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #88641: <==negation-removal== 72397 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_d_b_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #12442: <==closure== 61021 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #61021: origin
                    (Bb_not_survivorat_s_p10)

                    ; #74021: <==negation-removal== 12442 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #82852: <==negation-removal== 61021 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_d_c_s
        :precondition (and (at_d_p10)
                           (leader_c)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #62180: origin
                    (Bc_not_survivorat_s_p10)

                    ; #87916: <==closure== 62180 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #39331: <==negation-removal== 62180 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #77679: <==negation-removal== 87916 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_d_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (leader_d)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #14565: origin
                    (Bd_not_survivorat_s_p10)

                    ; #62617: <==closure== 14565 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #15794: <==negation-removal== 62617 (pos)
                    (not (Bd_survivorat_s_p10))

                    ; #62570: <==negation-removal== 14565 (pos)
                    (not (Pd_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #35410: <==closure== 66639 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #66639: origin
                    (Ba_not_survivorat_s_p11)

                    ; #27930: <==negation-removal== 66639 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #81970: <==negation-removal== 35410 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b)
                           (at_a_p11))
        :effect (and
                    ; #25342: <==closure== 53441 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #53441: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52823: <==negation-removal== 53441 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #66648: <==negation-removal== 25342 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (Ba_survivorat_s_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #38235: origin
                    (Bc_not_survivorat_s_p11)

                    ; #44418: <==closure== 38235 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #50032: <==negation-removal== 44418 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #78183: <==negation-removal== 38235 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_a_d_s
        :precondition (and (Ba_survivorat_s_p11)
                           (leader_d)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #39189: <==closure== 92134 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #92134: origin
                    (Bd_not_survivorat_s_p11)

                    ; #72182: <==negation-removal== 39189 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #82056: <==negation-removal== 92134 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #35410: <==closure== 66639 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #66639: origin
                    (Ba_not_survivorat_s_p11)

                    ; #27930: <==negation-removal== 66639 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #81970: <==negation-removal== 35410 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #25342: <==closure== 53441 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #53441: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52823: <==negation-removal== 53441 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #66648: <==negation-removal== 25342 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (leader_c)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #38235: origin
                    (Bc_not_survivorat_s_p11)

                    ; #44418: <==closure== 38235 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #50032: <==negation-removal== 44418 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #78183: <==negation-removal== 38235 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_d_s
        :precondition (and (leader_d)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #39189: <==closure== 92134 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #92134: origin
                    (Bd_not_survivorat_s_p11)

                    ; #72182: <==negation-removal== 39189 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #82056: <==negation-removal== 92134 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #35410: <==closure== 66639 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #66639: origin
                    (Ba_not_survivorat_s_p11)

                    ; #27930: <==negation-removal== 66639 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #81970: <==negation-removal== 35410 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_b))
        :effect (and
                    ; #25342: <==closure== 53441 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #53441: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52823: <==negation-removal== 53441 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #66648: <==negation-removal== 25342 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_c))
        :effect (and
                    ; #38235: origin
                    (Bc_not_survivorat_s_p11)

                    ; #44418: <==closure== 38235 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #50032: <==negation-removal== 44418 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #78183: <==negation-removal== 38235 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_d_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_d)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #39189: <==closure== 92134 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #92134: origin
                    (Bd_not_survivorat_s_p11)

                    ; #72182: <==negation-removal== 39189 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #82056: <==negation-removal== 92134 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_d_a_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_a)
                           (at_d_p11))
        :effect (and
                    ; #35410: <==closure== 66639 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #66639: origin
                    (Ba_not_survivorat_s_p11)

                    ; #27930: <==negation-removal== 66639 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #81970: <==negation-removal== 35410 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_d_b_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_b))
        :effect (and
                    ; #25342: <==closure== 53441 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #53441: origin
                    (Bb_not_survivorat_s_p11)

                    ; #52823: <==negation-removal== 53441 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #66648: <==negation-removal== 25342 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_d_c_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_c)
                           (at_d_p11))
        :effect (and
                    ; #38235: origin
                    (Bc_not_survivorat_s_p11)

                    ; #44418: <==closure== 38235 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #50032: <==negation-removal== 44418 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #78183: <==negation-removal== 38235 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_d_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_d)
                           (at_d_p11))
        :effect (and
                    ; #39189: <==closure== 92134 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #92134: origin
                    (Bd_not_survivorat_s_p11)

                    ; #72182: <==negation-removal== 39189 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #82056: <==negation-removal== 92134 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #34010: origin
                    (Ba_not_survivorat_s_p12)

                    ; #43598: <==closure== 34010 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #13298: <==negation-removal== 34010 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #38893: <==negation-removal== 43598 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #21415: <==closure== 39987 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39987: origin
                    (Bb_not_survivorat_s_p12)

                    ; #33899: <==negation-removal== 21415 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #53073: <==negation-removal== 39987 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #32721: <==closure== 34925 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #34925: origin
                    (Bc_not_survivorat_s_p12)

                    ; #70262: <==negation-removal== 34925 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #74689: <==negation-removal== 32721 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_a_d_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #48296: origin
                    (Bd_not_survivorat_s_p12)

                    ; #86690: <==closure== 48296 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #37872: <==negation-removal== 86690 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #55029: <==negation-removal== 48296 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (leader_a)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #34010: origin
                    (Ba_not_survivorat_s_p12)

                    ; #43598: <==closure== 34010 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #13298: <==negation-removal== 34010 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #38893: <==negation-removal== 43598 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #21415: <==closure== 39987 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39987: origin
                    (Bb_not_survivorat_s_p12)

                    ; #33899: <==negation-removal== 21415 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #53073: <==negation-removal== 39987 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (at_b_p12)
                           (leader_c)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #32721: <==closure== 34925 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #34925: origin
                    (Bc_not_survivorat_s_p12)

                    ; #70262: <==negation-removal== 34925 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #74689: <==negation-removal== 32721 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_b_d_s
        :precondition (and (at_b_p12)
                           (leader_d)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #48296: origin
                    (Bd_not_survivorat_s_p12)

                    ; #86690: <==closure== 48296 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #37872: <==negation-removal== 86690 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #55029: <==negation-removal== 48296 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #34010: origin
                    (Ba_not_survivorat_s_p12)

                    ; #43598: <==closure== 34010 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #13298: <==negation-removal== 34010 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #38893: <==negation-removal== 43598 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (leader_b))
        :effect (and
                    ; #21415: <==closure== 39987 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39987: origin
                    (Bb_not_survivorat_s_p12)

                    ; #33899: <==negation-removal== 21415 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #53073: <==negation-removal== 39987 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #32721: <==closure== 34925 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #34925: origin
                    (Bc_not_survivorat_s_p12)

                    ; #70262: <==negation-removal== 34925 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #74689: <==negation-removal== 32721 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_c_d_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_d)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #48296: origin
                    (Bd_not_survivorat_s_p12)

                    ; #86690: <==closure== 48296 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #37872: <==negation-removal== 86690 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #55029: <==negation-removal== 48296 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_d_a_s
        :precondition (and (at_d_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #34010: origin
                    (Ba_not_survivorat_s_p12)

                    ; #43598: <==closure== 34010 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #13298: <==negation-removal== 34010 (pos)
                    (not (Pa_survivorat_s_p12))

                    ; #38893: <==negation-removal== 43598 (pos)
                    (not (Ba_survivorat_s_p12))))

    (:action badcomm_p12_d_b_s
        :precondition (and (at_d_p12)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #21415: <==closure== 39987 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39987: origin
                    (Bb_not_survivorat_s_p12)

                    ; #33899: <==negation-removal== 21415 (pos)
                    (not (Bb_survivorat_s_p12))

                    ; #53073: <==negation-removal== 39987 (pos)
                    (not (Pb_survivorat_s_p12))))

    (:action badcomm_p12_d_c_s
        :precondition (and (at_d_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #32721: <==closure== 34925 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #34925: origin
                    (Bc_not_survivorat_s_p12)

                    ; #70262: <==negation-removal== 34925 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #74689: <==negation-removal== 32721 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_d_d_s
        :precondition (and (at_d_p12)
                           (leader_d)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #48296: origin
                    (Bd_not_survivorat_s_p12)

                    ; #86690: <==closure== 48296 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #37872: <==negation-removal== 86690 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #55029: <==negation-removal== 48296 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #25458: origin
                    (Ba_not_survivorat_s_p1)

                    ; #38453: <==closure== 25458 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #52053: <==negation-removal== 25458 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #75989: <==negation-removal== 38453 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #66181: <==closure== 72333 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #72333: origin
                    (Bb_not_survivorat_s_p1)

                    ; #31774: <==negation-removal== 66181 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75592: <==negation-removal== 72333 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #28881: origin
                    (Bc_not_survivorat_s_p1)

                    ; #32283: <==closure== 28881 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #23299: <==negation-removal== 32283 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #71420: <==negation-removal== 28881 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_a_d_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_d)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #30800: origin
                    (Bd_not_survivorat_s_p1)

                    ; #46014: <==closure== 30800 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #70748: <==negation-removal== 30800 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76571: <==negation-removal== 46014 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #25458: origin
                    (Ba_not_survivorat_s_p1)

                    ; #38453: <==closure== 25458 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #52053: <==negation-removal== 25458 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #75989: <==negation-removal== 38453 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b))
        :effect (and
                    ; #66181: <==closure== 72333 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #72333: origin
                    (Bb_not_survivorat_s_p1)

                    ; #31774: <==negation-removal== 66181 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75592: <==negation-removal== 72333 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c))
        :effect (and
                    ; #28881: origin
                    (Bc_not_survivorat_s_p1)

                    ; #32283: <==closure== 28881 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #23299: <==negation-removal== 32283 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #71420: <==negation-removal== 28881 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_d))
        :effect (and
                    ; #30800: origin
                    (Bd_not_survivorat_s_p1)

                    ; #46014: <==closure== 30800 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #70748: <==negation-removal== 30800 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76571: <==negation-removal== 46014 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #25458: origin
                    (Ba_not_survivorat_s_p1)

                    ; #38453: <==closure== 25458 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #52053: <==negation-removal== 25458 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #75989: <==negation-removal== 38453 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #66181: <==closure== 72333 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #72333: origin
                    (Bb_not_survivorat_s_p1)

                    ; #31774: <==negation-removal== 66181 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75592: <==negation-removal== 72333 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #28881: origin
                    (Bc_not_survivorat_s_p1)

                    ; #32283: <==closure== 28881 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #23299: <==negation-removal== 32283 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #71420: <==negation-removal== 28881 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #30800: origin
                    (Bd_not_survivorat_s_p1)

                    ; #46014: <==closure== 30800 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #70748: <==negation-removal== 30800 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76571: <==negation-removal== 46014 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #25458: origin
                    (Ba_not_survivorat_s_p1)

                    ; #38453: <==closure== 25458 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #52053: <==negation-removal== 25458 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #75989: <==negation-removal== 38453 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #66181: <==closure== 72333 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #72333: origin
                    (Bb_not_survivorat_s_p1)

                    ; #31774: <==negation-removal== 66181 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75592: <==negation-removal== 72333 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_d_c_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (leader_c)
                           (at_d_p1))
        :effect (and
                    ; #28881: origin
                    (Bc_not_survivorat_s_p1)

                    ; #32283: <==closure== 28881 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #23299: <==negation-removal== 32283 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #71420: <==negation-removal== 28881 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #30800: origin
                    (Bd_not_survivorat_s_p1)

                    ; #46014: <==closure== 30800 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #70748: <==negation-removal== 30800 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76571: <==negation-removal== 46014 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #16747: origin
                    (Ba_not_survivorat_s_p2)

                    ; #29066: <==closure== 16747 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #26499: <==negation-removal== 16747 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #66484: <==negation-removal== 29066 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #41818: origin
                    (Bb_not_survivorat_s_p2)

                    ; #55410: <==closure== 41818 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #47615: <==negation-removal== 55410 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #83153: <==negation-removal== 41818 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #67432: <==closure== 85726 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #85726: origin
                    (Bc_not_survivorat_s_p2)

                    ; #14525: <==negation-removal== 85726 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #53689: <==negation-removal== 67432 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #20539: origin
                    (Bd_not_survivorat_s_p2)

                    ; #54796: <==closure== 20539 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #29864: <==negation-removal== 54796 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #89459: <==negation-removal== 20539 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #16747: origin
                    (Ba_not_survivorat_s_p2)

                    ; #29066: <==closure== 16747 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #26499: <==negation-removal== 16747 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #66484: <==negation-removal== 29066 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (leader_b)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #41818: origin
                    (Bb_not_survivorat_s_p2)

                    ; #55410: <==closure== 41818 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #47615: <==negation-removal== 55410 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #83153: <==negation-removal== 41818 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (leader_c)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #67432: <==closure== 85726 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #85726: origin
                    (Bc_not_survivorat_s_p2)

                    ; #14525: <==negation-removal== 85726 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #53689: <==negation-removal== 67432 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_d_s
        :precondition (and (at_b_p2)
                           (leader_d)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #20539: origin
                    (Bd_not_survivorat_s_p2)

                    ; #54796: <==closure== 20539 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #29864: <==negation-removal== 54796 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #89459: <==negation-removal== 20539 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #16747: origin
                    (Ba_not_survivorat_s_p2)

                    ; #29066: <==closure== 16747 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #26499: <==negation-removal== 16747 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #66484: <==negation-removal== 29066 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #41818: origin
                    (Bb_not_survivorat_s_p2)

                    ; #55410: <==closure== 41818 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #47615: <==negation-removal== 55410 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #83153: <==negation-removal== 41818 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #67432: <==closure== 85726 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #85726: origin
                    (Bc_not_survivorat_s_p2)

                    ; #14525: <==negation-removal== 85726 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #53689: <==negation-removal== 67432 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_d_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_d)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #20539: origin
                    (Bd_not_survivorat_s_p2)

                    ; #54796: <==closure== 20539 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #29864: <==negation-removal== 54796 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #89459: <==negation-removal== 20539 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #16747: origin
                    (Ba_not_survivorat_s_p2)

                    ; #29066: <==closure== 16747 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #26499: <==negation-removal== 16747 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #66484: <==negation-removal== 29066 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #41818: origin
                    (Bb_not_survivorat_s_p2)

                    ; #55410: <==closure== 41818 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #47615: <==negation-removal== 55410 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #83153: <==negation-removal== 41818 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_d_c_s
        :precondition (and (leader_c)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #67432: <==closure== 85726 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #85726: origin
                    (Bc_not_survivorat_s_p2)

                    ; #14525: <==negation-removal== 85726 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #53689: <==negation-removal== 67432 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_d_d_s
        :precondition (and (leader_d)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #20539: origin
                    (Bd_not_survivorat_s_p2)

                    ; #54796: <==closure== 20539 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #29864: <==negation-removal== 54796 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #89459: <==negation-removal== 20539 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #39896: origin
                    (Ba_not_survivorat_s_p3)

                    ; #59521: <==closure== 39896 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24105: <==negation-removal== 39896 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #29296: <==negation-removal== 59521 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (leader_b)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #69790: origin
                    (Bb_not_survivorat_s_p3)

                    ; #78193: <==closure== 69790 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55285: <==negation-removal== 69790 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #84435: <==negation-removal== 78193 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11452: origin
                    (Bc_not_survivorat_s_p3)

                    ; #17739: <==closure== 11452 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #13737: <==negation-removal== 17739 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #31570: <==negation-removal== 11452 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_a_d_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #34865: <==closure== 84049 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #84049: origin
                    (Bd_not_survivorat_s_p3)

                    ; #42606: <==negation-removal== 84049 (pos)
                    (not (Pd_survivorat_s_p3))

                    ; #44261: <==negation-removal== 34865 (pos)
                    (not (Bd_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #39896: origin
                    (Ba_not_survivorat_s_p3)

                    ; #59521: <==closure== 39896 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24105: <==negation-removal== 39896 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #29296: <==negation-removal== 59521 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #69790: origin
                    (Bb_not_survivorat_s_p3)

                    ; #78193: <==closure== 69790 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55285: <==negation-removal== 69790 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #84435: <==negation-removal== 78193 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #11452: origin
                    (Bc_not_survivorat_s_p3)

                    ; #17739: <==closure== 11452 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #13737: <==negation-removal== 17739 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #31570: <==negation-removal== 11452 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_d_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_d)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #34865: <==closure== 84049 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #84049: origin
                    (Bd_not_survivorat_s_p3)

                    ; #42606: <==negation-removal== 84049 (pos)
                    (not (Pd_survivorat_s_p3))

                    ; #44261: <==negation-removal== 34865 (pos)
                    (not (Bd_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #39896: origin
                    (Ba_not_survivorat_s_p3)

                    ; #59521: <==closure== 39896 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24105: <==negation-removal== 39896 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #29296: <==negation-removal== 59521 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #69790: origin
                    (Bb_not_survivorat_s_p3)

                    ; #78193: <==closure== 69790 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55285: <==negation-removal== 69790 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #84435: <==negation-removal== 78193 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #11452: origin
                    (Bc_not_survivorat_s_p3)

                    ; #17739: <==closure== 11452 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #13737: <==negation-removal== 17739 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #31570: <==negation-removal== 11452 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_d)
                           (at_c_p3))
        :effect (and
                    ; #34865: <==closure== 84049 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #84049: origin
                    (Bd_not_survivorat_s_p3)

                    ; #42606: <==negation-removal== 84049 (pos)
                    (not (Pd_survivorat_s_p3))

                    ; #44261: <==negation-removal== 34865 (pos)
                    (not (Bd_survivorat_s_p3))))

    (:action badcomm_p3_d_a_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_a))
        :effect (and
                    ; #39896: origin
                    (Ba_not_survivorat_s_p3)

                    ; #59521: <==closure== 39896 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #24105: <==negation-removal== 39896 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #29296: <==negation-removal== 59521 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_d_b_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_b))
        :effect (and
                    ; #69790: origin
                    (Bb_not_survivorat_s_p3)

                    ; #78193: <==closure== 69790 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #55285: <==negation-removal== 69790 (pos)
                    (not (Pb_survivorat_s_p3))

                    ; #84435: <==negation-removal== 78193 (pos)
                    (not (Bb_survivorat_s_p3))))

    (:action badcomm_p3_d_c_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_c))
        :effect (and
                    ; #11452: origin
                    (Bc_not_survivorat_s_p3)

                    ; #17739: <==closure== 11452 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #13737: <==negation-removal== 17739 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #31570: <==negation-removal== 11452 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_d_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_d))
        :effect (and
                    ; #34865: <==closure== 84049 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #84049: origin
                    (Bd_not_survivorat_s_p3)

                    ; #42606: <==negation-removal== 84049 (pos)
                    (not (Pd_survivorat_s_p3))

                    ; #44261: <==negation-removal== 34865 (pos)
                    (not (Bd_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #13023: <==closure== 70599 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #70599: origin
                    (Ba_not_survivorat_s_p4)

                    ; #63548: <==negation-removal== 70599 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #64128: <==negation-removal== 13023 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #27927: origin
                    (Bb_not_survivorat_s_p4)

                    ; #37087: <==closure== 27927 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #27979: <==negation-removal== 27927 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #78184: <==negation-removal== 37087 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #24053: <==closure== 85136 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #85136: origin
                    (Bc_not_survivorat_s_p4)

                    ; #33132: <==negation-removal== 24053 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #61424: <==negation-removal== 85136 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_a_d_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_d)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #56881: <==closure== 74337 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #74337: origin
                    (Bd_not_survivorat_s_p4)

                    ; #18588: <==negation-removal== 56881 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #23506: <==negation-removal== 74337 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #13023: <==closure== 70599 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #70599: origin
                    (Ba_not_survivorat_s_p4)

                    ; #63548: <==negation-removal== 70599 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #64128: <==negation-removal== 13023 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #27927: origin
                    (Bb_not_survivorat_s_p4)

                    ; #37087: <==closure== 27927 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #27979: <==negation-removal== 27927 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #78184: <==negation-removal== 37087 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #24053: <==closure== 85136 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #85136: origin
                    (Bc_not_survivorat_s_p4)

                    ; #33132: <==negation-removal== 24053 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #61424: <==negation-removal== 85136 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #56881: <==closure== 74337 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #74337: origin
                    (Bd_not_survivorat_s_p4)

                    ; #18588: <==negation-removal== 56881 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #23506: <==negation-removal== 74337 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #13023: <==closure== 70599 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #70599: origin
                    (Ba_not_survivorat_s_p4)

                    ; #63548: <==negation-removal== 70599 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #64128: <==negation-removal== 13023 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27927: origin
                    (Bb_not_survivorat_s_p4)

                    ; #37087: <==closure== 27927 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #27979: <==negation-removal== 27927 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #78184: <==negation-removal== 37087 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #24053: <==closure== 85136 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #85136: origin
                    (Bc_not_survivorat_s_p4)

                    ; #33132: <==negation-removal== 24053 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #61424: <==negation-removal== 85136 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_d)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #56881: <==closure== 74337 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #74337: origin
                    (Bd_not_survivorat_s_p4)

                    ; #18588: <==negation-removal== 56881 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #23506: <==negation-removal== 74337 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_d_a_s
        :precondition (and (leader_a)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #13023: <==closure== 70599 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #70599: origin
                    (Ba_not_survivorat_s_p4)

                    ; #63548: <==negation-removal== 70599 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #64128: <==negation-removal== 13023 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_d_b_s
        :precondition (and (leader_b)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #27927: origin
                    (Bb_not_survivorat_s_p4)

                    ; #37087: <==closure== 27927 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #27979: <==negation-removal== 27927 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #78184: <==negation-removal== 37087 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_c)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #24053: <==closure== 85136 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #85136: origin
                    (Bc_not_survivorat_s_p4)

                    ; #33132: <==negation-removal== 24053 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #61424: <==negation-removal== 85136 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_d_d_s
        :precondition (and (leader_d)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #56881: <==closure== 74337 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #74337: origin
                    (Bd_not_survivorat_s_p4)

                    ; #18588: <==negation-removal== 56881 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #23506: <==negation-removal== 74337 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #30205: origin
                    (Ba_not_survivorat_s_p5)

                    ; #64520: <==closure== 30205 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #17981: <==negation-removal== 30205 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #38910: <==negation-removal== 64520 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #41018: origin
                    (Bb_not_survivorat_s_p5)

                    ; #93308: <==closure== 41018 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #34734: <==negation-removal== 41018 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #87512: <==negation-removal== 93308 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #23869: <==closure== 65836 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #65836: origin
                    (Bc_not_survivorat_s_p5)

                    ; #29097: <==negation-removal== 23869 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #29936: <==negation-removal== 65836 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_a_d_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #17407: <==closure== 38951 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #38951: origin
                    (Bd_not_survivorat_s_p5)

                    ; #35482: <==negation-removal== 17407 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #76773: <==negation-removal== 38951 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #30205: origin
                    (Ba_not_survivorat_s_p5)

                    ; #64520: <==closure== 30205 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #17981: <==negation-removal== 30205 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #38910: <==negation-removal== 64520 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #41018: origin
                    (Bb_not_survivorat_s_p5)

                    ; #93308: <==closure== 41018 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #34734: <==negation-removal== 41018 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #87512: <==negation-removal== 93308 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #23869: <==closure== 65836 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #65836: origin
                    (Bc_not_survivorat_s_p5)

                    ; #29097: <==negation-removal== 23869 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #29936: <==negation-removal== 65836 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_d_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_d)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #17407: <==closure== 38951 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #38951: origin
                    (Bd_not_survivorat_s_p5)

                    ; #35482: <==negation-removal== 17407 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #76773: <==negation-removal== 38951 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (leader_a)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #30205: origin
                    (Ba_not_survivorat_s_p5)

                    ; #64520: <==closure== 30205 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #17981: <==negation-removal== 30205 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #38910: <==negation-removal== 64520 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #41018: origin
                    (Bb_not_survivorat_s_p5)

                    ; #93308: <==closure== 41018 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #34734: <==negation-removal== 41018 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #87512: <==negation-removal== 93308 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #23869: <==closure== 65836 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #65836: origin
                    (Bc_not_survivorat_s_p5)

                    ; #29097: <==negation-removal== 23869 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #29936: <==negation-removal== 65836 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_d_s
        :precondition (and (leader_d)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #17407: <==closure== 38951 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #38951: origin
                    (Bd_not_survivorat_s_p5)

                    ; #35482: <==negation-removal== 17407 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #76773: <==negation-removal== 38951 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #30205: origin
                    (Ba_not_survivorat_s_p5)

                    ; #64520: <==closure== 30205 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #17981: <==negation-removal== 30205 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #38910: <==negation-removal== 64520 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #41018: origin
                    (Bb_not_survivorat_s_p5)

                    ; #93308: <==closure== 41018 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #34734: <==negation-removal== 41018 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #87512: <==negation-removal== 93308 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #23869: <==closure== 65836 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #65836: origin
                    (Bc_not_survivorat_s_p5)

                    ; #29097: <==negation-removal== 23869 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #29936: <==negation-removal== 65836 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #17407: <==closure== 38951 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #38951: origin
                    (Bd_not_survivorat_s_p5)

                    ; #35482: <==negation-removal== 17407 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #76773: <==negation-removal== 38951 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (leader_a)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #79552: <==closure== 83162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #83162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #28040: <==negation-removal== 79552 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #31859: <==negation-removal== 83162 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22751: origin
                    (Bb_not_survivorat_s_p6)

                    ; #33768: <==closure== 22751 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #37394: <==negation-removal== 22751 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #52293: <==negation-removal== 33768 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (leader_c)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #16850: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48716: <==closure== 16850 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #26529: <==negation-removal== 48716 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #60947: <==negation-removal== 16850 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_a_d_s
        :precondition (and (at_a_p6)
                           (leader_d)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #53680: origin
                    (Bd_not_survivorat_s_p6)

                    ; #81698: <==closure== 53680 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #17525: <==negation-removal== 53680 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #86396: <==negation-removal== 81698 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #79552: <==closure== 83162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #83162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #28040: <==negation-removal== 79552 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #31859: <==negation-removal== 83162 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #22751: origin
                    (Bb_not_survivorat_s_p6)

                    ; #33768: <==closure== 22751 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #37394: <==negation-removal== 22751 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #52293: <==negation-removal== 33768 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #16850: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48716: <==closure== 16850 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #26529: <==negation-removal== 48716 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #60947: <==negation-removal== 16850 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #53680: origin
                    (Bd_not_survivorat_s_p6)

                    ; #81698: <==closure== 53680 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #17525: <==negation-removal== 53680 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #86396: <==negation-removal== 81698 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #79552: <==closure== 83162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #83162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #28040: <==negation-removal== 79552 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #31859: <==negation-removal== 83162 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #22751: origin
                    (Bb_not_survivorat_s_p6)

                    ; #33768: <==closure== 22751 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #37394: <==negation-removal== 22751 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #52293: <==negation-removal== 33768 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #16850: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48716: <==closure== 16850 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #26529: <==negation-removal== 48716 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #60947: <==negation-removal== 16850 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_d_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #53680: origin
                    (Bd_not_survivorat_s_p6)

                    ; #81698: <==closure== 53680 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #17525: <==negation-removal== 53680 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #86396: <==negation-removal== 81698 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p6_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #79552: <==closure== 83162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #83162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #28040: <==negation-removal== 79552 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #31859: <==negation-removal== 83162 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #22751: origin
                    (Bb_not_survivorat_s_p6)

                    ; #33768: <==closure== 22751 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #37394: <==negation-removal== 22751 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #52293: <==negation-removal== 33768 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_d_c_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (leader_c)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #16850: origin
                    (Bc_not_survivorat_s_p6)

                    ; #48716: <==closure== 16850 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #26529: <==negation-removal== 48716 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #60947: <==negation-removal== 16850 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #53680: origin
                    (Bd_not_survivorat_s_p6)

                    ; #81698: <==closure== 53680 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #17525: <==negation-removal== 53680 (pos)
                    (not (Pd_survivorat_s_p6))

                    ; #86396: <==negation-removal== 81698 (pos)
                    (not (Bd_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #17342: <==closure== 84416 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84416: origin
                    (Ba_not_survivorat_s_p7)

                    ; #53723: <==negation-removal== 17342 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80078: <==negation-removal== 84416 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #12611: origin
                    (Bb_not_survivorat_s_p7)

                    ; #42397: <==closure== 12611 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51328: <==negation-removal== 12611 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #73251: <==negation-removal== 42397 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #52428: <==closure== 71875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #71875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #45935: <==negation-removal== 71875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #73840: <==negation-removal== 52428 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_a_d_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #50152: <==closure== 72672 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #72672: origin
                    (Bd_not_survivorat_s_p7)

                    ; #44406: <==negation-removal== 72672 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #87427: <==negation-removal== 50152 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #17342: <==closure== 84416 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84416: origin
                    (Ba_not_survivorat_s_p7)

                    ; #53723: <==negation-removal== 17342 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80078: <==negation-removal== 84416 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #12611: origin
                    (Bb_not_survivorat_s_p7)

                    ; #42397: <==closure== 12611 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51328: <==negation-removal== 12611 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #73251: <==negation-removal== 42397 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #52428: <==closure== 71875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #71875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #45935: <==negation-removal== 71875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #73840: <==negation-removal== 52428 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_d_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #50152: <==closure== 72672 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #72672: origin
                    (Bd_not_survivorat_s_p7)

                    ; #44406: <==negation-removal== 72672 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #87427: <==negation-removal== 50152 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7))
        :effect (and
                    ; #17342: <==closure== 84416 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84416: origin
                    (Ba_not_survivorat_s_p7)

                    ; #53723: <==negation-removal== 17342 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80078: <==negation-removal== 84416 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #12611: origin
                    (Bb_not_survivorat_s_p7)

                    ; #42397: <==closure== 12611 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51328: <==negation-removal== 12611 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #73251: <==negation-removal== 42397 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #52428: <==closure== 71875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #71875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #45935: <==negation-removal== 71875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #73840: <==negation-removal== 52428 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_d_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #50152: <==closure== 72672 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #72672: origin
                    (Bd_not_survivorat_s_p7)

                    ; #44406: <==negation-removal== 72672 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #87427: <==negation-removal== 50152 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #17342: <==closure== 84416 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #84416: origin
                    (Ba_not_survivorat_s_p7)

                    ; #53723: <==negation-removal== 17342 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #80078: <==negation-removal== 84416 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_d_b_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_b)
                           (at_d_p7))
        :effect (and
                    ; #12611: origin
                    (Bb_not_survivorat_s_p7)

                    ; #42397: <==closure== 12611 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #51328: <==negation-removal== 12611 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #73251: <==negation-removal== 42397 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_d_c_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_c)
                           (at_d_p7))
        :effect (and
                    ; #52428: <==closure== 71875 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #71875: origin
                    (Bc_not_survivorat_s_p7)

                    ; #45935: <==negation-removal== 71875 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #73840: <==negation-removal== 52428 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_d_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_d)
                           (at_d_p7))
        :effect (and
                    ; #50152: <==closure== 72672 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #72672: origin
                    (Bd_not_survivorat_s_p7)

                    ; #44406: <==negation-removal== 72672 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #87427: <==negation-removal== 50152 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #59984: <==closure== 68695 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #68695: origin
                    (Ba_not_survivorat_s_p8)

                    ; #70573: <==negation-removal== 68695 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #87050: <==negation-removal== 59984 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #68603: origin
                    (Bb_not_survivorat_s_p8)

                    ; #85346: <==closure== 68603 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #15362: <==negation-removal== 85346 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #61280: <==negation-removal== 68603 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #24945: <==closure== 32813 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #32813: origin
                    (Bc_not_survivorat_s_p8)

                    ; #19636: <==negation-removal== 24945 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #27866: <==negation-removal== 32813 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_a_d_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_d)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #57793: <==closure== 75634 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #75634: origin
                    (Bd_not_survivorat_s_p8)

                    ; #33911: <==negation-removal== 57793 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #78207: <==negation-removal== 75634 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #59984: <==closure== 68695 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #68695: origin
                    (Ba_not_survivorat_s_p8)

                    ; #70573: <==negation-removal== 68695 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #87050: <==negation-removal== 59984 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_b))
        :effect (and
                    ; #68603: origin
                    (Bb_not_survivorat_s_p8)

                    ; #85346: <==closure== 68603 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #15362: <==negation-removal== 85346 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #61280: <==negation-removal== 68603 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #24945: <==closure== 32813 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #32813: origin
                    (Bc_not_survivorat_s_p8)

                    ; #19636: <==negation-removal== 24945 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #27866: <==negation-removal== 32813 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #57793: <==closure== 75634 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #75634: origin
                    (Bd_not_survivorat_s_p8)

                    ; #33911: <==negation-removal== 57793 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #78207: <==negation-removal== 75634 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #59984: <==closure== 68695 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #68695: origin
                    (Ba_not_survivorat_s_p8)

                    ; #70573: <==negation-removal== 68695 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #87050: <==negation-removal== 59984 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #68603: origin
                    (Bb_not_survivorat_s_p8)

                    ; #85346: <==closure== 68603 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #15362: <==negation-removal== 85346 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #61280: <==negation-removal== 68603 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #24945: <==closure== 32813 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #32813: origin
                    (Bc_not_survivorat_s_p8)

                    ; #19636: <==negation-removal== 24945 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #27866: <==negation-removal== 32813 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_d_s
        :precondition (and (Bc_survivorat_s_p8)
                           (leader_d)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #57793: <==closure== 75634 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #75634: origin
                    (Bd_not_survivorat_s_p8)

                    ; #33911: <==negation-removal== 57793 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #78207: <==negation-removal== 75634 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_d_a_s
        :precondition (and (leader_a)
                           (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #59984: <==closure== 68695 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #68695: origin
                    (Ba_not_survivorat_s_p8)

                    ; #70573: <==negation-removal== 68695 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #87050: <==negation-removal== 59984 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_d_b_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #68603: origin
                    (Bb_not_survivorat_s_p8)

                    ; #85346: <==closure== 68603 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #15362: <==negation-removal== 85346 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #61280: <==negation-removal== 68603 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (leader_c)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #24945: <==closure== 32813 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #32813: origin
                    (Bc_not_survivorat_s_p8)

                    ; #19636: <==negation-removal== 24945 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #27866: <==negation-removal== 32813 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #57793: <==closure== 75634 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #75634: origin
                    (Bd_not_survivorat_s_p8)

                    ; #33911: <==negation-removal== 57793 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #78207: <==negation-removal== 75634 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #18852: origin
                    (Ba_not_survivorat_s_p9)

                    ; #61447: <==closure== 18852 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #24830: <==negation-removal== 18852 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #82512: <==negation-removal== 61447 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #13762: origin
                    (Bb_not_survivorat_s_p9)

                    ; #53326: <==closure== 13762 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #31308: <==negation-removal== 13762 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #60702: <==negation-removal== 53326 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #67825: <==closure== 80585 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80585: origin
                    (Bc_not_survivorat_s_p9)

                    ; #31934: <==negation-removal== 80585 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #42521: <==negation-removal== 67825 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_a_d_s
        :precondition (and (leader_d)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #12999: origin
                    (Bd_not_survivorat_s_p9)

                    ; #83651: <==closure== 12999 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #20824: <==negation-removal== 83651 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #22729: <==negation-removal== 12999 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #18852: origin
                    (Ba_not_survivorat_s_p9)

                    ; #61447: <==closure== 18852 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #24830: <==negation-removal== 18852 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #82512: <==negation-removal== 61447 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b))
        :effect (and
                    ; #13762: origin
                    (Bb_not_survivorat_s_p9)

                    ; #53326: <==closure== 13762 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #31308: <==negation-removal== 13762 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #60702: <==negation-removal== 53326 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9))
        :effect (and
                    ; #67825: <==closure== 80585 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80585: origin
                    (Bc_not_survivorat_s_p9)

                    ; #31934: <==negation-removal== 80585 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #42521: <==negation-removal== 67825 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_d_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d)
                           (at_b_p9))
        :effect (and
                    ; #12999: origin
                    (Bd_not_survivorat_s_p9)

                    ; #83651: <==closure== 12999 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #20824: <==negation-removal== 83651 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #22729: <==negation-removal== 12999 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #18852: origin
                    (Ba_not_survivorat_s_p9)

                    ; #61447: <==closure== 18852 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #24830: <==negation-removal== 18852 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #82512: <==negation-removal== 61447 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #13762: origin
                    (Bb_not_survivorat_s_p9)

                    ; #53326: <==closure== 13762 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #31308: <==negation-removal== 13762 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #60702: <==negation-removal== 53326 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #67825: <==closure== 80585 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80585: origin
                    (Bc_not_survivorat_s_p9)

                    ; #31934: <==negation-removal== 80585 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #42521: <==negation-removal== 67825 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_d_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_d)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #12999: origin
                    (Bd_not_survivorat_s_p9)

                    ; #83651: <==closure== 12999 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #20824: <==negation-removal== 83651 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #22729: <==negation-removal== 12999 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action badcomm_p9_d_a_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_a)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #18852: origin
                    (Ba_not_survivorat_s_p9)

                    ; #61447: <==closure== 18852 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #24830: <==negation-removal== 18852 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #82512: <==negation-removal== 61447 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_d_b_s
        :precondition (and (at_d_p9)
                           (leader_b)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #13762: origin
                    (Bb_not_survivorat_s_p9)

                    ; #53326: <==closure== 13762 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #31308: <==negation-removal== 13762 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #60702: <==negation-removal== 53326 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_c)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #67825: <==closure== 80585 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #80585: origin
                    (Bc_not_survivorat_s_p9)

                    ; #31934: <==negation-removal== 80585 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #42521: <==negation-removal== 67825 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_d)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #12999: origin
                    (Bd_not_survivorat_s_p9)

                    ; #83651: <==closure== 12999 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #20824: <==negation-removal== 83651 (pos)
                    (not (Bd_survivorat_s_p9))

                    ; #22729: <==negation-removal== 12999 (pos)
                    (not (Pd_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_a)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #32299: origin
                    (Ba_survivorat_s_p10)

                    ; #88641: <==closure== 32299 (pos)
                    (Pa_survivorat_s_p10)

                    ; #47902: <==negation-removal== 32299 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #72397: <==negation-removal== 88641 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #74021: origin
                    (Bb_survivorat_s_p10)

                    ; #82852: <==closure== 74021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #12442: <==negation-removal== 74021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #61021: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #39331: <==closure== 77679 (pos)
                    (Pc_survivorat_s_p10)

                    ; #77679: origin
                    (Bc_survivorat_s_p10)

                    ; #62180: <==negation-removal== 39331 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #87916: <==negation-removal== 77679 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #15794: origin
                    (Bd_survivorat_s_p10)

                    ; #62570: <==closure== 15794 (pos)
                    (Pd_survivorat_s_p10)

                    ; #14565: <==negation-removal== 62570 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #62617: <==negation-removal== 15794 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #32299: origin
                    (Ba_survivorat_s_p10)

                    ; #88641: <==closure== 32299 (pos)
                    (Pa_survivorat_s_p10)

                    ; #47902: <==negation-removal== 32299 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #72397: <==negation-removal== 88641 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #74021: origin
                    (Bb_survivorat_s_p10)

                    ; #82852: <==closure== 74021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #12442: <==negation-removal== 74021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #61021: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #39331: <==closure== 77679 (pos)
                    (Pc_survivorat_s_p10)

                    ; #77679: origin
                    (Bc_survivorat_s_p10)

                    ; #62180: <==negation-removal== 39331 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #87916: <==negation-removal== 77679 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (leader_d)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #15794: origin
                    (Bd_survivorat_s_p10)

                    ; #62570: <==closure== 15794 (pos)
                    (Pd_survivorat_s_p10)

                    ; #14565: <==negation-removal== 62570 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #62617: <==negation-removal== 15794 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10))
        :effect (and
                    ; #32299: origin
                    (Ba_survivorat_s_p10)

                    ; #88641: <==closure== 32299 (pos)
                    (Pa_survivorat_s_p10)

                    ; #47902: <==negation-removal== 32299 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #72397: <==negation-removal== 88641 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_b))
        :effect (and
                    ; #74021: origin
                    (Bb_survivorat_s_p10)

                    ; #82852: <==closure== 74021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #12442: <==negation-removal== 74021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #61021: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_c)
                           (at_c_p10))
        :effect (and
                    ; #39331: <==closure== 77679 (pos)
                    (Pc_survivorat_s_p10)

                    ; #77679: origin
                    (Bc_survivorat_s_p10)

                    ; #62180: <==negation-removal== 39331 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #87916: <==negation-removal== 77679 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_d_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (leader_d)
                           (at_c_p10))
        :effect (and
                    ; #15794: origin
                    (Bd_survivorat_s_p10)

                    ; #62570: <==closure== 15794 (pos)
                    (Pd_survivorat_s_p10)

                    ; #14565: <==negation-removal== 62570 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #62617: <==negation-removal== 15794 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p10_d_a_s
        :precondition (and (leader_a)
                           (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #32299: origin
                    (Ba_survivorat_s_p10)

                    ; #88641: <==closure== 32299 (pos)
                    (Pa_survivorat_s_p10)

                    ; #47902: <==negation-removal== 32299 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #72397: <==negation-removal== 88641 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_d_b_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #74021: origin
                    (Bb_survivorat_s_p10)

                    ; #82852: <==closure== 74021 (pos)
                    (Pb_survivorat_s_p10)

                    ; #12442: <==negation-removal== 74021 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #61021: <==negation-removal== 82852 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_d_c_s
        :precondition (and (at_d_p10)
                           (leader_c)
                           (Pd_survivorat_s_p10)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #39331: <==closure== 77679 (pos)
                    (Pc_survivorat_s_p10)

                    ; #77679: origin
                    (Bc_survivorat_s_p10)

                    ; #62180: <==negation-removal== 39331 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #87916: <==negation-removal== 77679 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_d_d_s
        :precondition (and (at_d_p10)
                           (Pd_survivorat_s_p10)
                           (leader_d)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #15794: origin
                    (Bd_survivorat_s_p10)

                    ; #62570: <==closure== 15794 (pos)
                    (Pd_survivorat_s_p10)

                    ; #14565: <==negation-removal== 62570 (pos)
                    (not (Bd_not_survivorat_s_p10))

                    ; #62617: <==negation-removal== 15794 (pos)
                    (not (Pd_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #27930: <==closure== 81970 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81970: origin
                    (Ba_survivorat_s_p11)

                    ; #35410: <==negation-removal== 81970 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #66639: <==negation-removal== 27930 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b)
                           (at_a_p11))
        :effect (and
                    ; #52823: <==closure== 66648 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66648: origin
                    (Bb_survivorat_s_p11)

                    ; #25342: <==negation-removal== 66648 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53441: <==negation-removal== 52823 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Ba_survivorat_s_p11)
                           (leader_c)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #50032: origin
                    (Bc_survivorat_s_p11)

                    ; #78183: <==closure== 50032 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38235: <==negation-removal== 78183 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #44418: <==negation-removal== 50032 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_a_d_s
        :precondition (and (Ba_survivorat_s_p11)
                           (leader_d)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #72182: origin
                    (Bd_survivorat_s_p11)

                    ; #82056: <==closure== 72182 (pos)
                    (Pd_survivorat_s_p11)

                    ; #39189: <==negation-removal== 72182 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #92134: <==negation-removal== 82056 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #27930: <==closure== 81970 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81970: origin
                    (Ba_survivorat_s_p11)

                    ; #35410: <==negation-removal== 81970 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #66639: <==negation-removal== 27930 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #52823: <==closure== 66648 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66648: origin
                    (Bb_survivorat_s_p11)

                    ; #25342: <==negation-removal== 66648 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53441: <==negation-removal== 52823 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #50032: origin
                    (Bc_survivorat_s_p11)

                    ; #78183: <==closure== 50032 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38235: <==negation-removal== 78183 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #44418: <==negation-removal== 50032 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_d_s
        :precondition (and (leader_d)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #72182: origin
                    (Bd_survivorat_s_p11)

                    ; #82056: <==closure== 72182 (pos)
                    (Pd_survivorat_s_p11)

                    ; #39189: <==negation-removal== 72182 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #92134: <==negation-removal== 82056 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #27930: <==closure== 81970 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81970: origin
                    (Ba_survivorat_s_p11)

                    ; #35410: <==negation-removal== 81970 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #66639: <==negation-removal== 27930 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_b))
        :effect (and
                    ; #52823: <==closure== 66648 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66648: origin
                    (Bb_survivorat_s_p11)

                    ; #25342: <==negation-removal== 66648 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53441: <==negation-removal== 52823 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11)
                           (leader_c))
        :effect (and
                    ; #50032: origin
                    (Bc_survivorat_s_p11)

                    ; #78183: <==closure== 50032 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38235: <==negation-removal== 78183 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #44418: <==negation-removal== 50032 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_d_s
        :precondition (and (Bc_survivorat_s_p11)
                           (leader_d)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #72182: origin
                    (Bd_survivorat_s_p11)

                    ; #82056: <==closure== 72182 (pos)
                    (Pd_survivorat_s_p11)

                    ; #39189: <==negation-removal== 72182 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #92134: <==negation-removal== 82056 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p11_d_a_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_a)
                           (at_d_p11))
        :effect (and
                    ; #27930: <==closure== 81970 (pos)
                    (Pa_survivorat_s_p11)

                    ; #81970: origin
                    (Ba_survivorat_s_p11)

                    ; #35410: <==negation-removal== 81970 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #66639: <==negation-removal== 27930 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_d_b_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_b))
        :effect (and
                    ; #52823: <==closure== 66648 (pos)
                    (Pb_survivorat_s_p11)

                    ; #66648: origin
                    (Bb_survivorat_s_p11)

                    ; #25342: <==negation-removal== 66648 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #53441: <==negation-removal== 52823 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_d_c_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_c)
                           (at_d_p11))
        :effect (and
                    ; #50032: origin
                    (Bc_survivorat_s_p11)

                    ; #78183: <==closure== 50032 (pos)
                    (Pc_survivorat_s_p11)

                    ; #38235: <==negation-removal== 78183 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #44418: <==negation-removal== 50032 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_d_d_s
        :precondition (and (Pd_survivorat_s_p11)
                           (Bd_survivorat_s_p11)
                           (leader_d)
                           (at_d_p11))
        :effect (and
                    ; #72182: origin
                    (Bd_survivorat_s_p11)

                    ; #82056: <==closure== 72182 (pos)
                    (Pd_survivorat_s_p11)

                    ; #39189: <==negation-removal== 72182 (pos)
                    (not (Pd_not_survivorat_s_p11))

                    ; #92134: <==negation-removal== 82056 (pos)
                    (not (Bd_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #13298: <==closure== 38893 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38893: origin
                    (Ba_survivorat_s_p12)

                    ; #34010: <==negation-removal== 13298 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #43598: <==negation-removal== 38893 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #33899: origin
                    (Bb_survivorat_s_p12)

                    ; #53073: <==closure== 33899 (pos)
                    (Pb_survivorat_s_p12)

                    ; #21415: <==negation-removal== 33899 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39987: <==negation-removal== 53073 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #70262: <==closure== 74689 (pos)
                    (Pc_survivorat_s_p12)

                    ; #74689: origin
                    (Bc_survivorat_s_p12)

                    ; #32721: <==negation-removal== 74689 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #34925: <==negation-removal== 70262 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_a_d_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #37872: origin
                    (Bd_survivorat_s_p12)

                    ; #55029: <==closure== 37872 (pos)
                    (Pd_survivorat_s_p12)

                    ; #48296: <==negation-removal== 55029 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #86690: <==negation-removal== 37872 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (at_b_p12)
                           (leader_a)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #13298: <==closure== 38893 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38893: origin
                    (Ba_survivorat_s_p12)

                    ; #34010: <==negation-removal== 13298 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #43598: <==negation-removal== 38893 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #33899: origin
                    (Bb_survivorat_s_p12)

                    ; #53073: <==closure== 33899 (pos)
                    (Pb_survivorat_s_p12)

                    ; #21415: <==negation-removal== 33899 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39987: <==negation-removal== 53073 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (at_b_p12)
                           (leader_c)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #70262: <==closure== 74689 (pos)
                    (Pc_survivorat_s_p12)

                    ; #74689: origin
                    (Bc_survivorat_s_p12)

                    ; #32721: <==negation-removal== 74689 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #34925: <==negation-removal== 70262 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_d_s
        :precondition (and (at_b_p12)
                           (leader_d)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12))
        :effect (and
                    ; #37872: origin
                    (Bd_survivorat_s_p12)

                    ; #55029: <==closure== 37872 (pos)
                    (Pd_survivorat_s_p12)

                    ; #48296: <==negation-removal== 55029 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #86690: <==negation-removal== 37872 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #13298: <==closure== 38893 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38893: origin
                    (Ba_survivorat_s_p12)

                    ; #34010: <==negation-removal== 13298 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #43598: <==negation-removal== 38893 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (leader_b))
        :effect (and
                    ; #33899: origin
                    (Bb_survivorat_s_p12)

                    ; #53073: <==closure== 33899 (pos)
                    (Pb_survivorat_s_p12)

                    ; #21415: <==negation-removal== 33899 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39987: <==negation-removal== 53073 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #70262: <==closure== 74689 (pos)
                    (Pc_survivorat_s_p12)

                    ; #74689: origin
                    (Bc_survivorat_s_p12)

                    ; #32721: <==negation-removal== 74689 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #34925: <==negation-removal== 70262 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_d_s
        :precondition (and (Pc_survivorat_s_p12)
                           (leader_d)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #37872: origin
                    (Bd_survivorat_s_p12)

                    ; #55029: <==closure== 37872 (pos)
                    (Pd_survivorat_s_p12)

                    ; #48296: <==negation-removal== 55029 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #86690: <==negation-removal== 37872 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_d_a_s
        :precondition (and (at_d_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #13298: <==closure== 38893 (pos)
                    (Pa_survivorat_s_p12)

                    ; #38893: origin
                    (Ba_survivorat_s_p12)

                    ; #34010: <==negation-removal== 13298 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #43598: <==negation-removal== 38893 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_d_b_s
        :precondition (and (at_d_p12)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #33899: origin
                    (Bb_survivorat_s_p12)

                    ; #53073: <==closure== 33899 (pos)
                    (Pb_survivorat_s_p12)

                    ; #21415: <==negation-removal== 33899 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #39987: <==negation-removal== 53073 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_d_c_s
        :precondition (and (at_d_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #70262: <==closure== 74689 (pos)
                    (Pc_survivorat_s_p12)

                    ; #74689: origin
                    (Bc_survivorat_s_p12)

                    ; #32721: <==negation-removal== 74689 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #34925: <==negation-removal== 70262 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_d_d_s
        :precondition (and (at_d_p12)
                           (leader_d)
                           (Pd_survivorat_s_p12)
                           (Bd_survivorat_s_p12))
        :effect (and
                    ; #37872: origin
                    (Bd_survivorat_s_p12)

                    ; #55029: <==closure== 37872 (pos)
                    (Pd_survivorat_s_p12)

                    ; #48296: <==negation-removal== 55029 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #86690: <==negation-removal== 37872 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #52053: <==closure== 75989 (pos)
                    (Pa_survivorat_s_p1)

                    ; #75989: origin
                    (Ba_survivorat_s_p1)

                    ; #25458: <==negation-removal== 52053 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #38453: <==negation-removal== 75989 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (leader_b)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #31774: origin
                    (Bb_survivorat_s_p1)

                    ; #75592: <==closure== 31774 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66181: <==negation-removal== 31774 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72333: <==negation-removal== 75592 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p1)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #23299: origin
                    (Bc_survivorat_s_p1)

                    ; #71420: <==closure== 23299 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28881: <==negation-removal== 71420 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #32283: <==negation-removal== 23299 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_a_d_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_d)
                           (at_a_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #70748: <==closure== 76571 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76571: origin
                    (Bd_survivorat_s_p1)

                    ; #30800: <==negation-removal== 70748 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #46014: <==negation-removal== 76571 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #52053: <==closure== 75989 (pos)
                    (Pa_survivorat_s_p1)

                    ; #75989: origin
                    (Ba_survivorat_s_p1)

                    ; #25458: <==negation-removal== 52053 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #38453: <==negation-removal== 75989 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b))
        :effect (and
                    ; #31774: origin
                    (Bb_survivorat_s_p1)

                    ; #75592: <==closure== 31774 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66181: <==negation-removal== 31774 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72333: <==negation-removal== 75592 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c))
        :effect (and
                    ; #23299: origin
                    (Bc_survivorat_s_p1)

                    ; #71420: <==closure== 23299 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28881: <==negation-removal== 71420 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #32283: <==negation-removal== 23299 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_d_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_d))
        :effect (and
                    ; #70748: <==closure== 76571 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76571: origin
                    (Bd_survivorat_s_p1)

                    ; #30800: <==negation-removal== 70748 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #46014: <==negation-removal== 76571 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #52053: <==closure== 75989 (pos)
                    (Pa_survivorat_s_p1)

                    ; #75989: origin
                    (Ba_survivorat_s_p1)

                    ; #25458: <==negation-removal== 52053 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #38453: <==negation-removal== 75989 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #31774: origin
                    (Bb_survivorat_s_p1)

                    ; #75592: <==closure== 31774 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66181: <==negation-removal== 31774 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72333: <==negation-removal== 75592 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (leader_c)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #23299: origin
                    (Bc_survivorat_s_p1)

                    ; #71420: <==closure== 23299 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28881: <==negation-removal== 71420 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #32283: <==negation-removal== 23299 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #70748: <==closure== 76571 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76571: origin
                    (Bd_survivorat_s_p1)

                    ; #30800: <==negation-removal== 70748 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #46014: <==negation-removal== 76571 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #52053: <==closure== 75989 (pos)
                    (Pa_survivorat_s_p1)

                    ; #75989: origin
                    (Ba_survivorat_s_p1)

                    ; #25458: <==negation-removal== 52053 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #38453: <==negation-removal== 75989 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #31774: origin
                    (Bb_survivorat_s_p1)

                    ; #75592: <==closure== 31774 (pos)
                    (Pb_survivorat_s_p1)

                    ; #66181: <==negation-removal== 31774 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72333: <==negation-removal== 75592 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_d_c_s
        :precondition (and (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (leader_c)
                           (at_d_p1))
        :effect (and
                    ; #23299: origin
                    (Bc_survivorat_s_p1)

                    ; #71420: <==closure== 23299 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28881: <==negation-removal== 71420 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #32283: <==negation-removal== 23299 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1)
                           (at_d_p1))
        :effect (and
                    ; #70748: <==closure== 76571 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76571: origin
                    (Bd_survivorat_s_p1)

                    ; #30800: <==negation-removal== 70748 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #46014: <==negation-removal== 76571 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a))
        :effect (and
                    ; #26499: <==closure== 66484 (pos)
                    (Pa_survivorat_s_p2)

                    ; #66484: origin
                    (Ba_survivorat_s_p2)

                    ; #16747: <==negation-removal== 26499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29066: <==negation-removal== 66484 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #47615: origin
                    (Bb_survivorat_s_p2)

                    ; #83153: <==closure== 47615 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41818: <==negation-removal== 83153 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55410: <==negation-removal== 47615 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #14525: <==closure== 53689 (pos)
                    (Pc_survivorat_s_p2)

                    ; #53689: origin
                    (Bc_survivorat_s_p2)

                    ; #67432: <==negation-removal== 53689 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85726: <==negation-removal== 14525 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #29864: origin
                    (Bd_survivorat_s_p2)

                    ; #89459: <==closure== 29864 (pos)
                    (Pd_survivorat_s_p2)

                    ; #20539: <==negation-removal== 89459 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #54796: <==negation-removal== 29864 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #26499: <==closure== 66484 (pos)
                    (Pa_survivorat_s_p2)

                    ; #66484: origin
                    (Ba_survivorat_s_p2)

                    ; #16747: <==negation-removal== 26499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29066: <==negation-removal== 66484 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #47615: origin
                    (Bb_survivorat_s_p2)

                    ; #83153: <==closure== 47615 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41818: <==negation-removal== 83153 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55410: <==negation-removal== 47615 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #14525: <==closure== 53689 (pos)
                    (Pc_survivorat_s_p2)

                    ; #53689: origin
                    (Bc_survivorat_s_p2)

                    ; #67432: <==negation-removal== 53689 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85726: <==negation-removal== 14525 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_d_s
        :precondition (and (at_b_p2)
                           (leader_d)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #29864: origin
                    (Bd_survivorat_s_p2)

                    ; #89459: <==closure== 29864 (pos)
                    (Pd_survivorat_s_p2)

                    ; #20539: <==negation-removal== 89459 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #54796: <==negation-removal== 29864 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #26499: <==closure== 66484 (pos)
                    (Pa_survivorat_s_p2)

                    ; #66484: origin
                    (Ba_survivorat_s_p2)

                    ; #16747: <==negation-removal== 26499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29066: <==negation-removal== 66484 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #47615: origin
                    (Bb_survivorat_s_p2)

                    ; #83153: <==closure== 47615 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41818: <==negation-removal== 83153 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55410: <==negation-removal== 47615 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_c)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #14525: <==closure== 53689 (pos)
                    (Pc_survivorat_s_p2)

                    ; #53689: origin
                    (Bc_survivorat_s_p2)

                    ; #67432: <==negation-removal== 53689 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85726: <==negation-removal== 14525 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_d_s
        :precondition (and (Pc_survivorat_s_p2)
                           (leader_d)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #29864: origin
                    (Bd_survivorat_s_p2)

                    ; #89459: <==closure== 29864 (pos)
                    (Pd_survivorat_s_p2)

                    ; #20539: <==negation-removal== 89459 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #54796: <==negation-removal== 29864 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #26499: <==closure== 66484 (pos)
                    (Pa_survivorat_s_p2)

                    ; #66484: origin
                    (Ba_survivorat_s_p2)

                    ; #16747: <==negation-removal== 26499 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #29066: <==negation-removal== 66484 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #47615: origin
                    (Bb_survivorat_s_p2)

                    ; #83153: <==closure== 47615 (pos)
                    (Pb_survivorat_s_p2)

                    ; #41818: <==negation-removal== 83153 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #55410: <==negation-removal== 47615 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_c_s
        :precondition (and (leader_c)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #14525: <==closure== 53689 (pos)
                    (Pc_survivorat_s_p2)

                    ; #53689: origin
                    (Bc_survivorat_s_p2)

                    ; #67432: <==negation-removal== 53689 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #85726: <==negation-removal== 14525 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_d_d_s
        :precondition (and (leader_d)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #29864: origin
                    (Bd_survivorat_s_p2)

                    ; #89459: <==closure== 29864 (pos)
                    (Pd_survivorat_s_p2)

                    ; #20539: <==negation-removal== 89459 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #54796: <==negation-removal== 29864 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #24105: <==closure== 29296 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29296: origin
                    (Ba_survivorat_s_p3)

                    ; #39896: <==negation-removal== 24105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59521: <==negation-removal== 29296 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (leader_b)
                           (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #55285: <==closure== 84435 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84435: origin
                    (Bb_survivorat_s_p3)

                    ; #69790: <==negation-removal== 55285 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78193: <==negation-removal== 84435 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_c)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #13737: origin
                    (Bc_survivorat_s_p3)

                    ; #31570: <==closure== 13737 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11452: <==negation-removal== 31570 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #17739: <==negation-removal== 13737 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_a_d_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #42606: <==closure== 44261 (pos)
                    (Pd_survivorat_s_p3)

                    ; #44261: origin
                    (Bd_survivorat_s_p3)

                    ; #34865: <==negation-removal== 44261 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #84049: <==negation-removal== 42606 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #24105: <==closure== 29296 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29296: origin
                    (Ba_survivorat_s_p3)

                    ; #39896: <==negation-removal== 24105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59521: <==negation-removal== 29296 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #55285: <==closure== 84435 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84435: origin
                    (Bb_survivorat_s_p3)

                    ; #69790: <==negation-removal== 55285 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78193: <==negation-removal== 84435 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_c)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #13737: origin
                    (Bc_survivorat_s_p3)

                    ; #31570: <==closure== 13737 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11452: <==negation-removal== 31570 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #17739: <==negation-removal== 13737 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_d_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_d)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #42606: <==closure== 44261 (pos)
                    (Pd_survivorat_s_p3)

                    ; #44261: origin
                    (Bd_survivorat_s_p3)

                    ; #34865: <==negation-removal== 44261 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #84049: <==negation-removal== 42606 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #24105: <==closure== 29296 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29296: origin
                    (Ba_survivorat_s_p3)

                    ; #39896: <==negation-removal== 24105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59521: <==negation-removal== 29296 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b)
                           (at_c_p3))
        :effect (and
                    ; #55285: <==closure== 84435 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84435: origin
                    (Bb_survivorat_s_p3)

                    ; #69790: <==negation-removal== 55285 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78193: <==negation-removal== 84435 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c)
                           (at_c_p3))
        :effect (and
                    ; #13737: origin
                    (Bc_survivorat_s_p3)

                    ; #31570: <==closure== 13737 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11452: <==negation-removal== 31570 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #17739: <==negation-removal== 13737 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_d_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_d)
                           (at_c_p3))
        :effect (and
                    ; #42606: <==closure== 44261 (pos)
                    (Pd_survivorat_s_p3)

                    ; #44261: origin
                    (Bd_survivorat_s_p3)

                    ; #34865: <==negation-removal== 44261 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #84049: <==negation-removal== 42606 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_d_a_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_a))
        :effect (and
                    ; #24105: <==closure== 29296 (pos)
                    (Pa_survivorat_s_p3)

                    ; #29296: origin
                    (Ba_survivorat_s_p3)

                    ; #39896: <==negation-removal== 24105 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #59521: <==negation-removal== 29296 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_b_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_b))
        :effect (and
                    ; #55285: <==closure== 84435 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84435: origin
                    (Bb_survivorat_s_p3)

                    ; #69790: <==negation-removal== 55285 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78193: <==negation-removal== 84435 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_c_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_c))
        :effect (and
                    ; #13737: origin
                    (Bc_survivorat_s_p3)

                    ; #31570: <==closure== 13737 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11452: <==negation-removal== 31570 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #17739: <==negation-removal== 13737 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_d_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_d))
        :effect (and
                    ; #42606: <==closure== 44261 (pos)
                    (Pd_survivorat_s_p3)

                    ; #44261: origin
                    (Bd_survivorat_s_p3)

                    ; #34865: <==negation-removal== 44261 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #84049: <==negation-removal== 42606 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #63548: <==closure== 64128 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64128: origin
                    (Ba_survivorat_s_p4)

                    ; #13023: <==negation-removal== 64128 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #70599: <==negation-removal== 63548 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #27979: <==closure== 78184 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78184: origin
                    (Bb_survivorat_s_p4)

                    ; #27927: <==negation-removal== 27979 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37087: <==negation-removal== 78184 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #33132: origin
                    (Bc_survivorat_s_p4)

                    ; #61424: <==closure== 33132 (pos)
                    (Pc_survivorat_s_p4)

                    ; #24053: <==negation-removal== 33132 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85136: <==negation-removal== 61424 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_a_d_s
        :precondition (and (Pa_survivorat_s_p4)
                           (leader_d)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18588: origin
                    (Bd_survivorat_s_p4)

                    ; #23506: <==closure== 18588 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56881: <==negation-removal== 18588 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #74337: <==negation-removal== 23506 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #63548: <==closure== 64128 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64128: origin
                    (Ba_survivorat_s_p4)

                    ; #13023: <==negation-removal== 64128 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #70599: <==negation-removal== 63548 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #27979: <==closure== 78184 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78184: origin
                    (Bb_survivorat_s_p4)

                    ; #27927: <==negation-removal== 27979 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37087: <==negation-removal== 78184 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #33132: origin
                    (Bc_survivorat_s_p4)

                    ; #61424: <==closure== 33132 (pos)
                    (Pc_survivorat_s_p4)

                    ; #24053: <==negation-removal== 33132 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85136: <==negation-removal== 61424 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #18588: origin
                    (Bd_survivorat_s_p4)

                    ; #23506: <==closure== 18588 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56881: <==negation-removal== 18588 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #74337: <==negation-removal== 23506 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #63548: <==closure== 64128 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64128: origin
                    (Ba_survivorat_s_p4)

                    ; #13023: <==negation-removal== 64128 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #70599: <==negation-removal== 63548 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #27979: <==closure== 78184 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78184: origin
                    (Bb_survivorat_s_p4)

                    ; #27927: <==negation-removal== 27979 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37087: <==negation-removal== 78184 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #33132: origin
                    (Bc_survivorat_s_p4)

                    ; #61424: <==closure== 33132 (pos)
                    (Pc_survivorat_s_p4)

                    ; #24053: <==negation-removal== 33132 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85136: <==negation-removal== 61424 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_d_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_d)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #18588: origin
                    (Bd_survivorat_s_p4)

                    ; #23506: <==closure== 18588 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56881: <==negation-removal== 18588 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #74337: <==negation-removal== 23506 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_d_a_s
        :precondition (and (leader_a)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #63548: <==closure== 64128 (pos)
                    (Pa_survivorat_s_p4)

                    ; #64128: origin
                    (Ba_survivorat_s_p4)

                    ; #13023: <==negation-removal== 64128 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #70599: <==negation-removal== 63548 (pos)
                    (not (Ba_not_survivorat_s_p4))))

    (:action comm_p4_d_b_s
        :precondition (and (leader_b)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #27979: <==closure== 78184 (pos)
                    (Pb_survivorat_s_p4)

                    ; #78184: origin
                    (Bb_survivorat_s_p4)

                    ; #27927: <==negation-removal== 27979 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37087: <==negation-removal== 78184 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_c)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #33132: origin
                    (Bc_survivorat_s_p4)

                    ; #61424: <==closure== 33132 (pos)
                    (Pc_survivorat_s_p4)

                    ; #24053: <==negation-removal== 33132 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #85136: <==negation-removal== 61424 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_d_s
        :precondition (and (leader_d)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #18588: origin
                    (Bd_survivorat_s_p4)

                    ; #23506: <==closure== 18588 (pos)
                    (Pd_survivorat_s_p4)

                    ; #56881: <==negation-removal== 18588 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #74337: <==negation-removal== 23506 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a))
        :effect (and
                    ; #17981: <==closure== 38910 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38910: origin
                    (Ba_survivorat_s_p5)

                    ; #30205: <==negation-removal== 17981 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #64520: <==negation-removal== 38910 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #34734: <==closure== 87512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87512: origin
                    (Bb_survivorat_s_p5)

                    ; #41018: <==negation-removal== 34734 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #93308: <==negation-removal== 87512 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #29097: origin
                    (Bc_survivorat_s_p5)

                    ; #29936: <==closure== 29097 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23869: <==negation-removal== 29097 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65836: <==negation-removal== 29936 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_a_d_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #35482: origin
                    (Bd_survivorat_s_p5)

                    ; #76773: <==closure== 35482 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17407: <==negation-removal== 35482 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #38951: <==negation-removal== 76773 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #17981: <==closure== 38910 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38910: origin
                    (Ba_survivorat_s_p5)

                    ; #30205: <==negation-removal== 17981 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #64520: <==negation-removal== 38910 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #34734: <==closure== 87512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87512: origin
                    (Bb_survivorat_s_p5)

                    ; #41018: <==negation-removal== 34734 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #93308: <==negation-removal== 87512 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #29097: origin
                    (Bc_survivorat_s_p5)

                    ; #29936: <==closure== 29097 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23869: <==negation-removal== 29097 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65836: <==negation-removal== 29936 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_d_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_d)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #35482: origin
                    (Bd_survivorat_s_p5)

                    ; #76773: <==closure== 35482 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17407: <==negation-removal== 35482 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #38951: <==negation-removal== 76773 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (leader_a)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #17981: <==closure== 38910 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38910: origin
                    (Ba_survivorat_s_p5)

                    ; #30205: <==negation-removal== 17981 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #64520: <==negation-removal== 38910 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b))
        :effect (and
                    ; #34734: <==closure== 87512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87512: origin
                    (Bb_survivorat_s_p5)

                    ; #41018: <==negation-removal== 34734 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #93308: <==negation-removal== 87512 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #29097: origin
                    (Bc_survivorat_s_p5)

                    ; #29936: <==closure== 29097 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23869: <==negation-removal== 29097 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65836: <==negation-removal== 29936 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_d_s
        :precondition (and (leader_d)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #35482: origin
                    (Bd_survivorat_s_p5)

                    ; #76773: <==closure== 35482 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17407: <==negation-removal== 35482 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #38951: <==negation-removal== 76773 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #17981: <==closure== 38910 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38910: origin
                    (Ba_survivorat_s_p5)

                    ; #30205: <==negation-removal== 17981 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #64520: <==negation-removal== 38910 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #34734: <==closure== 87512 (pos)
                    (Pb_survivorat_s_p5)

                    ; #87512: origin
                    (Bb_survivorat_s_p5)

                    ; #41018: <==negation-removal== 34734 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #93308: <==negation-removal== 87512 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #29097: origin
                    (Bc_survivorat_s_p5)

                    ; #29936: <==closure== 29097 (pos)
                    (Pc_survivorat_s_p5)

                    ; #23869: <==negation-removal== 29097 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65836: <==negation-removal== 29936 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #35482: origin
                    (Bd_survivorat_s_p5)

                    ; #76773: <==closure== 35482 (pos)
                    (Pd_survivorat_s_p5)

                    ; #17407: <==negation-removal== 35482 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #38951: <==negation-removal== 76773 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #28040: origin
                    (Ba_survivorat_s_p6)

                    ; #31859: <==closure== 28040 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79552: <==negation-removal== 28040 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83162: <==negation-removal== 31859 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #37394: <==closure== 52293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #52293: origin
                    (Bb_survivorat_s_p6)

                    ; #22751: <==negation-removal== 37394 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #33768: <==negation-removal== 52293 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (at_a_p6)
                           (leader_c)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #26529: origin
                    (Bc_survivorat_s_p6)

                    ; #60947: <==closure== 26529 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16850: <==negation-removal== 60947 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48716: <==negation-removal== 26529 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_a_d_s
        :precondition (and (at_a_p6)
                           (leader_d)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #17525: <==closure== 86396 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86396: origin
                    (Bd_survivorat_s_p6)

                    ; #53680: <==negation-removal== 17525 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #81698: <==negation-removal== 86396 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #28040: origin
                    (Ba_survivorat_s_p6)

                    ; #31859: <==closure== 28040 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79552: <==negation-removal== 28040 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83162: <==negation-removal== 31859 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #37394: <==closure== 52293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #52293: origin
                    (Bb_survivorat_s_p6)

                    ; #22751: <==negation-removal== 37394 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #33768: <==negation-removal== 52293 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #26529: origin
                    (Bc_survivorat_s_p6)

                    ; #60947: <==closure== 26529 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16850: <==negation-removal== 60947 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48716: <==negation-removal== 26529 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_d_s
        :precondition (and (leader_d)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #17525: <==closure== 86396 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86396: origin
                    (Bd_survivorat_s_p6)

                    ; #53680: <==negation-removal== 17525 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #81698: <==negation-removal== 86396 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_a))
        :effect (and
                    ; #28040: origin
                    (Ba_survivorat_s_p6)

                    ; #31859: <==closure== 28040 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79552: <==negation-removal== 28040 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83162: <==negation-removal== 31859 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #37394: <==closure== 52293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #52293: origin
                    (Bb_survivorat_s_p6)

                    ; #22751: <==negation-removal== 37394 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #33768: <==negation-removal== 52293 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #26529: origin
                    (Bc_survivorat_s_p6)

                    ; #60947: <==closure== 26529 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16850: <==negation-removal== 60947 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48716: <==negation-removal== 26529 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_d_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #17525: <==closure== 86396 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86396: origin
                    (Bd_survivorat_s_p6)

                    ; #53680: <==negation-removal== 17525 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #81698: <==negation-removal== 86396 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #28040: origin
                    (Ba_survivorat_s_p6)

                    ; #31859: <==closure== 28040 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79552: <==negation-removal== 28040 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #83162: <==negation-removal== 31859 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_b_s
        :precondition (and (leader_b)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #37394: <==closure== 52293 (pos)
                    (Pb_survivorat_s_p6)

                    ; #52293: origin
                    (Bb_survivorat_s_p6)

                    ; #22751: <==negation-removal== 37394 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #33768: <==negation-removal== 52293 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_d_c_s
        :precondition (and (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (leader_c)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #26529: origin
                    (Bc_survivorat_s_p6)

                    ; #60947: <==closure== 26529 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16850: <==negation-removal== 60947 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #48716: <==negation-removal== 26529 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_d_d_s
        :precondition (and (leader_d)
                           (Bd_survivorat_s_p6)
                           (at_d_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #17525: <==closure== 86396 (pos)
                    (Pd_survivorat_s_p6)

                    ; #86396: origin
                    (Bd_survivorat_s_p6)

                    ; #53680: <==negation-removal== 17525 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #81698: <==negation-removal== 86396 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #53723: origin
                    (Ba_survivorat_s_p7)

                    ; #80078: <==closure== 53723 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17342: <==negation-removal== 53723 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84416: <==negation-removal== 80078 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Pa_survivorat_s_p7)
                           (leader_b)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #51328: <==closure== 73251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #73251: origin
                    (Bb_survivorat_s_p7)

                    ; #12611: <==negation-removal== 51328 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42397: <==negation-removal== 73251 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #45935: <==closure== 73840 (pos)
                    (Pc_survivorat_s_p7)

                    ; #73840: origin
                    (Bc_survivorat_s_p7)

                    ; #52428: <==negation-removal== 73840 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71875: <==negation-removal== 45935 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_a_d_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #44406: <==closure== 87427 (pos)
                    (Pd_survivorat_s_p7)

                    ; #87427: origin
                    (Bd_survivorat_s_p7)

                    ; #50152: <==negation-removal== 87427 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72672: <==negation-removal== 44406 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_a)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #53723: origin
                    (Ba_survivorat_s_p7)

                    ; #80078: <==closure== 53723 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17342: <==negation-removal== 53723 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84416: <==negation-removal== 80078 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #51328: <==closure== 73251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #73251: origin
                    (Bb_survivorat_s_p7)

                    ; #12611: <==negation-removal== 51328 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42397: <==negation-removal== 73251 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #45935: <==closure== 73840 (pos)
                    (Pc_survivorat_s_p7)

                    ; #73840: origin
                    (Bc_survivorat_s_p7)

                    ; #52428: <==negation-removal== 73840 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71875: <==negation-removal== 45935 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_d_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #44406: <==closure== 87427 (pos)
                    (Pd_survivorat_s_p7)

                    ; #87427: origin
                    (Bd_survivorat_s_p7)

                    ; #50152: <==negation-removal== 87427 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72672: <==negation-removal== 44406 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7))
        :effect (and
                    ; #53723: origin
                    (Ba_survivorat_s_p7)

                    ; #80078: <==closure== 53723 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17342: <==negation-removal== 53723 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84416: <==negation-removal== 80078 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #51328: <==closure== 73251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #73251: origin
                    (Bb_survivorat_s_p7)

                    ; #12611: <==negation-removal== 51328 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42397: <==negation-removal== 73251 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #45935: <==closure== 73840 (pos)
                    (Pc_survivorat_s_p7)

                    ; #73840: origin
                    (Bc_survivorat_s_p7)

                    ; #52428: <==negation-removal== 73840 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71875: <==negation-removal== 45935 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_d_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #44406: <==closure== 87427 (pos)
                    (Pd_survivorat_s_p7)

                    ; #87427: origin
                    (Bd_survivorat_s_p7)

                    ; #50152: <==negation-removal== 87427 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72672: <==negation-removal== 44406 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (at_d_p7))
        :effect (and
                    ; #53723: origin
                    (Ba_survivorat_s_p7)

                    ; #80078: <==closure== 53723 (pos)
                    (Pa_survivorat_s_p7)

                    ; #17342: <==negation-removal== 53723 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #84416: <==negation-removal== 80078 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_b_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_b)
                           (at_d_p7))
        :effect (and
                    ; #51328: <==closure== 73251 (pos)
                    (Pb_survivorat_s_p7)

                    ; #73251: origin
                    (Bb_survivorat_s_p7)

                    ; #12611: <==negation-removal== 51328 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #42397: <==negation-removal== 73251 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_d_c_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_c)
                           (at_d_p7))
        :effect (and
                    ; #45935: <==closure== 73840 (pos)
                    (Pc_survivorat_s_p7)

                    ; #73840: origin
                    (Bc_survivorat_s_p7)

                    ; #52428: <==negation-removal== 73840 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #71875: <==negation-removal== 45935 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_d_d_s
        :precondition (and (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7)
                           (leader_d)
                           (at_d_p7))
        :effect (and
                    ; #44406: <==closure== 87427 (pos)
                    (Pd_survivorat_s_p7)

                    ; #87427: origin
                    (Bd_survivorat_s_p7)

                    ; #50152: <==negation-removal== 87427 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #72672: <==negation-removal== 44406 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #70573: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87050: origin
                    (Ba_survivorat_s_p8)

                    ; #59984: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68695: <==negation-removal== 70573 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #15362: origin
                    (Bb_survivorat_s_p8)

                    ; #61280: <==closure== 15362 (pos)
                    (Pb_survivorat_s_p8)

                    ; #68603: <==negation-removal== 61280 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85346: <==negation-removal== 15362 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_c)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #19636: origin
                    (Bc_survivorat_s_p8)

                    ; #27866: <==closure== 19636 (pos)
                    (Pc_survivorat_s_p8)

                    ; #24945: <==negation-removal== 19636 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32813: <==negation-removal== 27866 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_a_d_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_d)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #33911: origin
                    (Bd_survivorat_s_p8)

                    ; #78207: <==closure== 33911 (pos)
                    (Pd_survivorat_s_p8)

                    ; #57793: <==negation-removal== 33911 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #75634: <==negation-removal== 78207 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #70573: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87050: origin
                    (Ba_survivorat_s_p8)

                    ; #59984: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68695: <==negation-removal== 70573 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_b))
        :effect (and
                    ; #15362: origin
                    (Bb_survivorat_s_p8)

                    ; #61280: <==closure== 15362 (pos)
                    (Pb_survivorat_s_p8)

                    ; #68603: <==negation-removal== 61280 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85346: <==negation-removal== 15362 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_c)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #19636: origin
                    (Bc_survivorat_s_p8)

                    ; #27866: <==closure== 19636 (pos)
                    (Pc_survivorat_s_p8)

                    ; #24945: <==negation-removal== 19636 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32813: <==negation-removal== 27866 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #33911: origin
                    (Bd_survivorat_s_p8)

                    ; #78207: <==closure== 33911 (pos)
                    (Pd_survivorat_s_p8)

                    ; #57793: <==negation-removal== 33911 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #75634: <==negation-removal== 78207 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #70573: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87050: origin
                    (Ba_survivorat_s_p8)

                    ; #59984: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68695: <==negation-removal== 70573 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #15362: origin
                    (Bb_survivorat_s_p8)

                    ; #61280: <==closure== 15362 (pos)
                    (Pb_survivorat_s_p8)

                    ; #68603: <==negation-removal== 61280 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85346: <==negation-removal== 15362 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #19636: origin
                    (Bc_survivorat_s_p8)

                    ; #27866: <==closure== 19636 (pos)
                    (Pc_survivorat_s_p8)

                    ; #24945: <==negation-removal== 19636 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32813: <==negation-removal== 27866 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_d_s
        :precondition (and (Bc_survivorat_s_p8)
                           (leader_d)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #33911: origin
                    (Bd_survivorat_s_p8)

                    ; #78207: <==closure== 33911 (pos)
                    (Pd_survivorat_s_p8)

                    ; #57793: <==negation-removal== 33911 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #75634: <==negation-removal== 78207 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_d_a_s
        :precondition (and (leader_a)
                           (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #70573: <==closure== 87050 (pos)
                    (Pa_survivorat_s_p8)

                    ; #87050: origin
                    (Ba_survivorat_s_p8)

                    ; #59984: <==negation-removal== 87050 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #68695: <==negation-removal== 70573 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_b_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #15362: origin
                    (Bb_survivorat_s_p8)

                    ; #61280: <==closure== 15362 (pos)
                    (Pb_survivorat_s_p8)

                    ; #68603: <==negation-removal== 61280 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85346: <==negation-removal== 15362 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (leader_c)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #19636: origin
                    (Bc_survivorat_s_p8)

                    ; #27866: <==closure== 19636 (pos)
                    (Pc_survivorat_s_p8)

                    ; #24945: <==negation-removal== 19636 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #32813: <==negation-removal== 27866 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #33911: origin
                    (Bd_survivorat_s_p8)

                    ; #78207: <==closure== 33911 (pos)
                    (Pd_survivorat_s_p8)

                    ; #57793: <==negation-removal== 33911 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #75634: <==negation-removal== 78207 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #24830: <==closure== 82512 (pos)
                    (Pa_survivorat_s_p9)

                    ; #82512: origin
                    (Ba_survivorat_s_p9)

                    ; #18852: <==negation-removal== 24830 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #61447: <==negation-removal== 82512 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #31308: <==closure== 60702 (pos)
                    (Pb_survivorat_s_p9)

                    ; #60702: origin
                    (Bb_survivorat_s_p9)

                    ; #13762: <==negation-removal== 31308 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53326: <==negation-removal== 60702 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #31934: <==closure== 42521 (pos)
                    (Pc_survivorat_s_p9)

                    ; #42521: origin
                    (Bc_survivorat_s_p9)

                    ; #67825: <==negation-removal== 42521 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80585: <==negation-removal== 31934 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_a_d_s
        :precondition (and (leader_d)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #20824: origin
                    (Bd_survivorat_s_p9)

                    ; #22729: <==closure== 20824 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12999: <==negation-removal== 22729 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #83651: <==negation-removal== 20824 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #24830: <==closure== 82512 (pos)
                    (Pa_survivorat_s_p9)

                    ; #82512: origin
                    (Ba_survivorat_s_p9)

                    ; #18852: <==negation-removal== 24830 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #61447: <==negation-removal== 82512 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b))
        :effect (and
                    ; #31308: <==closure== 60702 (pos)
                    (Pb_survivorat_s_p9)

                    ; #60702: origin
                    (Bb_survivorat_s_p9)

                    ; #13762: <==negation-removal== 31308 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53326: <==negation-removal== 60702 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9))
        :effect (and
                    ; #31934: <==closure== 42521 (pos)
                    (Pc_survivorat_s_p9)

                    ; #42521: origin
                    (Bc_survivorat_s_p9)

                    ; #67825: <==negation-removal== 42521 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80585: <==negation-removal== 31934 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_d_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d)
                           (at_b_p9))
        :effect (and
                    ; #20824: origin
                    (Bd_survivorat_s_p9)

                    ; #22729: <==closure== 20824 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12999: <==negation-removal== 22729 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #83651: <==negation-removal== 20824 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #24830: <==closure== 82512 (pos)
                    (Pa_survivorat_s_p9)

                    ; #82512: origin
                    (Ba_survivorat_s_p9)

                    ; #18852: <==negation-removal== 24830 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #61447: <==negation-removal== 82512 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #31308: <==closure== 60702 (pos)
                    (Pb_survivorat_s_p9)

                    ; #60702: origin
                    (Bb_survivorat_s_p9)

                    ; #13762: <==negation-removal== 31308 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53326: <==negation-removal== 60702 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #31934: <==closure== 42521 (pos)
                    (Pc_survivorat_s_p9)

                    ; #42521: origin
                    (Bc_survivorat_s_p9)

                    ; #67825: <==negation-removal== 42521 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80585: <==negation-removal== 31934 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_d_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_d)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #20824: origin
                    (Bd_survivorat_s_p9)

                    ; #22729: <==closure== 20824 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12999: <==negation-removal== 22729 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #83651: <==negation-removal== 20824 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action comm_p9_d_a_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_a)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #24830: <==closure== 82512 (pos)
                    (Pa_survivorat_s_p9)

                    ; #82512: origin
                    (Ba_survivorat_s_p9)

                    ; #18852: <==negation-removal== 24830 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #61447: <==negation-removal== 82512 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_b_s
        :precondition (and (at_d_p9)
                           (leader_b)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #31308: <==closure== 60702 (pos)
                    (Pb_survivorat_s_p9)

                    ; #60702: origin
                    (Bb_survivorat_s_p9)

                    ; #13762: <==negation-removal== 31308 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #53326: <==negation-removal== 60702 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_c)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #31934: <==closure== 42521 (pos)
                    (Pc_survivorat_s_p9)

                    ; #42521: origin
                    (Bc_survivorat_s_p9)

                    ; #67825: <==negation-removal== 42521 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #80585: <==negation-removal== 31934 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (leader_d)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #20824: origin
                    (Bd_survivorat_s_p9)

                    ; #22729: <==closure== 20824 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12999: <==negation-removal== 22729 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #83651: <==negation-removal== 20824 (pos)
                    (not (Pd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #73609: origin
                    (not_at_a_p10)

                    ; #85354: origin
                    (at_a_p1)

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #61288: origin
                    (at_a_p10)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #61325: origin
                    (at_a_p11)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68107: origin
                    (at_a_p2)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3)
                           (not (leader_a)))
        :effect (and
                    ; #72339: origin
                    (at_a_p3)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #56442: origin
                    (at_a_p5)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #58050: origin
                    (at_a_p7)

                    ; #73609: origin
                    (not_at_a_p10)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #73609: origin
                    (not_at_a_p10)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #73609: origin
                    (not_at_a_p10)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #61288: <==negation-removal== 73609 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #85354: origin
                    (at_a_p1)

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #61288: origin
                    (at_a_p10)

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #41424: origin
                    (at_a_p12)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #30510: origin
                    (at_a_p6)

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20139: origin
                    (not_at_a_p11)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #61325: <==negation-removal== 20139 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #85354: origin
                    (at_a_p1)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #61288: origin
                    (at_a_p10)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #47651: origin
                    (not_at_a_p12)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #68107: origin
                    (at_a_p2)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #47651: origin
                    (not_at_a_p12)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #56442: origin
                    (at_a_p5)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #47651: origin
                    (not_at_a_p12)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #58050: origin
                    (at_a_p7)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #83936: origin
                    (at_a_p8)

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #47651: origin
                    (not_at_a_p12)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #41424: <==negation-removal== 47651 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #85354: origin
                    (at_a_p1)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #61288: origin
                    (at_a_p10)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #61325: origin
                    (at_a_p11)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #68107: origin
                    (at_a_p2)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #72339: origin
                    (at_a_p3)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #56442: origin
                    (at_a_p5)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #58050: origin
                    (at_a_p7)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #83936: origin
                    (at_a_p8)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #85058: origin
                    (at_a_p9)

                    ; #86101: origin
                    (not_at_a_p1)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #85354: <==negation-removal== 86101 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #85354: origin
                    (at_a_p1)

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #61288: origin
                    (at_a_p10)

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #54702: origin
                    (not_at_a_p2)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #54702: origin
                    (not_at_a_p2)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #54702: origin
                    (not_at_a_p2)

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #54702: origin
                    (not_at_a_p2)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #68107: <==negation-removal== 54702 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #85354: origin
                    (at_a_p1)

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #61288: origin
                    (at_a_p10)

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #41424: origin
                    (at_a_p12)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #30510: origin
                    (at_a_p6)

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #18149: origin
                    (not_at_a_p3)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #72339: <==negation-removal== 18149 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #85354: origin
                    (at_a_p1)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #61288: origin
                    (at_a_p10)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #41424: origin
                    (at_a_p12)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #68107: origin
                    (at_a_p2)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #36011: origin
                    (not_at_a_p4)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #83936: origin
                    (at_a_p8)

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #36011: origin
                    (not_at_a_p4)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #46159: <==negation-removal== 36011 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #85354: origin
                    (at_a_p1)

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #61288: origin
                    (at_a_p10)

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #45112: origin
                    (not_at_a_p5)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #45112: origin
                    (not_at_a_p5)

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45112: origin
                    (not_at_a_p5)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #56442: <==negation-removal== 45112 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #63080: origin
                    (not_at_a_p6)

                    ; #85354: origin
                    (at_a_p1)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61288: origin
                    (at_a_p10)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11)
                           (not (leader_a)))
        :effect (and
                    ; #61325: origin
                    (at_a_p11)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #63080: origin
                    (not_at_a_p6)

                    ; #68107: origin
                    (at_a_p2)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #63080: origin
                    (not_at_a_p6)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #56442: origin
                    (at_a_p5)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #58050: origin
                    (at_a_p7)

                    ; #63080: origin
                    (not_at_a_p6)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #63080: origin
                    (not_at_a_p6)

                    ; #83936: origin
                    (at_a_p8)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #63080: origin
                    (not_at_a_p6)

                    ; #85058: origin
                    (at_a_p9)

                    ; #30510: <==negation-removal== 63080 (pos)
                    (not (at_a_p6))

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #85354: origin
                    (at_a_p1)

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #61288: origin
                    (at_a_p10)

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #45765: origin
                    (not_at_a_p7)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #45765: origin
                    (not_at_a_p7)

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #45765: origin
                    (not_at_a_p7)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #58050: <==negation-removal== 45765 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #85354: origin
                    (at_a_p1)

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #61288: origin
                    (at_a_p10)

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #41424: origin
                    (at_a_p12)

                    ; #53888: origin
                    (not_at_a_p8)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #46159: origin
                    (at_a_p4)

                    ; #53888: origin
                    (not_at_a_p8)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #53888: origin
                    (not_at_a_p8)

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #53888: origin
                    (not_at_a_p8)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #83936: <==negation-removal== 53888 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #85354: origin
                    (at_a_p1)

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))

                    ; #86101: <==negation-removal== 85354 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #61288: origin
                    (at_a_p10)

                    ; #73609: <==negation-removal== 61288 (pos)
                    (not (not_at_a_p10))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #61325: origin
                    (at_a_p11)

                    ; #20139: <==negation-removal== 61325 (pos)
                    (not (not_at_a_p11))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #41424: origin
                    (at_a_p12)

                    ; #47651: <==negation-removal== 41424 (pos)
                    (not (not_at_a_p12))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #68107: origin
                    (at_a_p2)

                    ; #54702: <==negation-removal== 68107 (pos)
                    (not (not_at_a_p2))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #72339: origin
                    (at_a_p3)

                    ; #18149: <==negation-removal== 72339 (pos)
                    (not (not_at_a_p3))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #46159: origin
                    (at_a_p4)

                    ; #36011: <==negation-removal== 46159 (pos)
                    (not (not_at_a_p4))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #56442: origin
                    (at_a_p5)

                    ; #45112: <==negation-removal== 56442 (pos)
                    (not (not_at_a_p5))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #30510: origin
                    (at_a_p6)

                    ; #33251: origin
                    (not_at_a_p9)

                    ; #63080: <==negation-removal== 30510 (pos)
                    (not (not_at_a_p6))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #58050: origin
                    (at_a_p7)

                    ; #45765: <==negation-removal== 58050 (pos)
                    (not (not_at_a_p7))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #83936: origin
                    (at_a_p8)

                    ; #53888: <==negation-removal== 83936 (pos)
                    (not (not_at_a_p8))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #33251: origin
                    (not_at_a_p9)

                    ; #85058: origin
                    (at_a_p9)

                    ; #33251: <==negation-removal== 85058 (pos)
                    (not (not_at_a_p9))

                    ; #85058: <==negation-removal== 33251 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #51767: origin
                    (at_b_p1)

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #27067: origin
                    (not_at_b_p10)

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #33531: origin
                    (at_b_p12)

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #43269: origin
                    (at_b_p2)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #52490: origin
                    (at_b_p5)

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #27067: origin
                    (not_at_b_p10)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #70769: origin
                    (at_b_p7)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #49707: origin
                    (at_b_p8)

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #27067: origin
                    (not_at_b_p10)

                    ; #28184: origin
                    (at_b_p9)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #80257: <==negation-removal== 27067 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1)
                           (not (leader_b)))
        :effect (and
                    ; #51767: origin
                    (at_b_p1)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10)
                           (not (leader_b)))
        :effect (and
                    ; #80257: origin
                    (at_b_p10)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #86588: origin
                    (not_at_b_p11)

                    ; #88936: origin
                    (at_b_p3)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #55324: origin
                    (at_b_p4)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52490: origin
                    (at_b_p5)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #70769: origin
                    (at_b_p7)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #86588: origin
                    (not_at_b_p11)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #24100: <==negation-removal== 86588 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #51767: origin
                    (at_b_p1)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #80257: origin
                    (at_b_p10)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #88936: origin
                    (at_b_p3)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #55324: origin
                    (at_b_p4)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52490: origin
                    (at_b_p5)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #70769: origin
                    (at_b_p7)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #98531: origin
                    (not_at_b_p12)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #33531: <==negation-removal== 98531 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #51767: origin
                    (at_b_p1)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #80257: origin
                    (at_b_p10)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #88602: origin
                    (not_at_b_p1)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #55324: origin
                    (at_b_p4)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52490: origin
                    (at_b_p5)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #70769: origin
                    (at_b_p7)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #88602: origin
                    (not_at_b_p1)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #51767: <==negation-removal== 88602 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #51767: origin
                    (at_b_p1)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #43812: origin
                    (not_at_b_p2)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #43812: origin
                    (not_at_b_p2)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #43812: origin
                    (not_at_b_p2)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #52490: origin
                    (at_b_p5)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #43812: origin
                    (not_at_b_p2)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #70769: origin
                    (at_b_p7)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43812: origin
                    (not_at_b_p2)

                    ; #49707: origin
                    (at_b_p8)

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #43812: origin
                    (not_at_b_p2)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #43269: <==negation-removal== 43812 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #51767: origin
                    (at_b_p1)

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #25026: origin
                    (not_at_b_p3)

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #33531: origin
                    (at_b_p12)

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #43269: origin
                    (at_b_p2)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #52490: origin
                    (at_b_p5)

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #25026: origin
                    (not_at_b_p3)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #70769: origin
                    (at_b_p7)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #49707: origin
                    (at_b_p8)

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #25026: origin
                    (not_at_b_p3)

                    ; #28184: origin
                    (at_b_p9)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #88936: <==negation-removal== 25026 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #51767: origin
                    (at_b_p1)

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #39600: origin
                    (not_at_b_p4)

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #39600: origin
                    (not_at_b_p4)

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #43269: origin
                    (at_b_p2)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #52490: origin
                    (at_b_p5)

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #39600: origin
                    (not_at_b_p4)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #70769: origin
                    (at_b_p7)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #39600: origin
                    (not_at_b_p4)

                    ; #49707: origin
                    (at_b_p8)

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #39600: origin
                    (not_at_b_p4)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #55324: <==negation-removal== 39600 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #51767: origin
                    (at_b_p1)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10)
                           (not (leader_b)))
        :effect (and
                    ; #56538: origin
                    (not_at_b_p5)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #56538: origin
                    (not_at_b_p5)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #55324: origin
                    (at_b_p4)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #52490: origin
                    (at_b_p5)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #56538: origin
                    (not_at_b_p5)

                    ; #70769: origin
                    (at_b_p7)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #56538: origin
                    (not_at_b_p5)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #52490: <==negation-removal== 56538 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #51767: origin
                    (at_b_p1)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #80257: origin
                    (at_b_p10)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #44757: origin
                    (not_at_b_p6)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #44757: origin
                    (not_at_b_p6)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #44757: origin
                    (not_at_b_p6)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #88936: origin
                    (at_b_p3)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #55324: origin
                    (at_b_p4)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #52490: origin
                    (at_b_p5)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #44757: origin
                    (not_at_b_p6)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #70769: origin
                    (at_b_p7)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44757: origin
                    (not_at_b_p6)

                    ; #49707: origin
                    (at_b_p8)

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #44757: origin
                    (not_at_b_p6)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #23532: <==negation-removal== 44757 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #51767: origin
                    (at_b_p1)

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #52490: origin
                    (at_b_p5)

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #51377: origin
                    (not_at_b_p7)

                    ; #70769: origin
                    (at_b_p7)

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #51377: origin
                    (not_at_b_p7)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #70769: <==negation-removal== 51377 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #51767: origin
                    (at_b_p1)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #53449: origin
                    (not_at_b_p8)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #24100: origin
                    (at_b_p11)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33531: origin
                    (at_b_p12)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #43269: origin
                    (at_b_p2)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #53449: origin
                    (not_at_b_p8)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #53449: origin
                    (not_at_b_p8)

                    ; #55324: origin
                    (at_b_p4)

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #52490: origin
                    (at_b_p5)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23532: origin
                    (at_b_p6)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #53449: origin
                    (not_at_b_p8)

                    ; #70769: origin
                    (at_b_p7)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #49707: origin
                    (at_b_p8)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #28184: origin
                    (at_b_p9)

                    ; #53449: origin
                    (not_at_b_p8)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #49707: <==negation-removal== 53449 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #51767: origin
                    (at_b_p1)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #88602: <==negation-removal== 51767 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #80257: origin
                    (at_b_p10)

                    ; #27067: <==negation-removal== 80257 (pos)
                    (not (not_at_b_p10))

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #24100: origin
                    (at_b_p11)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #86588: <==negation-removal== 24100 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #33531: origin
                    (at_b_p12)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #98531: <==negation-removal== 33531 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #43269: origin
                    (at_b_p2)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #43812: <==negation-removal== 43269 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #88936: origin
                    (at_b_p3)

                    ; #25026: <==negation-removal== 88936 (pos)
                    (not (not_at_b_p3))

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #55324: origin
                    (at_b_p4)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #39600: <==negation-removal== 55324 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #52490: origin
                    (at_b_p5)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #56538: <==negation-removal== 52490 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #23532: origin
                    (at_b_p6)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #44757: <==negation-removal== 23532 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #70769: origin
                    (at_b_p7)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #51377: <==negation-removal== 70769 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #49707: origin
                    (at_b_p8)

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))

                    ; #53449: <==negation-removal== 49707 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12272: origin
                    (not_at_b_p9)

                    ; #28184: origin
                    (at_b_p9)

                    ; #12272: <==negation-removal== 28184 (pos)
                    (not (not_at_b_p9))

                    ; #28184: <==negation-removal== 12272 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: origin
                    (not_at_c_p10)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #54783: origin
                    (not_at_c_p10)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #54783: origin
                    (not_at_c_p10)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #57326: origin
                    (at_c_p3)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #59160: origin
                    (at_c_p4)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #66347: origin
                    (at_c_p5)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #64381: origin
                    (at_c_p8)

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54783: origin
                    (not_at_c_p10)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #38152: <==negation-removal== 54783 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1)
                           (not (leader_c)))
        :effect (and
                    ; #66504: origin
                    (at_c_p1)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #68424: origin
                    (at_c_p12)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #57326: origin
                    (at_c_p3)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #59160: origin
                    (at_c_p4)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #66347: origin
                    (at_c_p5)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #79914: origin
                    (not_at_c_p11)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #62628: origin
                    (at_c_p7)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #64381: origin
                    (at_c_p8)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #70068: origin
                    (at_c_p9)

                    ; #79914: origin
                    (not_at_c_p11)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #31971: <==negation-removal== 79914 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #31971: origin
                    (at_c_p11)

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #21023: origin
                    (not_at_c_p12)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #59160: origin
                    (at_c_p4)

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #66347: origin
                    (at_c_p5)

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #21023: origin
                    (not_at_c_p12)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #68424: <==negation-removal== 21023 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #31971: origin
                    (at_c_p11)

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #25278: origin
                    (not_at_c_p1)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #59160: origin
                    (at_c_p4)

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #66347: origin
                    (at_c_p5)

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #25278: origin
                    (not_at_c_p1)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #66504: <==negation-removal== 25278 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #66504: origin
                    (at_c_p1)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #38152: origin
                    (at_c_p10)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #31971: origin
                    (at_c_p11)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #68424: origin
                    (at_c_p12)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #25162: origin
                    (not_at_c_p2)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #57326: origin
                    (at_c_p3)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #59160: origin
                    (at_c_p4)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #66347: origin
                    (at_c_p5)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #86661: origin
                    (at_c_p6)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #62628: origin
                    (at_c_p7)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #64381: origin
                    (at_c_p8)

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25162: origin
                    (not_at_c_p2)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #20771: <==negation-removal== 25162 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #54440: origin
                    (not_at_c_p3)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #54440: origin
                    (not_at_c_p3)

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #54440: origin
                    (not_at_c_p3)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #59160: origin
                    (at_c_p4)

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #66347: origin
                    (at_c_p5)

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #64381: origin
                    (at_c_p8)

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #54440: origin
                    (not_at_c_p3)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #57326: <==negation-removal== 54440 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #66504: origin
                    (at_c_p1)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #68424: origin
                    (at_c_p12)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57326: origin
                    (at_c_p3)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59160: origin
                    (at_c_p4)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #66347: origin
                    (at_c_p5)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #82730: origin
                    (not_at_c_p4)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #62628: origin
                    (at_c_p7)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #64381: origin
                    (at_c_p8)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #70068: origin
                    (at_c_p9)

                    ; #82730: origin
                    (not_at_c_p4)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #59160: <==negation-removal== 82730 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #66504: origin
                    (at_c_p1)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #68424: origin
                    (at_c_p12)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #57326: origin
                    (at_c_p3)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #59160: origin
                    (at_c_p4)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #66347: origin
                    (at_c_p5)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #86660: origin
                    (not_at_c_p5)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #62628: origin
                    (at_c_p7)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #64381: origin
                    (at_c_p8)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #70068: origin
                    (at_c_p9)

                    ; #86660: origin
                    (not_at_c_p5)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #66347: <==negation-removal== 86660 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #31971: origin
                    (at_c_p11)

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #28713: origin
                    (not_at_c_p6)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #59160: origin
                    (at_c_p4)

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #66347: origin
                    (at_c_p5)

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #28713: origin
                    (not_at_c_p6)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #86661: <==negation-removal== 28713 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #31971: origin
                    (at_c_p11)

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #27848: origin
                    (not_at_c_p7)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #59160: origin
                    (at_c_p4)

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #66347: origin
                    (at_c_p5)

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #27848: origin
                    (not_at_c_p7)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #62628: <==negation-removal== 27848 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10)
                           (not (leader_c)))
        :effect (and
                    ; #38152: origin
                    (at_c_p10)

                    ; #60767: origin
                    (not_at_c_p8)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #31971: origin
                    (at_c_p11)

                    ; #60767: origin
                    (not_at_c_p8)

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #20771: origin
                    (at_c_p2)

                    ; #60767: origin
                    (not_at_c_p8)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #57326: origin
                    (at_c_p3)

                    ; #60767: origin
                    (not_at_c_p8)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59160: origin
                    (at_c_p4)

                    ; #60767: origin
                    (not_at_c_p8)

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #66347: origin
                    (at_c_p5)

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #60767: origin
                    (not_at_c_p8)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #64381: <==negation-removal== 60767 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #66504: origin
                    (at_c_p1)

                    ; #25278: <==negation-removal== 66504 (pos)
                    (not (not_at_c_p1))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #38152: origin
                    (at_c_p10)

                    ; #54783: <==negation-removal== 38152 (pos)
                    (not (not_at_c_p10))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #31971: origin
                    (at_c_p11)

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))

                    ; #79914: <==negation-removal== 31971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #68424: origin
                    (at_c_p12)

                    ; #21023: <==negation-removal== 68424 (pos)
                    (not (not_at_c_p12))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #20771: origin
                    (at_c_p2)

                    ; #25162: <==negation-removal== 20771 (pos)
                    (not (not_at_c_p2))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #57326: origin
                    (at_c_p3)

                    ; #54440: <==negation-removal== 57326 (pos)
                    (not (not_at_c_p3))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #59160: origin
                    (at_c_p4)

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))

                    ; #82730: <==negation-removal== 59160 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #66347: origin
                    (at_c_p5)

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))

                    ; #86660: <==negation-removal== 66347 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #86661: origin
                    (at_c_p6)

                    ; #28713: <==negation-removal== 86661 (pos)
                    (not (not_at_c_p6))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #62628: origin
                    (at_c_p7)

                    ; #27848: <==negation-removal== 62628 (pos)
                    (not (not_at_c_p7))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #64381: origin
                    (at_c_p8)

                    ; #60767: <==negation-removal== 64381 (pos)
                    (not (not_at_c_p8))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11416: origin
                    (not_at_c_p9)

                    ; #70068: origin
                    (at_c_p9)

                    ; #11416: <==negation-removal== 70068 (pos)
                    (not (not_at_c_p9))

                    ; #70068: <==negation-removal== 11416 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p10_p3
        :precondition (and (at_d_p10)
                           (succ_p10_p3)
                           (not (leader_d)))
        :effect (and
                    ; #59966: origin
                    (not_at_d_p10)

                    ; #68177: origin
                    (at_d_p3)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4)
                           (not (leader_d)))
        :effect (and
                    ; #59966: origin
                    (not_at_d_p10)

                    ; #65529: origin
                    (at_d_p4)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5)
                           (not (leader_d)))
        :effect (and
                    ; #59966: origin
                    (not_at_d_p10)

                    ; #78903: origin
                    (at_d_p5)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #59966: origin
                    (not_at_d_p10)

                    ; #20517: <==negation-removal== 59966 (pos)
                    (not (at_d_p10))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #52116: origin
                    (at_d_p2)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #68177: origin
                    (at_d_p3)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #65529: origin
                    (at_d_p4)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #78903: origin
                    (at_d_p5)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #48581: origin
                    (not_at_d_p11)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #57205: origin
                    (at_d_p8)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9)
                           (not (leader_d)))
        :effect (and
                    ; #48581: origin
                    (not_at_d_p11)

                    ; #51055: origin
                    (at_d_p9)

                    ; #40913: <==negation-removal== 48581 (pos)
                    (not (at_d_p11))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3)
                           (not (leader_d)))
        :effect (and
                    ; #68177: origin
                    (at_d_p3)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5)
                           (not (leader_d)))
        :effect (and
                    ; #77968: origin
                    (not_at_d_p12)

                    ; #78903: origin
                    (at_d_p5)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #77968: origin
                    (not_at_d_p12)

                    ; #42425: <==negation-removal== 77968 (pos)
                    (not (at_d_p12))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #67426: origin
                    (not_at_d_p1)

                    ; #68177: origin
                    (at_d_p3)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #67426: origin
                    (not_at_d_p1)

                    ; #78903: origin
                    (at_d_p5)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #67426: origin
                    (not_at_d_p1)

                    ; #33415: <==negation-removal== 67426 (pos)
                    (not (at_d_p1))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #68177: origin
                    (at_d_p3)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5)
                           (not (leader_d)))
        :effect (and
                    ; #78903: origin
                    (at_d_p5)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #88722: origin
                    (not_at_d_p2)

                    ; #52116: <==negation-removal== 88722 (pos)
                    (not (at_d_p2))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p11
        :precondition (and (at_d_p3)
                           (succ_p3_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (at_d_p3)
                           (succ_p3_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3)
                           (not (leader_d)))
        :effect (and
                    ; #68177: origin
                    (at_d_p3)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5)
                           (not (leader_d)))
        :effect (and
                    ; #78903: origin
                    (at_d_p5)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #90327: origin
                    (not_at_d_p3)

                    ; #68177: <==negation-removal== 90327 (pos)
                    (not (at_d_p3))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3)
                           (not (leader_d)))
        :effect (and
                    ; #68177: origin
                    (at_d_p3)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #74967: origin
                    (not_at_d_p4)

                    ; #78903: origin
                    (at_d_p5)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #74967: origin
                    (not_at_d_p4)

                    ; #65529: <==negation-removal== 74967 (pos)
                    (not (at_d_p4))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #52116: origin
                    (at_d_p2)

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #68177: origin
                    (at_d_p3)

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #65529: origin
                    (at_d_p4)

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #78903: origin
                    (at_d_p5)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #45813: origin
                    (not_at_d_p5)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #57205: origin
                    (at_d_p8)

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9)
                           (not (leader_d)))
        :effect (and
                    ; #45813: origin
                    (not_at_d_p5)

                    ; #51055: origin
                    (at_d_p9)

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))

                    ; #78903: <==negation-removal== 45813 (pos)
                    (not (at_d_p5))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #52116: origin
                    (at_d_p2)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #68177: origin
                    (at_d_p3)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #65529: origin
                    (at_d_p4)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #78903: origin
                    (at_d_p5)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #48164: origin
                    (not_at_d_p6)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #57205: origin
                    (at_d_p8)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #48164: origin
                    (not_at_d_p6)

                    ; #51055: origin
                    (at_d_p9)

                    ; #13843: <==negation-removal== 48164 (pos)
                    (not (at_d_p6))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #33415: origin
                    (at_d_p1)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #27835: origin
                    (not_at_d_p7)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #40913: origin
                    (at_d_p11)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #42425: origin
                    (at_d_p12)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #52116: origin
                    (at_d_p2)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #68177: origin
                    (at_d_p3)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #65529: origin
                    (at_d_p4)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #78903: origin
                    (at_d_p5)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #27835: origin
                    (not_at_d_p7)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #27835: origin
                    (not_at_d_p7)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #57205: origin
                    (at_d_p8)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #27835: origin
                    (not_at_d_p7)

                    ; #51055: origin
                    (at_d_p9)

                    ; #24453: <==negation-removal== 27835 (pos)
                    (not (at_d_p7))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3)
                           (not (leader_d)))
        :effect (and
                    ; #67486: origin
                    (not_at_d_p8)

                    ; #68177: origin
                    (at_d_p3)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5)
                           (not (leader_d)))
        :effect (and
                    ; #67486: origin
                    (not_at_d_p8)

                    ; #78903: origin
                    (at_d_p5)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #67486: origin
                    (not_at_d_p8)

                    ; #57205: <==negation-removal== 67486 (pos)
                    (not (at_d_p8))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1)
                           (not (leader_d)))
        :effect (and
                    ; #33415: origin
                    (at_d_p1)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #67426: <==negation-removal== 33415 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10)
                           (not (leader_d)))
        :effect (and
                    ; #20517: origin
                    (at_d_p10)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #59966: <==negation-removal== 20517 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11)
                           (not (leader_d)))
        :effect (and
                    ; #40913: origin
                    (at_d_p11)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #48581: <==negation-removal== 40913 (pos)
                    (not (not_at_d_p11))

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12)
                           (not (leader_d)))
        :effect (and
                    ; #42425: origin
                    (at_d_p12)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #77968: <==negation-removal== 42425 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2)
                           (not (leader_d)))
        :effect (and
                    ; #52116: origin
                    (at_d_p2)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #88722: <==negation-removal== 52116 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3)
                           (not (leader_d)))
        :effect (and
                    ; #68177: origin
                    (at_d_p3)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #90327: <==negation-removal== 68177 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4)
                           (not (leader_d)))
        :effect (and
                    ; #65529: origin
                    (at_d_p4)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #74967: <==negation-removal== 65529 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5)
                           (not (leader_d)))
        :effect (and
                    ; #69636: origin
                    (not_at_d_p9)

                    ; #78903: origin
                    (at_d_p5)

                    ; #45813: <==negation-removal== 78903 (pos)
                    (not (not_at_d_p5))

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13843: origin
                    (at_d_p6)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #48164: <==negation-removal== 13843 (pos)
                    (not (not_at_d_p6))

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7)
                           (not (leader_d)))
        :effect (and
                    ; #24453: origin
                    (at_d_p7)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #27835: <==negation-removal== 24453 (pos)
                    (not (not_at_d_p7))

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57205: origin
                    (at_d_p8)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #67486: <==negation-removal== 57205 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9)
                           (not (leader_d)))
        :effect (and
                    ; #51055: origin
                    (at_d_p9)

                    ; #69636: origin
                    (not_at_d_p9)

                    ; #51055: <==negation-removal== 69636 (pos)
                    (not (at_d_p9))

                    ; #69636: <==negation-removal== 51055 (pos)
                    (not (not_at_d_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #16445: <==commonly_known== 42051 (pos)
                    (Bb_checked_p10)

                    ; #27084: <==closure== 48454 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #34474: <==commonly_known== 42051 (pos)
                    (Ba_checked_p10)

                    ; #42051: origin
                    (checked_p10)

                    ; #47473: <==commonly_known== 42051 (pos)
                    (Bc_checked_p10)

                    ; #48454: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #51756: <==closure== 88474 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #60143: <==commonly_known== 51914 (neg)
                    (Pc_checked_p10)

                    ; #76314: <==commonly_known== 42051 (pos)
                    (Bd_checked_p10)

                    ; #77370: <==commonly_known== 51914 (neg)
                    (Pb_checked_p10)

                    ; #86013: <==commonly_known== 51914 (neg)
                    (Pd_checked_p10)

                    ; #88474: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #89934: <==commonly_known== 51914 (neg)
                    (Pa_checked_p10)

                    ; #19600: <==negation-removal== 60143 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27565: <==negation-removal== 47473 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39254: <==negation-removal== 88474 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #46325: <==negation-removal== 86013 (pos)
                    (not (Bd_not_checked_p10))

                    ; #46446: <==uncertain_firing== 51756 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #50268: <==uncertain_firing== 27084 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #51914: <==negation-removal== 42051 (pos)
                    (not (not_checked_p10))

                    ; #65491: <==negation-removal== 27084 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #65846: <==negation-removal== 16445 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67970: <==negation-removal== 34474 (pos)
                    (not (Pa_not_checked_p10))

                    ; #68017: <==negation-removal== 77370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #70947: <==uncertain_firing== 88474 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #72789: <==negation-removal== 76314 (pos)
                    (not (Pd_not_checked_p10))

                    ; #73738: <==negation-removal== 51756 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #76956: <==negation-removal== 48454 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #88823: <==negation-removal== 89934 (pos)
                    (not (Ba_not_checked_p10))

                    ; #92081: <==uncertain_firing== 48454 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #18798: <==commonly_known== 37872 (neg)
                    (Pb_checked_p11)

                    ; #21527: <==commonly_known== 37872 (neg)
                    (Pd_checked_p11)

                    ; #25942: <==commonly_known== 37872 (neg)
                    (Pa_checked_p11)

                    ; #32950: <==commonly_known== 83528 (pos)
                    (Bb_checked_p11)

                    ; #42914: <==commonly_known== 83528 (pos)
                    (Bc_checked_p11)

                    ; #53470: <==commonly_known== 83528 (pos)
                    (Ba_checked_p11)

                    ; #64342: <==closure== 72152 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #72152: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #73279: <==commonly_known== 37872 (neg)
                    (Pc_checked_p11)

                    ; #75342: <==commonly_known== 83528 (pos)
                    (Bd_checked_p11)

                    ; #78258: <==closure== 85574 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #83528: origin
                    (checked_p11)

                    ; #85574: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #13376: <==negation-removal== 32950 (pos)
                    (not (Pb_not_checked_p11))

                    ; #21321: <==negation-removal== 75342 (pos)
                    (not (Pd_not_checked_p11))

                    ; #26460: <==negation-removal== 85574 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #27452: <==uncertain_firing== 72152 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #30727: <==negation-removal== 21527 (pos)
                    (not (Bd_not_checked_p11))

                    ; #35552: <==uncertain_firing== 64342 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #37872: <==negation-removal== 83528 (pos)
                    (not (not_checked_p11))

                    ; #39197: <==negation-removal== 25942 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51458: <==negation-removal== 72152 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #51599: <==negation-removal== 73279 (pos)
                    (not (Bc_not_checked_p11))

                    ; #54726: <==negation-removal== 53470 (pos)
                    (not (Pa_not_checked_p11))

                    ; #63727: <==uncertain_firing== 78258 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #66247: <==negation-removal== 64342 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #73845: <==negation-removal== 78258 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #82527: <==negation-removal== 42914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #88983: <==uncertain_firing== 85574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #89605: <==negation-removal== 18798 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #13715: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #14344: <==commonly_known== 75019 (neg)
                    (Pd_checked_p12)

                    ; #20923: <==closure== 34841 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #29285: <==commonly_known== 75019 (neg)
                    (Pa_checked_p12)

                    ; #30601: <==commonly_known== 74499 (pos)
                    (Bc_checked_p12)

                    ; #34841: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #45407: <==commonly_known== 75019 (neg)
                    (Pc_checked_p12)

                    ; #70735: <==commonly_known== 75019 (neg)
                    (Pb_checked_p12)

                    ; #71762: <==commonly_known== 74499 (pos)
                    (Bd_checked_p12)

                    ; #74499: origin
                    (checked_p12)

                    ; #83626: <==closure== 13715 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #84360: <==commonly_known== 74499 (pos)
                    (Bb_checked_p12)

                    ; #89979: <==commonly_known== 74499 (pos)
                    (Ba_checked_p12)

                    ; #14311: <==negation-removal== 89979 (pos)
                    (not (Pa_not_checked_p12))

                    ; #19022: <==negation-removal== 84360 (pos)
                    (not (Pb_not_checked_p12))

                    ; #22752: <==uncertain_firing== 34841 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #25000: <==negation-removal== 20923 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #25469: <==negation-removal== 71762 (pos)
                    (not (Pd_not_checked_p12))

                    ; #26484: <==negation-removal== 70735 (pos)
                    (not (Bb_not_checked_p12))

                    ; #31496: <==negation-removal== 83626 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #36897: <==uncertain_firing== 13715 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #42723: <==negation-removal== 45407 (pos)
                    (not (Bc_not_checked_p12))

                    ; #54066: <==negation-removal== 34841 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #63519: <==negation-removal== 30601 (pos)
                    (not (Pc_not_checked_p12))

                    ; #63932: <==uncertain_firing== 83626 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #75019: <==negation-removal== 74499 (pos)
                    (not (not_checked_p12))

                    ; #83890: <==negation-removal== 14344 (pos)
                    (not (Bd_not_checked_p12))

                    ; #85613: <==negation-removal== 29285 (pos)
                    (not (Ba_not_checked_p12))

                    ; #86582: <==negation-removal== 13715 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #93223: <==uncertain_firing== 20923 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #14145: <==commonly_known== 94225 (neg)
                    (Pd_checked_p1)

                    ; #14573: <==commonly_known== 20987 (pos)
                    (Bc_checked_p1)

                    ; #20987: origin
                    (checked_p1)

                    ; #28954: <==commonly_known== 94225 (neg)
                    (Pc_checked_p1)

                    ; #31131: <==commonly_known== 94225 (neg)
                    (Pb_checked_p1)

                    ; #32183: <==commonly_known== 94225 (neg)
                    (Pa_checked_p1)

                    ; #35203: <==closure== 41072 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #41072: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #43894: <==commonly_known== 20987 (pos)
                    (Ba_checked_p1)

                    ; #73758: <==commonly_known== 20987 (pos)
                    (Bd_checked_p1)

                    ; #87228: <==commonly_known== 20987 (pos)
                    (Bb_checked_p1)

                    ; #90253: <==closure== 92128 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #92128: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #10737: <==negation-removal== 31131 (pos)
                    (not (Bb_not_checked_p1))

                    ; #12378: <==negation-removal== 41072 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #14321: <==negation-removal== 87228 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17781: <==uncertain_firing== 41072 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #17858: <==negation-removal== 28954 (pos)
                    (not (Bc_not_checked_p1))

                    ; #34176: <==negation-removal== 14573 (pos)
                    (not (Pc_not_checked_p1))

                    ; #36070: <==negation-removal== 14145 (pos)
                    (not (Bd_not_checked_p1))

                    ; #44312: <==uncertain_firing== 92128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #65872: <==negation-removal== 90253 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #73111: <==uncertain_firing== 90253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #73945: <==negation-removal== 35203 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #74061: <==negation-removal== 73758 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84734: <==negation-removal== 32183 (pos)
                    (not (Ba_not_checked_p1))

                    ; #84843: <==negation-removal== 43894 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89118: <==uncertain_firing== 35203 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91631: <==negation-removal== 92128 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #94225: <==negation-removal== 20987 (pos)
                    (not (not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #10476: <==closure== 45032 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #12600: <==commonly_known== 89904 (neg)
                    (Pb_checked_p2)

                    ; #14469: <==commonly_known== 53491 (pos)
                    (Bc_checked_p2)

                    ; #17184: <==commonly_known== 53491 (pos)
                    (Bb_checked_p2)

                    ; #21549: <==commonly_known== 89904 (neg)
                    (Pd_checked_p2)

                    ; #25212: <==commonly_known== 89904 (neg)
                    (Pa_checked_p2)

                    ; #33687: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #35003: <==commonly_known== 89904 (neg)
                    (Pc_checked_p2)

                    ; #36733: <==commonly_known== 53491 (pos)
                    (Ba_checked_p2)

                    ; #45032: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #53491: origin
                    (checked_p2)

                    ; #78581: <==commonly_known== 53491 (pos)
                    (Bd_checked_p2)

                    ; #82032: <==closure== 33687 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #18260: <==negation-removal== 12600 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19721: <==uncertain_firing== 45032 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25556: <==negation-removal== 78581 (pos)
                    (not (Pd_not_checked_p2))

                    ; #28242: <==uncertain_firing== 82032 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 25212 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45782: <==negation-removal== 35003 (pos)
                    (not (Bc_not_checked_p2))

                    ; #48472: <==uncertain_firing== 33687 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #50284: <==uncertain_firing== 10476 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #51474: <==negation-removal== 14469 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64414: <==negation-removal== 33687 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #65043: <==negation-removal== 17184 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81199: <==negation-removal== 21549 (pos)
                    (not (Bd_not_checked_p2))

                    ; #81304: <==negation-removal== 10476 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #81629: <==negation-removal== 36733 (pos)
                    (not (Pa_not_checked_p2))

                    ; #88896: <==negation-removal== 82032 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #89904: <==negation-removal== 53491 (pos)
                    (not (not_checked_p2))

                    ; #90895: <==negation-removal== 45032 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #10590: <==closure== 86507 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #11672: <==closure== 32108 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #15758: <==commonly_known== 63328 (pos)
                    (Bc_checked_p3)

                    ; #32108: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #33346: <==commonly_known== 63328 (pos)
                    (Bb_checked_p3)

                    ; #41746: <==commonly_known== 24010 (neg)
                    (Pa_checked_p3)

                    ; #45067: <==commonly_known== 63328 (pos)
                    (Ba_checked_p3)

                    ; #48473: <==commonly_known== 24010 (neg)
                    (Pb_checked_p3)

                    ; #63328: origin
                    (checked_p3)

                    ; #68404: <==commonly_known== 24010 (neg)
                    (Pc_checked_p3)

                    ; #76606: <==commonly_known== 63328 (pos)
                    (Bd_checked_p3)

                    ; #81428: <==commonly_known== 24010 (neg)
                    (Pd_checked_p3)

                    ; #86507: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #10171: <==negation-removal== 76606 (pos)
                    (not (Pd_not_checked_p3))

                    ; #13323: <==negation-removal== 15758 (pos)
                    (not (Pc_not_checked_p3))

                    ; #13985: <==uncertain_firing== 10590 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #15488: <==negation-removal== 32108 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #24010: <==negation-removal== 63328 (pos)
                    (not (not_checked_p3))

                    ; #42977: <==negation-removal== 11672 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #51862: <==negation-removal== 81428 (pos)
                    (not (Bd_not_checked_p3))

                    ; #53135: <==uncertain_firing== 11672 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #60553: <==negation-removal== 86507 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #65871: <==negation-removal== 41746 (pos)
                    (not (Ba_not_checked_p3))

                    ; #67389: <==uncertain_firing== 32108 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73479: <==negation-removal== 10590 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #77590: <==negation-removal== 45067 (pos)
                    (not (Pa_not_checked_p3))

                    ; #77814: <==negation-removal== 68404 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78485: <==negation-removal== 48473 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82723: <==uncertain_firing== 86507 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #91863: <==negation-removal== 33346 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15706: <==closure== 32162 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #16079: <==commonly_known== 57779 (neg)
                    (Pa_checked_p4)

                    ; #29489: <==commonly_known== 59480 (pos)
                    (Bd_checked_p4)

                    ; #32162: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #46621: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #49896: <==commonly_known== 57779 (neg)
                    (Pc_checked_p4)

                    ; #50329: <==commonly_known== 57779 (neg)
                    (Pb_checked_p4)

                    ; #55650: <==commonly_known== 59480 (pos)
                    (Bb_checked_p4)

                    ; #59480: origin
                    (checked_p4)

                    ; #60457: <==closure== 46621 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #62620: <==commonly_known== 57779 (neg)
                    (Pd_checked_p4)

                    ; #64624: <==commonly_known== 59480 (pos)
                    (Bc_checked_p4)

                    ; #68667: <==commonly_known== 59480 (pos)
                    (Ba_checked_p4)

                    ; #13482: <==negation-removal== 49896 (pos)
                    (not (Bc_not_checked_p4))

                    ; #16731: <==negation-removal== 64624 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18341: <==negation-removal== 50329 (pos)
                    (not (Bb_not_checked_p4))

                    ; #29874: <==negation-removal== 60457 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #33042: <==uncertain_firing== 15706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39926: <==negation-removal== 16079 (pos)
                    (not (Ba_not_checked_p4))

                    ; #49779: <==negation-removal== 68667 (pos)
                    (not (Pa_not_checked_p4))

                    ; #53294: <==negation-removal== 15706 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57779: <==negation-removal== 59480 (pos)
                    (not (not_checked_p4))

                    ; #65754: <==negation-removal== 46621 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #66690: <==uncertain_firing== 46621 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #68464: <==negation-removal== 29489 (pos)
                    (not (Pd_not_checked_p4))

                    ; #80469: <==negation-removal== 62620 (pos)
                    (not (Bd_not_checked_p4))

                    ; #83280: <==negation-removal== 32162 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #85400: <==uncertain_firing== 60457 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #85704: <==uncertain_firing== 32162 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #85735: <==negation-removal== 55650 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10346: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #12703: <==commonly_known== 14037 (pos)
                    (Bd_checked_p5)

                    ; #12925: <==commonly_known== 36661 (neg)
                    (Pa_checked_p5)

                    ; #14037: origin
                    (checked_p5)

                    ; #24925: <==commonly_known== 36661 (neg)
                    (Pc_checked_p5)

                    ; #29359: <==closure== 10346 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #35958: <==commonly_known== 14037 (pos)
                    (Bb_checked_p5)

                    ; #45820: <==closure== 53467 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #53467: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #56719: <==commonly_known== 14037 (pos)
                    (Bc_checked_p5)

                    ; #58069: <==commonly_known== 36661 (neg)
                    (Pd_checked_p5)

                    ; #69294: <==commonly_known== 36661 (neg)
                    (Pb_checked_p5)

                    ; #80596: <==commonly_known== 14037 (pos)
                    (Ba_checked_p5)

                    ; #15846: <==negation-removal== 29359 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #17635: <==negation-removal== 12925 (pos)
                    (not (Ba_not_checked_p5))

                    ; #28504: <==negation-removal== 35958 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36661: <==negation-removal== 14037 (pos)
                    (not (not_checked_p5))

                    ; #41636: <==negation-removal== 69294 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44066: <==uncertain_firing== 29359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #46449: <==negation-removal== 53467 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #54098: <==negation-removal== 45820 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #57471: <==uncertain_firing== 10346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #66027: <==uncertain_firing== 53467 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #69466: <==negation-removal== 24925 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69862: <==negation-removal== 58069 (pos)
                    (not (Bd_not_checked_p5))

                    ; #72865: <==negation-removal== 56719 (pos)
                    (not (Pc_not_checked_p5))

                    ; #78038: <==negation-removal== 12703 (pos)
                    (not (Pd_not_checked_p5))

                    ; #87595: <==uncertain_firing== 45820 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #90088: <==negation-removal== 80596 (pos)
                    (not (Pa_not_checked_p5))

                    ; #93026: <==negation-removal== 10346 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #17493: <==commonly_known== 26135 (neg)
                    (Pc_checked_p6)

                    ; #21656: <==commonly_known== 65823 (pos)
                    (Bb_checked_p6)

                    ; #25853: <==closure== 88664 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #49237: <==commonly_known== 65823 (pos)
                    (Ba_checked_p6)

                    ; #56195: <==closure== 64247 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #58990: <==commonly_known== 65823 (pos)
                    (Bc_checked_p6)

                    ; #64247: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #65823: origin
                    (checked_p6)

                    ; #67771: <==commonly_known== 26135 (neg)
                    (Pa_checked_p6)

                    ; #67877: <==commonly_known== 65823 (pos)
                    (Bd_checked_p6)

                    ; #78409: <==commonly_known== 26135 (neg)
                    (Pb_checked_p6)

                    ; #86891: <==commonly_known== 26135 (neg)
                    (Pd_checked_p6)

                    ; #88664: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #11062: <==negation-removal== 67771 (pos)
                    (not (Ba_not_checked_p6))

                    ; #12545: <==negation-removal== 67877 (pos)
                    (not (Pd_not_checked_p6))

                    ; #14147: <==negation-removal== 86891 (pos)
                    (not (Bd_not_checked_p6))

                    ; #23374: <==uncertain_firing== 56195 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #26135: <==negation-removal== 65823 (pos)
                    (not (not_checked_p6))

                    ; #32255: <==negation-removal== 17493 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43599: <==negation-removal== 25853 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #48329: <==uncertain_firing== 88664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51423: <==negation-removal== 49237 (pos)
                    (not (Pa_not_checked_p6))

                    ; #53633: <==negation-removal== 88664 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55280: <==negation-removal== 64247 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #57294: <==negation-removal== 58990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #64695: <==uncertain_firing== 64247 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #65838: <==negation-removal== 21656 (pos)
                    (not (Pb_not_checked_p6))

                    ; #74392: <==uncertain_firing== 25853 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #90495: <==negation-removal== 78409 (pos)
                    (not (Bb_not_checked_p6))

                    ; #91491: <==negation-removal== 56195 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15756: <==closure== 74755 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #15888: <==commonly_known== 21324 (neg)
                    (Pb_checked_p7)

                    ; #20479: <==commonly_known== 67498 (pos)
                    (Bb_checked_p7)

                    ; #29092: <==commonly_known== 67498 (pos)
                    (Ba_checked_p7)

                    ; #40137: <==commonly_known== 21324 (neg)
                    (Pd_checked_p7)

                    ; #55366: <==commonly_known== 21324 (neg)
                    (Pc_checked_p7)

                    ; #57352: <==closure== 75903 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #65730: <==commonly_known== 67498 (pos)
                    (Bd_checked_p7)

                    ; #67498: origin
                    (checked_p7)

                    ; #74755: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #75903: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #79746: <==commonly_known== 67498 (pos)
                    (Bc_checked_p7)

                    ; #91022: <==commonly_known== 21324 (neg)
                    (Pa_checked_p7)

                    ; #21324: <==negation-removal== 67498 (pos)
                    (not (not_checked_p7))

                    ; #23382: <==negation-removal== 15756 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #24418: <==negation-removal== 79746 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29802: <==uncertain_firing== 15756 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #31119: <==uncertain_firing== 74755 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #32187: <==negation-removal== 74755 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #36136: <==negation-removal== 65730 (pos)
                    (not (Pd_not_checked_p7))

                    ; #40361: <==negation-removal== 40137 (pos)
                    (not (Bd_not_checked_p7))

                    ; #44072: <==uncertain_firing== 75903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #46775: <==negation-removal== 55366 (pos)
                    (not (Bc_not_checked_p7))

                    ; #51347: <==negation-removal== 75903 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54094: <==negation-removal== 15888 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59826: <==negation-removal== 57352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #68349: <==negation-removal== 91022 (pos)
                    (not (Ba_not_checked_p7))

                    ; #73662: <==negation-removal== 29092 (pos)
                    (not (Pa_not_checked_p7))

                    ; #74385: <==uncertain_firing== 57352 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #81933: <==negation-removal== 20479 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #17335: <==commonly_known== 88496 (neg)
                    (Pa_checked_p8)

                    ; #38084: origin
                    (checked_p8)

                    ; #38696: <==commonly_known== 38084 (pos)
                    (Bc_checked_p8)

                    ; #42129: <==commonly_known== 88496 (neg)
                    (Pd_checked_p8)

                    ; #48752: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #55860: <==closure== 70988 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #58840: <==commonly_known== 38084 (pos)
                    (Ba_checked_p8)

                    ; #65271: <==commonly_known== 88496 (neg)
                    (Pc_checked_p8)

                    ; #66080: <==closure== 48752 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #67218: <==commonly_known== 38084 (pos)
                    (Bd_checked_p8)

                    ; #67455: <==commonly_known== 88496 (neg)
                    (Pb_checked_p8)

                    ; #70988: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #71366: <==commonly_known== 38084 (pos)
                    (Bb_checked_p8)

                    ; #12566: <==uncertain_firing== 55860 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #25145: <==negation-removal== 70988 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #32108: <==negation-removal== 71366 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33626: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p8))

                    ; #37986: <==negation-removal== 48752 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #39752: <==uncertain_firing== 48752 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #42773: <==negation-removal== 58840 (pos)
                    (not (Pa_not_checked_p8))

                    ; #51162: <==negation-removal== 67218 (pos)
                    (not (Pd_not_checked_p8))

                    ; #52172: <==negation-removal== 65271 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53429: <==negation-removal== 55860 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #56529: <==negation-removal== 42129 (pos)
                    (not (Bd_not_checked_p8))

                    ; #73490: <==negation-removal== 17335 (pos)
                    (not (Ba_not_checked_p8))

                    ; #77316: <==negation-removal== 67455 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87194: <==negation-removal== 66080 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #88496: <==negation-removal== 38084 (pos)
                    (not (not_checked_p8))

                    ; #90197: <==uncertain_firing== 70988 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #93133: <==uncertain_firing== 66080 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #13846: <==commonly_known== 91889 (neg)
                    (Pa_checked_p9)

                    ; #15048: <==commonly_known== 91889 (neg)
                    (Pd_checked_p9)

                    ; #22791: <==commonly_known== 91889 (neg)
                    (Pb_checked_p9)

                    ; #38481: <==commonly_known== 65042 (pos)
                    (Bc_checked_p9)

                    ; #41991: <==closure== 90236 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #47055: <==commonly_known== 65042 (pos)
                    (Bd_checked_p9)

                    ; #55848: <==commonly_known== 65042 (pos)
                    (Ba_checked_p9)

                    ; #59914: <==closure== 74099 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #63304: <==commonly_known== 65042 (pos)
                    (Bb_checked_p9)

                    ; #65042: origin
                    (checked_p9)

                    ; #74099: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #79832: <==commonly_known== 91889 (neg)
                    (Pc_checked_p9)

                    ; #90236: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #10229: <==negation-removal== 79832 (pos)
                    (not (Bc_not_checked_p9))

                    ; #19790: <==uncertain_firing== 41991 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #26043: <==negation-removal== 47055 (pos)
                    (not (Pd_not_checked_p9))

                    ; #31979: <==negation-removal== 13846 (pos)
                    (not (Ba_not_checked_p9))

                    ; #38207: <==negation-removal== 90236 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #41552: <==negation-removal== 55848 (pos)
                    (not (Pa_not_checked_p9))

                    ; #46885: <==uncertain_firing== 59914 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #47806: <==negation-removal== 38481 (pos)
                    (not (Pc_not_checked_p9))

                    ; #51748: <==negation-removal== 59914 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #62328: <==negation-removal== 22791 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68314: <==uncertain_firing== 74099 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #77363: <==negation-removal== 63304 (pos)
                    (not (Pb_not_checked_p9))

                    ; #86983: <==uncertain_firing== 90236 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #90610: <==negation-removal== 41991 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91889: <==negation-removal== 65042 (pos)
                    (not (not_checked_p9))

                    ; #92027: <==negation-removal== 74099 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #97116: <==negation-removal== 15048 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #16445: <==commonly_known== 42051 (pos)
                    (Bb_checked_p10)

                    ; #30757: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #34474: <==commonly_known== 42051 (pos)
                    (Ba_checked_p10)

                    ; #42051: origin
                    (checked_p10)

                    ; #42651: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #47473: <==commonly_known== 42051 (pos)
                    (Bc_checked_p10)

                    ; #60143: <==commonly_known== 51914 (neg)
                    (Pc_checked_p10)

                    ; #60732: <==closure== 42651 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #76314: <==commonly_known== 42051 (pos)
                    (Bd_checked_p10)

                    ; #77370: <==commonly_known== 51914 (neg)
                    (Pb_checked_p10)

                    ; #80698: <==closure== 30757 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #86013: <==commonly_known== 51914 (neg)
                    (Pd_checked_p10)

                    ; #89934: <==commonly_known== 51914 (neg)
                    (Pa_checked_p10)

                    ; #19600: <==negation-removal== 60143 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27565: <==negation-removal== 47473 (pos)
                    (not (Pc_not_checked_p10))

                    ; #31466: <==negation-removal== 80698 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #43489: <==negation-removal== 60732 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #46325: <==negation-removal== 86013 (pos)
                    (not (Bd_not_checked_p10))

                    ; #50643: <==negation-removal== 42651 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #51914: <==negation-removal== 42051 (pos)
                    (not (not_checked_p10))

                    ; #55091: <==uncertain_firing== 60732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #55389: <==uncertain_firing== 80698 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #65846: <==negation-removal== 16445 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67970: <==negation-removal== 34474 (pos)
                    (not (Pa_not_checked_p10))

                    ; #68017: <==negation-removal== 77370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #72247: <==negation-removal== 30757 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #72789: <==negation-removal== 76314 (pos)
                    (not (Pd_not_checked_p10))

                    ; #81327: <==uncertain_firing== 30757 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #88823: <==negation-removal== 89934 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89043: <==uncertain_firing== 42651 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #18798: <==commonly_known== 37872 (neg)
                    (Pb_checked_p11)

                    ; #21527: <==commonly_known== 37872 (neg)
                    (Pd_checked_p11)

                    ; #25942: <==commonly_known== 37872 (neg)
                    (Pa_checked_p11)

                    ; #27596: <==closure== 42416 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #32950: <==commonly_known== 83528 (pos)
                    (Bb_checked_p11)

                    ; #42416: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #42914: <==commonly_known== 83528 (pos)
                    (Bc_checked_p11)

                    ; #53470: <==commonly_known== 83528 (pos)
                    (Ba_checked_p11)

                    ; #71746: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #73279: <==commonly_known== 37872 (neg)
                    (Pc_checked_p11)

                    ; #75342: <==commonly_known== 83528 (pos)
                    (Bd_checked_p11)

                    ; #79729: <==closure== 71746 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #83528: origin
                    (checked_p11)

                    ; #13376: <==negation-removal== 32950 (pos)
                    (not (Pb_not_checked_p11))

                    ; #16986: <==uncertain_firing== 79729 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #19072: <==uncertain_firing== 71746 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #21321: <==negation-removal== 75342 (pos)
                    (not (Pd_not_checked_p11))

                    ; #22067: <==uncertain_firing== 42416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #30727: <==negation-removal== 21527 (pos)
                    (not (Bd_not_checked_p11))

                    ; #31795: <==negation-removal== 79729 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #33905: <==negation-removal== 27596 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #37872: <==negation-removal== 83528 (pos)
                    (not (not_checked_p11))

                    ; #39197: <==negation-removal== 25942 (pos)
                    (not (Ba_not_checked_p11))

                    ; #44151: <==uncertain_firing== 27596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #51599: <==negation-removal== 73279 (pos)
                    (not (Bc_not_checked_p11))

                    ; #54726: <==negation-removal== 53470 (pos)
                    (not (Pa_not_checked_p11))

                    ; #79808: <==negation-removal== 71746 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #82527: <==negation-removal== 42914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #89605: <==negation-removal== 18798 (pos)
                    (not (Bb_not_checked_p11))

                    ; #91299: <==negation-removal== 42416 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #14344: <==commonly_known== 75019 (neg)
                    (Pd_checked_p12)

                    ; #16939: <==closure== 41019 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #19998: <==closure== 29686 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #29285: <==commonly_known== 75019 (neg)
                    (Pa_checked_p12)

                    ; #29686: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #30601: <==commonly_known== 74499 (pos)
                    (Bc_checked_p12)

                    ; #41019: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #45407: <==commonly_known== 75019 (neg)
                    (Pc_checked_p12)

                    ; #70735: <==commonly_known== 75019 (neg)
                    (Pb_checked_p12)

                    ; #71762: <==commonly_known== 74499 (pos)
                    (Bd_checked_p12)

                    ; #74499: origin
                    (checked_p12)

                    ; #84360: <==commonly_known== 74499 (pos)
                    (Bb_checked_p12)

                    ; #89979: <==commonly_known== 74499 (pos)
                    (Ba_checked_p12)

                    ; #14311: <==negation-removal== 89979 (pos)
                    (not (Pa_not_checked_p12))

                    ; #15318: <==uncertain_firing== 29686 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #19022: <==negation-removal== 84360 (pos)
                    (not (Pb_not_checked_p12))

                    ; #20898: <==uncertain_firing== 41019 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #25469: <==negation-removal== 71762 (pos)
                    (not (Pd_not_checked_p12))

                    ; #26484: <==negation-removal== 70735 (pos)
                    (not (Bb_not_checked_p12))

                    ; #37883: <==negation-removal== 16939 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #38666: <==negation-removal== 41019 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #42723: <==negation-removal== 45407 (pos)
                    (not (Bc_not_checked_p12))

                    ; #49158: <==uncertain_firing== 16939 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #56751: <==negation-removal== 19998 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #59078: <==negation-removal== 29686 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #63519: <==negation-removal== 30601 (pos)
                    (not (Pc_not_checked_p12))

                    ; #65913: <==uncertain_firing== 19998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #75019: <==negation-removal== 74499 (pos)
                    (not (not_checked_p12))

                    ; #83890: <==negation-removal== 14344 (pos)
                    (not (Bd_not_checked_p12))

                    ; #85613: <==negation-removal== 29285 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #11987: <==closure== 39854 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #14145: <==commonly_known== 94225 (neg)
                    (Pd_checked_p1)

                    ; #14573: <==commonly_known== 20987 (pos)
                    (Bc_checked_p1)

                    ; #20987: origin
                    (checked_p1)

                    ; #28954: <==commonly_known== 94225 (neg)
                    (Pc_checked_p1)

                    ; #31131: <==commonly_known== 94225 (neg)
                    (Pb_checked_p1)

                    ; #32183: <==commonly_known== 94225 (neg)
                    (Pa_checked_p1)

                    ; #39854: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43894: <==commonly_known== 20987 (pos)
                    (Ba_checked_p1)

                    ; #65712: <==closure== 70570 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #70570: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #73758: <==commonly_known== 20987 (pos)
                    (Bd_checked_p1)

                    ; #87228: <==commonly_known== 20987 (pos)
                    (Bb_checked_p1)

                    ; #10737: <==negation-removal== 31131 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14321: <==negation-removal== 87228 (pos)
                    (not (Pb_not_checked_p1))

                    ; #16042: <==negation-removal== 39854 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #17858: <==negation-removal== 28954 (pos)
                    (not (Bc_not_checked_p1))

                    ; #18762: <==uncertain_firing== 65712 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #25434: <==negation-removal== 65712 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #26065: <==uncertain_firing== 70570 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #34176: <==negation-removal== 14573 (pos)
                    (not (Pc_not_checked_p1))

                    ; #36070: <==negation-removal== 14145 (pos)
                    (not (Bd_not_checked_p1))

                    ; #48410: <==negation-removal== 70570 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #49401: <==uncertain_firing== 11987 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #69725: <==uncertain_firing== 39854 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #74061: <==negation-removal== 73758 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84734: <==negation-removal== 32183 (pos)
                    (not (Ba_not_checked_p1))

                    ; #84843: <==negation-removal== 43894 (pos)
                    (not (Pa_not_checked_p1))

                    ; #91820: <==negation-removal== 11987 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #94225: <==negation-removal== 20987 (pos)
                    (not (not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12600: <==commonly_known== 89904 (neg)
                    (Pb_checked_p2)

                    ; #12856: <==closure== 57310 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #14469: <==commonly_known== 53491 (pos)
                    (Bc_checked_p2)

                    ; #17184: <==commonly_known== 53491 (pos)
                    (Bb_checked_p2)

                    ; #21549: <==commonly_known== 89904 (neg)
                    (Pd_checked_p2)

                    ; #25212: <==commonly_known== 89904 (neg)
                    (Pa_checked_p2)

                    ; #35003: <==commonly_known== 89904 (neg)
                    (Pc_checked_p2)

                    ; #36733: <==commonly_known== 53491 (pos)
                    (Ba_checked_p2)

                    ; #37976: <==closure== 75022 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #53491: origin
                    (checked_p2)

                    ; #57310: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #75022: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #78581: <==commonly_known== 53491 (pos)
                    (Bd_checked_p2)

                    ; #18260: <==negation-removal== 12600 (pos)
                    (not (Bb_not_checked_p2))

                    ; #25556: <==negation-removal== 78581 (pos)
                    (not (Pd_not_checked_p2))

                    ; #27510: <==negation-removal== 57310 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #35062: <==negation-removal== 37976 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #37549: <==uncertain_firing== 75022 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 25212 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45782: <==negation-removal== 35003 (pos)
                    (not (Bc_not_checked_p2))

                    ; #46936: <==negation-removal== 75022 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #51474: <==negation-removal== 14469 (pos)
                    (not (Pc_not_checked_p2))

                    ; #63227: <==uncertain_firing== 57310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #65043: <==negation-removal== 17184 (pos)
                    (not (Pb_not_checked_p2))

                    ; #67583: <==uncertain_firing== 37976 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #78001: <==negation-removal== 12856 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #81199: <==negation-removal== 21549 (pos)
                    (not (Bd_not_checked_p2))

                    ; #81629: <==negation-removal== 36733 (pos)
                    (not (Pa_not_checked_p2))

                    ; #89904: <==negation-removal== 53491 (pos)
                    (not (not_checked_p2))

                    ; #92029: <==uncertain_firing== 12856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #15758: <==commonly_known== 63328 (pos)
                    (Bc_checked_p3)

                    ; #33346: <==commonly_known== 63328 (pos)
                    (Bb_checked_p3)

                    ; #37562: <==closure== 56713 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #41746: <==commonly_known== 24010 (neg)
                    (Pa_checked_p3)

                    ; #42973: <==closure== 83881 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #45067: <==commonly_known== 63328 (pos)
                    (Ba_checked_p3)

                    ; #48473: <==commonly_known== 24010 (neg)
                    (Pb_checked_p3)

                    ; #56713: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #63328: origin
                    (checked_p3)

                    ; #68404: <==commonly_known== 24010 (neg)
                    (Pc_checked_p3)

                    ; #76606: <==commonly_known== 63328 (pos)
                    (Bd_checked_p3)

                    ; #81428: <==commonly_known== 24010 (neg)
                    (Pd_checked_p3)

                    ; #83881: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #10171: <==negation-removal== 76606 (pos)
                    (not (Pd_not_checked_p3))

                    ; #13323: <==negation-removal== 15758 (pos)
                    (not (Pc_not_checked_p3))

                    ; #24010: <==negation-removal== 63328 (pos)
                    (not (not_checked_p3))

                    ; #25739: <==uncertain_firing== 42973 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #51862: <==negation-removal== 81428 (pos)
                    (not (Bd_not_checked_p3))

                    ; #55024: <==negation-removal== 83881 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #60999: <==negation-removal== 42973 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61453: <==uncertain_firing== 37562 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #62146: <==negation-removal== 56713 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #64290: <==uncertain_firing== 56713 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #65871: <==negation-removal== 41746 (pos)
                    (not (Ba_not_checked_p3))

                    ; #68859: <==negation-removal== 37562 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #77590: <==negation-removal== 45067 (pos)
                    (not (Pa_not_checked_p3))

                    ; #77814: <==negation-removal== 68404 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78485: <==negation-removal== 48473 (pos)
                    (not (Bb_not_checked_p3))

                    ; #91863: <==negation-removal== 33346 (pos)
                    (not (Pb_not_checked_p3))

                    ; #93873: <==uncertain_firing== 83881 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #11019: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #16079: <==commonly_known== 57779 (neg)
                    (Pa_checked_p4)

                    ; #29489: <==commonly_known== 59480 (pos)
                    (Bd_checked_p4)

                    ; #49896: <==commonly_known== 57779 (neg)
                    (Pc_checked_p4)

                    ; #50329: <==commonly_known== 57779 (neg)
                    (Pb_checked_p4)

                    ; #55650: <==commonly_known== 59480 (pos)
                    (Bb_checked_p4)

                    ; #59480: origin
                    (checked_p4)

                    ; #62620: <==commonly_known== 57779 (neg)
                    (Pd_checked_p4)

                    ; #64624: <==commonly_known== 59480 (pos)
                    (Bc_checked_p4)

                    ; #68667: <==commonly_known== 59480 (pos)
                    (Ba_checked_p4)

                    ; #68891: <==closure== 70113 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #70113: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #89712: <==closure== 11019 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #13482: <==negation-removal== 49896 (pos)
                    (not (Bc_not_checked_p4))

                    ; #14102: <==negation-removal== 68891 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #16731: <==negation-removal== 64624 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18341: <==negation-removal== 50329 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21039: <==negation-removal== 89712 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #28943: <==negation-removal== 70113 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #30149: <==uncertain_firing== 11019 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #36259: <==negation-removal== 11019 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #39926: <==negation-removal== 16079 (pos)
                    (not (Ba_not_checked_p4))

                    ; #49779: <==negation-removal== 68667 (pos)
                    (not (Pa_not_checked_p4))

                    ; #57779: <==negation-removal== 59480 (pos)
                    (not (not_checked_p4))

                    ; #62279: <==uncertain_firing== 70113 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #68464: <==negation-removal== 29489 (pos)
                    (not (Pd_not_checked_p4))

                    ; #70274: <==uncertain_firing== 68891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #74339: <==uncertain_firing== 89712 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #80469: <==negation-removal== 62620 (pos)
                    (not (Bd_not_checked_p4))

                    ; #85735: <==negation-removal== 55650 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12703: <==commonly_known== 14037 (pos)
                    (Bd_checked_p5)

                    ; #12925: <==commonly_known== 36661 (neg)
                    (Pa_checked_p5)

                    ; #14037: origin
                    (checked_p5)

                    ; #23299: <==closure== 57431 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #24925: <==commonly_known== 36661 (neg)
                    (Pc_checked_p5)

                    ; #35958: <==commonly_known== 14037 (pos)
                    (Bb_checked_p5)

                    ; #56719: <==commonly_known== 14037 (pos)
                    (Bc_checked_p5)

                    ; #57431: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #58069: <==commonly_known== 36661 (neg)
                    (Pd_checked_p5)

                    ; #68749: <==closure== 72234 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #69294: <==commonly_known== 36661 (neg)
                    (Pb_checked_p5)

                    ; #72234: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #80596: <==commonly_known== 14037 (pos)
                    (Ba_checked_p5)

                    ; #17635: <==negation-removal== 12925 (pos)
                    (not (Ba_not_checked_p5))

                    ; #17874: <==negation-removal== 72234 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #24125: <==negation-removal== 68749 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28504: <==negation-removal== 35958 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36661: <==negation-removal== 14037 (pos)
                    (not (not_checked_p5))

                    ; #37933: <==negation-removal== 23299 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #41636: <==negation-removal== 69294 (pos)
                    (not (Bb_not_checked_p5))

                    ; #57591: <==uncertain_firing== 23299 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #62627: <==uncertain_firing== 72234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69466: <==negation-removal== 24925 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69862: <==negation-removal== 58069 (pos)
                    (not (Bd_not_checked_p5))

                    ; #72865: <==negation-removal== 56719 (pos)
                    (not (Pc_not_checked_p5))

                    ; #74564: <==uncertain_firing== 57431 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #76325: <==negation-removal== 57431 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #78038: <==negation-removal== 12703 (pos)
                    (not (Pd_not_checked_p5))

                    ; #80238: <==uncertain_firing== 68749 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #90088: <==negation-removal== 80596 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #15260: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #17493: <==commonly_known== 26135 (neg)
                    (Pc_checked_p6)

                    ; #21656: <==commonly_known== 65823 (pos)
                    (Bb_checked_p6)

                    ; #27108: <==closure== 61102 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #34677: <==closure== 15260 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #49237: <==commonly_known== 65823 (pos)
                    (Ba_checked_p6)

                    ; #58990: <==commonly_known== 65823 (pos)
                    (Bc_checked_p6)

                    ; #61102: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #65823: origin
                    (checked_p6)

                    ; #67771: <==commonly_known== 26135 (neg)
                    (Pa_checked_p6)

                    ; #67877: <==commonly_known== 65823 (pos)
                    (Bd_checked_p6)

                    ; #78409: <==commonly_known== 26135 (neg)
                    (Pb_checked_p6)

                    ; #86891: <==commonly_known== 26135 (neg)
                    (Pd_checked_p6)

                    ; #11062: <==negation-removal== 67771 (pos)
                    (not (Ba_not_checked_p6))

                    ; #12545: <==negation-removal== 67877 (pos)
                    (not (Pd_not_checked_p6))

                    ; #14147: <==negation-removal== 86891 (pos)
                    (not (Bd_not_checked_p6))

                    ; #23871: <==negation-removal== 27108 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26135: <==negation-removal== 65823 (pos)
                    (not (not_checked_p6))

                    ; #32255: <==negation-removal== 17493 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43520: <==uncertain_firing== 34677 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #51423: <==negation-removal== 49237 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52597: <==negation-removal== 15260 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #55891: <==negation-removal== 34677 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #56419: <==uncertain_firing== 61102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #57294: <==negation-removal== 58990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60751: <==uncertain_firing== 27108 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #60794: <==uncertain_firing== 15260 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #65838: <==negation-removal== 21656 (pos)
                    (not (Pb_not_checked_p6))

                    ; #76401: <==negation-removal== 61102 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #90495: <==negation-removal== 78409 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #15888: <==commonly_known== 21324 (neg)
                    (Pb_checked_p7)

                    ; #18686: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #20479: <==commonly_known== 67498 (pos)
                    (Bb_checked_p7)

                    ; #29092: <==commonly_known== 67498 (pos)
                    (Ba_checked_p7)

                    ; #40137: <==commonly_known== 21324 (neg)
                    (Pd_checked_p7)

                    ; #53759: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #54137: <==closure== 53759 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #55366: <==commonly_known== 21324 (neg)
                    (Pc_checked_p7)

                    ; #65730: <==commonly_known== 67498 (pos)
                    (Bd_checked_p7)

                    ; #67498: origin
                    (checked_p7)

                    ; #70609: <==closure== 18686 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #79746: <==commonly_known== 67498 (pos)
                    (Bc_checked_p7)

                    ; #91022: <==commonly_known== 21324 (neg)
                    (Pa_checked_p7)

                    ; #10386: <==negation-removal== 53759 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #21324: <==negation-removal== 67498 (pos)
                    (not (not_checked_p7))

                    ; #24418: <==negation-removal== 79746 (pos)
                    (not (Pc_not_checked_p7))

                    ; #36136: <==negation-removal== 65730 (pos)
                    (not (Pd_not_checked_p7))

                    ; #40361: <==negation-removal== 40137 (pos)
                    (not (Bd_not_checked_p7))

                    ; #42187: <==uncertain_firing== 18686 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #45812: <==uncertain_firing== 54137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #46103: <==uncertain_firing== 53759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #46775: <==negation-removal== 55366 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47329: <==negation-removal== 54137 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #49599: <==negation-removal== 70609 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #54094: <==negation-removal== 15888 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64392: <==negation-removal== 18686 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #68349: <==negation-removal== 91022 (pos)
                    (not (Ba_not_checked_p7))

                    ; #73662: <==negation-removal== 29092 (pos)
                    (not (Pa_not_checked_p7))

                    ; #76554: <==uncertain_firing== 70609 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #81933: <==negation-removal== 20479 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #15755: <==closure== 38635 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17335: <==commonly_known== 88496 (neg)
                    (Pa_checked_p8)

                    ; #18514: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #38084: origin
                    (checked_p8)

                    ; #38635: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #38696: <==commonly_known== 38084 (pos)
                    (Bc_checked_p8)

                    ; #42129: <==commonly_known== 88496 (neg)
                    (Pd_checked_p8)

                    ; #47712: <==closure== 18514 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #58840: <==commonly_known== 38084 (pos)
                    (Ba_checked_p8)

                    ; #65271: <==commonly_known== 88496 (neg)
                    (Pc_checked_p8)

                    ; #67218: <==commonly_known== 38084 (pos)
                    (Bd_checked_p8)

                    ; #67455: <==commonly_known== 88496 (neg)
                    (Pb_checked_p8)

                    ; #71366: <==commonly_known== 38084 (pos)
                    (Bb_checked_p8)

                    ; #20889: <==negation-removal== 15755 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #22541: <==uncertain_firing== 18514 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #32108: <==negation-removal== 71366 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33626: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p8))

                    ; #42773: <==negation-removal== 58840 (pos)
                    (not (Pa_not_checked_p8))

                    ; #46003: <==negation-removal== 38635 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #51162: <==negation-removal== 67218 (pos)
                    (not (Pd_not_checked_p8))

                    ; #51894: <==uncertain_firing== 47712 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #52172: <==negation-removal== 65271 (pos)
                    (not (Bc_not_checked_p8))

                    ; #54021: <==uncertain_firing== 15755 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #56529: <==negation-removal== 42129 (pos)
                    (not (Bd_not_checked_p8))

                    ; #58069: <==uncertain_firing== 38635 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #65131: <==negation-removal== 47712 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #66637: <==negation-removal== 18514 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #73490: <==negation-removal== 17335 (pos)
                    (not (Ba_not_checked_p8))

                    ; #77316: <==negation-removal== 67455 (pos)
                    (not (Bb_not_checked_p8))

                    ; #88496: <==negation-removal== 38084 (pos)
                    (not (not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13846: <==commonly_known== 91889 (neg)
                    (Pa_checked_p9)

                    ; #15048: <==commonly_known== 91889 (neg)
                    (Pd_checked_p9)

                    ; #22791: <==commonly_known== 91889 (neg)
                    (Pb_checked_p9)

                    ; #36972: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #38481: <==commonly_known== 65042 (pos)
                    (Bc_checked_p9)

                    ; #42142: <==closure== 36972 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #47055: <==commonly_known== 65042 (pos)
                    (Bd_checked_p9)

                    ; #55848: <==commonly_known== 65042 (pos)
                    (Ba_checked_p9)

                    ; #61569: <==closure== 91000 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #63304: <==commonly_known== 65042 (pos)
                    (Bb_checked_p9)

                    ; #65042: origin
                    (checked_p9)

                    ; #79832: <==commonly_known== 91889 (neg)
                    (Pc_checked_p9)

                    ; #91000: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #10229: <==negation-removal== 79832 (pos)
                    (not (Bc_not_checked_p9))

                    ; #15957: <==uncertain_firing== 36972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #26043: <==negation-removal== 47055 (pos)
                    (not (Pd_not_checked_p9))

                    ; #31979: <==negation-removal== 13846 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39279: <==negation-removal== 61569 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #41552: <==negation-removal== 55848 (pos)
                    (not (Pa_not_checked_p9))

                    ; #44470: <==uncertain_firing== 91000 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #44653: <==negation-removal== 36972 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47806: <==negation-removal== 38481 (pos)
                    (not (Pc_not_checked_p9))

                    ; #54131: <==uncertain_firing== 61569 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #59518: <==uncertain_firing== 42142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #62328: <==negation-removal== 22791 (pos)
                    (not (Bb_not_checked_p9))

                    ; #69420: <==negation-removal== 42142 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #77363: <==negation-removal== 63304 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91889: <==negation-removal== 65042 (pos)
                    (not (not_checked_p9))

                    ; #97116: <==negation-removal== 15048 (pos)
                    (not (Bd_not_checked_p9))

                    ; #97752: <==negation-removal== 91000 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #10111: <==closure== 75256 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #16445: <==commonly_known== 42051 (pos)
                    (Bb_checked_p10)

                    ; #34474: <==commonly_known== 42051 (pos)
                    (Ba_checked_p10)

                    ; #36313: <==closure== 43223 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #42051: origin
                    (checked_p10)

                    ; #43223: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #47473: <==commonly_known== 42051 (pos)
                    (Bc_checked_p10)

                    ; #60143: <==commonly_known== 51914 (neg)
                    (Pc_checked_p10)

                    ; #75256: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #76314: <==commonly_known== 42051 (pos)
                    (Bd_checked_p10)

                    ; #77370: <==commonly_known== 51914 (neg)
                    (Pb_checked_p10)

                    ; #86013: <==commonly_known== 51914 (neg)
                    (Pd_checked_p10)

                    ; #89934: <==commonly_known== 51914 (neg)
                    (Pa_checked_p10)

                    ; #19600: <==negation-removal== 60143 (pos)
                    (not (Bc_not_checked_p10))

                    ; #25557: <==uncertain_firing== 43223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #27565: <==negation-removal== 47473 (pos)
                    (not (Pc_not_checked_p10))

                    ; #32255: <==uncertain_firing== 75256 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #36302: <==uncertain_firing== 36313 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #46325: <==negation-removal== 86013 (pos)
                    (not (Bd_not_checked_p10))

                    ; #51914: <==negation-removal== 42051 (pos)
                    (not (not_checked_p10))

                    ; #59137: <==negation-removal== 43223 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #60438: <==negation-removal== 36313 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #65100: <==uncertain_firing== 10111 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #65846: <==negation-removal== 16445 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67970: <==negation-removal== 34474 (pos)
                    (not (Pa_not_checked_p10))

                    ; #68017: <==negation-removal== 77370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #69511: <==negation-removal== 10111 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #72789: <==negation-removal== 76314 (pos)
                    (not (Pd_not_checked_p10))

                    ; #73746: <==negation-removal== 75256 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #88823: <==negation-removal== 89934 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #16397: <==closure== 59560 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #18798: <==commonly_known== 37872 (neg)
                    (Pb_checked_p11)

                    ; #21527: <==commonly_known== 37872 (neg)
                    (Pd_checked_p11)

                    ; #25942: <==commonly_known== 37872 (neg)
                    (Pa_checked_p11)

                    ; #32950: <==commonly_known== 83528 (pos)
                    (Bb_checked_p11)

                    ; #37820: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #42914: <==commonly_known== 83528 (pos)
                    (Bc_checked_p11)

                    ; #53470: <==commonly_known== 83528 (pos)
                    (Ba_checked_p11)

                    ; #59560: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #73279: <==commonly_known== 37872 (neg)
                    (Pc_checked_p11)

                    ; #73942: <==closure== 37820 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #75342: <==commonly_known== 83528 (pos)
                    (Bd_checked_p11)

                    ; #83528: origin
                    (checked_p11)

                    ; #13376: <==negation-removal== 32950 (pos)
                    (not (Pb_not_checked_p11))

                    ; #21321: <==negation-removal== 75342 (pos)
                    (not (Pd_not_checked_p11))

                    ; #26646: <==uncertain_firing== 16397 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #30727: <==negation-removal== 21527 (pos)
                    (not (Bd_not_checked_p11))

                    ; #37872: <==negation-removal== 83528 (pos)
                    (not (not_checked_p11))

                    ; #37909: <==negation-removal== 37820 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #39197: <==negation-removal== 25942 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51599: <==negation-removal== 73279 (pos)
                    (not (Bc_not_checked_p11))

                    ; #54726: <==negation-removal== 53470 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56707: <==uncertain_firing== 37820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #64963: <==negation-removal== 16397 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #68736: <==uncertain_firing== 73942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #73159: <==negation-removal== 59560 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #82527: <==negation-removal== 42914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #89605: <==negation-removal== 18798 (pos)
                    (not (Bb_not_checked_p11))

                    ; #89952: <==negation-removal== 73942 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #95175: <==uncertain_firing== 59560 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14344: <==commonly_known== 75019 (neg)
                    (Pd_checked_p12)

                    ; #21459: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #29285: <==commonly_known== 75019 (neg)
                    (Pa_checked_p12)

                    ; #30451: <==closure== 66090 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #30601: <==commonly_known== 74499 (pos)
                    (Bc_checked_p12)

                    ; #45407: <==commonly_known== 75019 (neg)
                    (Pc_checked_p12)

                    ; #48124: <==closure== 21459 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #66090: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #70735: <==commonly_known== 75019 (neg)
                    (Pb_checked_p12)

                    ; #71762: <==commonly_known== 74499 (pos)
                    (Bd_checked_p12)

                    ; #74499: origin
                    (checked_p12)

                    ; #84360: <==commonly_known== 74499 (pos)
                    (Bb_checked_p12)

                    ; #89979: <==commonly_known== 74499 (pos)
                    (Ba_checked_p12)

                    ; #14311: <==negation-removal== 89979 (pos)
                    (not (Pa_not_checked_p12))

                    ; #19022: <==negation-removal== 84360 (pos)
                    (not (Pb_not_checked_p12))

                    ; #21651: <==negation-removal== 21459 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #25469: <==negation-removal== 71762 (pos)
                    (not (Pd_not_checked_p12))

                    ; #26484: <==negation-removal== 70735 (pos)
                    (not (Bb_not_checked_p12))

                    ; #35451: <==negation-removal== 48124 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #38169: <==uncertain_firing== 30451 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #38903: <==negation-removal== 30451 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #42723: <==negation-removal== 45407 (pos)
                    (not (Bc_not_checked_p12))

                    ; #63519: <==negation-removal== 30601 (pos)
                    (not (Pc_not_checked_p12))

                    ; #63958: <==negation-removal== 66090 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #65846: <==uncertain_firing== 48124 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68799: <==uncertain_firing== 21459 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #75019: <==negation-removal== 74499 (pos)
                    (not (not_checked_p12))

                    ; #83890: <==negation-removal== 14344 (pos)
                    (not (Bd_not_checked_p12))

                    ; #85613: <==negation-removal== 29285 (pos)
                    (not (Ba_not_checked_p12))

                    ; #87200: <==uncertain_firing== 66090 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14145: <==commonly_known== 94225 (neg)
                    (Pd_checked_p1)

                    ; #14573: <==commonly_known== 20987 (pos)
                    (Bc_checked_p1)

                    ; #20987: origin
                    (checked_p1)

                    ; #28954: <==commonly_known== 94225 (neg)
                    (Pc_checked_p1)

                    ; #31131: <==commonly_known== 94225 (neg)
                    (Pb_checked_p1)

                    ; #32183: <==commonly_known== 94225 (neg)
                    (Pa_checked_p1)

                    ; #42683: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #43894: <==commonly_known== 20987 (pos)
                    (Ba_checked_p1)

                    ; #49136: <==closure== 42683 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #60687: <==closure== 78291 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #73758: <==commonly_known== 20987 (pos)
                    (Bd_checked_p1)

                    ; #78291: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #87228: <==commonly_known== 20987 (pos)
                    (Bb_checked_p1)

                    ; #10737: <==negation-removal== 31131 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14321: <==negation-removal== 87228 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17858: <==negation-removal== 28954 (pos)
                    (not (Bc_not_checked_p1))

                    ; #28546: <==uncertain_firing== 78291 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #29082: <==uncertain_firing== 60687 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #32406: <==negation-removal== 49136 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #34176: <==negation-removal== 14573 (pos)
                    (not (Pc_not_checked_p1))

                    ; #36070: <==negation-removal== 14145 (pos)
                    (not (Bd_not_checked_p1))

                    ; #57814: <==negation-removal== 42683 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #60877: <==negation-removal== 78291 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #66604: <==uncertain_firing== 42683 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #74061: <==negation-removal== 73758 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84734: <==negation-removal== 32183 (pos)
                    (not (Ba_not_checked_p1))

                    ; #84843: <==negation-removal== 43894 (pos)
                    (not (Pa_not_checked_p1))

                    ; #90509: <==negation-removal== 60687 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #94225: <==negation-removal== 20987 (pos)
                    (not (not_checked_p1))

                    ; #95348: <==uncertain_firing== 49136 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #10492: <==closure== 54904 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #12600: <==commonly_known== 89904 (neg)
                    (Pb_checked_p2)

                    ; #14469: <==commonly_known== 53491 (pos)
                    (Bc_checked_p2)

                    ; #17184: <==commonly_known== 53491 (pos)
                    (Bb_checked_p2)

                    ; #21549: <==commonly_known== 89904 (neg)
                    (Pd_checked_p2)

                    ; #25212: <==commonly_known== 89904 (neg)
                    (Pa_checked_p2)

                    ; #35003: <==commonly_known== 89904 (neg)
                    (Pc_checked_p2)

                    ; #36733: <==commonly_known== 53491 (pos)
                    (Ba_checked_p2)

                    ; #41164: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #53491: origin
                    (checked_p2)

                    ; #54904: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #60142: <==closure== 41164 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #78581: <==commonly_known== 53491 (pos)
                    (Bd_checked_p2)

                    ; #11171: <==uncertain_firing== 10492 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #14137: <==uncertain_firing== 54904 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #18260: <==negation-removal== 12600 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20369: <==negation-removal== 60142 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #25556: <==negation-removal== 78581 (pos)
                    (not (Pd_not_checked_p2))

                    ; #35692: <==negation-removal== 10492 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #36817: <==negation-removal== 54904 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #37398: <==uncertain_firing== 41164 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 25212 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45782: <==negation-removal== 35003 (pos)
                    (not (Bc_not_checked_p2))

                    ; #51474: <==negation-removal== 14469 (pos)
                    (not (Pc_not_checked_p2))

                    ; #65043: <==negation-removal== 17184 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69819: <==uncertain_firing== 60142 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #81199: <==negation-removal== 21549 (pos)
                    (not (Bd_not_checked_p2))

                    ; #81629: <==negation-removal== 36733 (pos)
                    (not (Pa_not_checked_p2))

                    ; #89904: <==negation-removal== 53491 (pos)
                    (not (not_checked_p2))

                    ; #99966: <==negation-removal== 41164 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #10501: <==closure== 90006 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #15758: <==commonly_known== 63328 (pos)
                    (Bc_checked_p3)

                    ; #33346: <==commonly_known== 63328 (pos)
                    (Bb_checked_p3)

                    ; #41746: <==commonly_known== 24010 (neg)
                    (Pa_checked_p3)

                    ; #45067: <==commonly_known== 63328 (pos)
                    (Ba_checked_p3)

                    ; #47113: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #48473: <==commonly_known== 24010 (neg)
                    (Pb_checked_p3)

                    ; #63328: origin
                    (checked_p3)

                    ; #68404: <==commonly_known== 24010 (neg)
                    (Pc_checked_p3)

                    ; #73018: <==closure== 47113 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #76606: <==commonly_known== 63328 (pos)
                    (Bd_checked_p3)

                    ; #81428: <==commonly_known== 24010 (neg)
                    (Pd_checked_p3)

                    ; #90006: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #10171: <==negation-removal== 76606 (pos)
                    (not (Pd_not_checked_p3))

                    ; #13323: <==negation-removal== 15758 (pos)
                    (not (Pc_not_checked_p3))

                    ; #23553: <==negation-removal== 10501 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #24010: <==negation-removal== 63328 (pos)
                    (not (not_checked_p3))

                    ; #26607: <==negation-removal== 47113 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #30853: <==uncertain_firing== 73018 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #34029: <==uncertain_firing== 10501 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #51862: <==negation-removal== 81428 (pos)
                    (not (Bd_not_checked_p3))

                    ; #65871: <==negation-removal== 41746 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77301: <==negation-removal== 90006 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #77590: <==negation-removal== 45067 (pos)
                    (not (Pa_not_checked_p3))

                    ; #77814: <==negation-removal== 68404 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78485: <==negation-removal== 48473 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80650: <==uncertain_firing== 47113 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #87064: <==uncertain_firing== 90006 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #88527: <==negation-removal== 73018 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #91863: <==negation-removal== 33346 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14359: <==closure== 62103 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #16079: <==commonly_known== 57779 (neg)
                    (Pa_checked_p4)

                    ; #29489: <==commonly_known== 59480 (pos)
                    (Bd_checked_p4)

                    ; #49896: <==commonly_known== 57779 (neg)
                    (Pc_checked_p4)

                    ; #50329: <==commonly_known== 57779 (neg)
                    (Pb_checked_p4)

                    ; #55650: <==commonly_known== 59480 (pos)
                    (Bb_checked_p4)

                    ; #58495: <==closure== 60740 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #59480: origin
                    (checked_p4)

                    ; #60740: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #62103: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #62620: <==commonly_known== 57779 (neg)
                    (Pd_checked_p4)

                    ; #64624: <==commonly_known== 59480 (pos)
                    (Bc_checked_p4)

                    ; #68667: <==commonly_known== 59480 (pos)
                    (Ba_checked_p4)

                    ; #11069: <==negation-removal== 60740 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #13482: <==negation-removal== 49896 (pos)
                    (not (Bc_not_checked_p4))

                    ; #16731: <==negation-removal== 64624 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18341: <==negation-removal== 50329 (pos)
                    (not (Bb_not_checked_p4))

                    ; #21111: <==negation-removal== 58495 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #39926: <==negation-removal== 16079 (pos)
                    (not (Ba_not_checked_p4))

                    ; #47243: <==negation-removal== 14359 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #49779: <==negation-removal== 68667 (pos)
                    (not (Pa_not_checked_p4))

                    ; #51959: <==uncertain_firing== 60740 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #57779: <==negation-removal== 59480 (pos)
                    (not (not_checked_p4))

                    ; #63890: <==uncertain_firing== 14359 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #64412: <==uncertain_firing== 62103 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68464: <==negation-removal== 29489 (pos)
                    (not (Pd_not_checked_p4))

                    ; #75628: <==negation-removal== 62103 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #80469: <==negation-removal== 62620 (pos)
                    (not (Bd_not_checked_p4))

                    ; #85735: <==negation-removal== 55650 (pos)
                    (not (Pb_not_checked_p4))

                    ; #91947: <==uncertain_firing== 58495 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10673: <==closure== 65438 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #12703: <==commonly_known== 14037 (pos)
                    (Bd_checked_p5)

                    ; #12925: <==commonly_known== 36661 (neg)
                    (Pa_checked_p5)

                    ; #14037: origin
                    (checked_p5)

                    ; #23644: <==closure== 65104 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #24925: <==commonly_known== 36661 (neg)
                    (Pc_checked_p5)

                    ; #35958: <==commonly_known== 14037 (pos)
                    (Bb_checked_p5)

                    ; #56719: <==commonly_known== 14037 (pos)
                    (Bc_checked_p5)

                    ; #58069: <==commonly_known== 36661 (neg)
                    (Pd_checked_p5)

                    ; #65104: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #65438: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #69294: <==commonly_known== 36661 (neg)
                    (Pb_checked_p5)

                    ; #80596: <==commonly_known== 14037 (pos)
                    (Ba_checked_p5)

                    ; #15604: <==negation-removal== 23644 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #17635: <==negation-removal== 12925 (pos)
                    (not (Ba_not_checked_p5))

                    ; #28504: <==negation-removal== 35958 (pos)
                    (not (Pb_not_checked_p5))

                    ; #36661: <==negation-removal== 14037 (pos)
                    (not (not_checked_p5))

                    ; #40045: <==uncertain_firing== 23644 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #41636: <==negation-removal== 69294 (pos)
                    (not (Bb_not_checked_p5))

                    ; #46518: <==uncertain_firing== 65104 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #47352: <==negation-removal== 65104 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #54015: <==uncertain_firing== 10673 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #69466: <==negation-removal== 24925 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69862: <==negation-removal== 58069 (pos)
                    (not (Bd_not_checked_p5))

                    ; #72865: <==negation-removal== 56719 (pos)
                    (not (Pc_not_checked_p5))

                    ; #77967: <==uncertain_firing== 65438 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #78038: <==negation-removal== 12703 (pos)
                    (not (Pd_not_checked_p5))

                    ; #78758: <==negation-removal== 10673 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #83807: <==negation-removal== 65438 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #90088: <==negation-removal== 80596 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #17493: <==commonly_known== 26135 (neg)
                    (Pc_checked_p6)

                    ; #21656: <==commonly_known== 65823 (pos)
                    (Bb_checked_p6)

                    ; #49237: <==commonly_known== 65823 (pos)
                    (Ba_checked_p6)

                    ; #57511: <==closure== 60908 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #58990: <==commonly_known== 65823 (pos)
                    (Bc_checked_p6)

                    ; #60908: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #65823: origin
                    (checked_p6)

                    ; #67771: <==commonly_known== 26135 (neg)
                    (Pa_checked_p6)

                    ; #67877: <==commonly_known== 65823 (pos)
                    (Bd_checked_p6)

                    ; #78409: <==commonly_known== 26135 (neg)
                    (Pb_checked_p6)

                    ; #82312: <==closure== 89142 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #86891: <==commonly_known== 26135 (neg)
                    (Pd_checked_p6)

                    ; #89142: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #11062: <==negation-removal== 67771 (pos)
                    (not (Ba_not_checked_p6))

                    ; #12545: <==negation-removal== 67877 (pos)
                    (not (Pd_not_checked_p6))

                    ; #14147: <==negation-removal== 86891 (pos)
                    (not (Bd_not_checked_p6))

                    ; #16755: <==negation-removal== 89142 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #25260: <==negation-removal== 57511 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #26135: <==negation-removal== 65823 (pos)
                    (not (not_checked_p6))

                    ; #32255: <==negation-removal== 17493 (pos)
                    (not (Bc_not_checked_p6))

                    ; #43052: <==uncertain_firing== 82312 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #51423: <==negation-removal== 49237 (pos)
                    (not (Pa_not_checked_p6))

                    ; #54020: <==negation-removal== 60908 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #57294: <==negation-removal== 58990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #65838: <==negation-removal== 21656 (pos)
                    (not (Pb_not_checked_p6))

                    ; #76474: <==uncertain_firing== 89142 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #83876: <==uncertain_firing== 57511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90495: <==negation-removal== 78409 (pos)
                    (not (Bb_not_checked_p6))

                    ; #90633: <==negation-removal== 82312 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #90864: <==uncertain_firing== 60908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #12895: <==closure== 76718 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #15888: <==commonly_known== 21324 (neg)
                    (Pb_checked_p7)

                    ; #20479: <==commonly_known== 67498 (pos)
                    (Bb_checked_p7)

                    ; #29092: <==commonly_known== 67498 (pos)
                    (Ba_checked_p7)

                    ; #40137: <==commonly_known== 21324 (neg)
                    (Pd_checked_p7)

                    ; #44436: <==closure== 55074 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #55074: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55366: <==commonly_known== 21324 (neg)
                    (Pc_checked_p7)

                    ; #65730: <==commonly_known== 67498 (pos)
                    (Bd_checked_p7)

                    ; #67498: origin
                    (checked_p7)

                    ; #76718: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #79746: <==commonly_known== 67498 (pos)
                    (Bc_checked_p7)

                    ; #91022: <==commonly_known== 21324 (neg)
                    (Pa_checked_p7)

                    ; #18015: <==negation-removal== 55074 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #21324: <==negation-removal== 67498 (pos)
                    (not (not_checked_p7))

                    ; #24418: <==negation-removal== 79746 (pos)
                    (not (Pc_not_checked_p7))

                    ; #24425: <==negation-removal== 12895 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #33361: <==uncertain_firing== 76718 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #36136: <==negation-removal== 65730 (pos)
                    (not (Pd_not_checked_p7))

                    ; #36237: <==uncertain_firing== 12895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #40361: <==negation-removal== 40137 (pos)
                    (not (Bd_not_checked_p7))

                    ; #45550: <==uncertain_firing== 44436 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #46775: <==negation-removal== 55366 (pos)
                    (not (Bc_not_checked_p7))

                    ; #54094: <==negation-removal== 15888 (pos)
                    (not (Bb_not_checked_p7))

                    ; #55977: <==negation-removal== 76718 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #68349: <==negation-removal== 91022 (pos)
                    (not (Ba_not_checked_p7))

                    ; #71489: <==negation-removal== 44436 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #73662: <==negation-removal== 29092 (pos)
                    (not (Pa_not_checked_p7))

                    ; #78445: <==uncertain_firing== 55074 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #81933: <==negation-removal== 20479 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13223: <==closure== 25527 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #17335: <==commonly_known== 88496 (neg)
                    (Pa_checked_p8)

                    ; #25527: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #38084: origin
                    (checked_p8)

                    ; #38696: <==commonly_known== 38084 (pos)
                    (Bc_checked_p8)

                    ; #42129: <==commonly_known== 88496 (neg)
                    (Pd_checked_p8)

                    ; #58840: <==commonly_known== 38084 (pos)
                    (Ba_checked_p8)

                    ; #65271: <==commonly_known== 88496 (neg)
                    (Pc_checked_p8)

                    ; #67218: <==commonly_known== 38084 (pos)
                    (Bd_checked_p8)

                    ; #67455: <==commonly_known== 88496 (neg)
                    (Pb_checked_p8)

                    ; #71366: <==commonly_known== 38084 (pos)
                    (Bb_checked_p8)

                    ; #72346: <==closure== 74522 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #74522: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #11933: <==uncertain_firing== 25527 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #14326: <==negation-removal== 25527 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #20444: <==uncertain_firing== 13223 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #21319: <==negation-removal== 74522 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #21381: <==negation-removal== 13223 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25041: <==uncertain_firing== 74522 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #32108: <==negation-removal== 71366 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33626: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p8))

                    ; #42773: <==negation-removal== 58840 (pos)
                    (not (Pa_not_checked_p8))

                    ; #51162: <==negation-removal== 67218 (pos)
                    (not (Pd_not_checked_p8))

                    ; #52172: <==negation-removal== 65271 (pos)
                    (not (Bc_not_checked_p8))

                    ; #56529: <==negation-removal== 42129 (pos)
                    (not (Bd_not_checked_p8))

                    ; #70110: <==uncertain_firing== 72346 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #72583: <==negation-removal== 72346 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #73490: <==negation-removal== 17335 (pos)
                    (not (Ba_not_checked_p8))

                    ; #77316: <==negation-removal== 67455 (pos)
                    (not (Bb_not_checked_p8))

                    ; #88496: <==negation-removal== 38084 (pos)
                    (not (not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13846: <==commonly_known== 91889 (neg)
                    (Pa_checked_p9)

                    ; #15048: <==commonly_known== 91889 (neg)
                    (Pd_checked_p9)

                    ; #22791: <==commonly_known== 91889 (neg)
                    (Pb_checked_p9)

                    ; #38481: <==commonly_known== 65042 (pos)
                    (Bc_checked_p9)

                    ; #47055: <==commonly_known== 65042 (pos)
                    (Bd_checked_p9)

                    ; #51638: <==closure== 79214 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #55772: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #55848: <==commonly_known== 65042 (pos)
                    (Ba_checked_p9)

                    ; #63304: <==commonly_known== 65042 (pos)
                    (Bb_checked_p9)

                    ; #65042: origin
                    (checked_p9)

                    ; #79214: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #79832: <==commonly_known== 91889 (neg)
                    (Pc_checked_p9)

                    ; #85489: <==closure== 55772 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #10229: <==negation-removal== 79832 (pos)
                    (not (Bc_not_checked_p9))

                    ; #26043: <==negation-removal== 47055 (pos)
                    (not (Pd_not_checked_p9))

                    ; #28706: <==negation-removal== 51638 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #31979: <==negation-removal== 13846 (pos)
                    (not (Ba_not_checked_p9))

                    ; #41552: <==negation-removal== 55848 (pos)
                    (not (Pa_not_checked_p9))

                    ; #47806: <==negation-removal== 38481 (pos)
                    (not (Pc_not_checked_p9))

                    ; #48682: <==uncertain_firing== 85489 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #49453: <==uncertain_firing== 79214 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #51720: <==uncertain_firing== 51638 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #62328: <==negation-removal== 22791 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77363: <==negation-removal== 63304 (pos)
                    (not (Pb_not_checked_p9))

                    ; #81269: <==negation-removal== 85489 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #83174: <==negation-removal== 55772 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #90524: <==uncertain_firing== 55772 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91889: <==negation-removal== 65042 (pos)
                    (not (not_checked_p9))

                    ; #92072: <==negation-removal== 79214 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #97116: <==negation-removal== 15048 (pos)
                    (not (Bd_not_checked_p9))))

    (:action observe_d_p10_s
        :precondition (and (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #16445: <==commonly_known== 42051 (pos)
                    (Bb_checked_p10)

                    ; #25703: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #34474: <==commonly_known== 42051 (pos)
                    (Ba_checked_p10)

                    ; #37625: <==closure== 46604 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #42051: origin
                    (checked_p10)

                    ; #46604: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #47473: <==commonly_known== 42051 (pos)
                    (Bc_checked_p10)

                    ; #55612: <==closure== 25703 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #60143: <==commonly_known== 51914 (neg)
                    (Pc_checked_p10)

                    ; #76314: <==commonly_known== 42051 (pos)
                    (Bd_checked_p10)

                    ; #77370: <==commonly_known== 51914 (neg)
                    (Pb_checked_p10)

                    ; #86013: <==commonly_known== 51914 (neg)
                    (Pd_checked_p10)

                    ; #89934: <==commonly_known== 51914 (neg)
                    (Pa_checked_p10)

                    ; #19600: <==negation-removal== 60143 (pos)
                    (not (Bc_not_checked_p10))

                    ; #24098: <==uncertain_firing== 55612 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #27565: <==negation-removal== 47473 (pos)
                    (not (Pc_not_checked_p10))

                    ; #40333: <==negation-removal== 37625 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #46325: <==negation-removal== 86013 (pos)
                    (not (Bd_not_checked_p10))

                    ; #46412: <==uncertain_firing== 37625 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #46538: <==negation-removal== 55612 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #51914: <==negation-removal== 42051 (pos)
                    (not (not_checked_p10))

                    ; #54837: <==uncertain_firing== 46604 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #65821: <==negation-removal== 46604 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #65846: <==negation-removal== 16445 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67497: <==negation-removal== 25703 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #67970: <==negation-removal== 34474 (pos)
                    (not (Pa_not_checked_p10))

                    ; #68017: <==negation-removal== 77370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #72069: <==uncertain_firing== 25703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #72789: <==negation-removal== 76314 (pos)
                    (not (Pd_not_checked_p10))

                    ; #88823: <==negation-removal== 89934 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observe_d_p11_s
        :precondition (and (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #18798: <==commonly_known== 37872 (neg)
                    (Pb_checked_p11)

                    ; #21527: <==commonly_known== 37872 (neg)
                    (Pd_checked_p11)

                    ; #25942: <==commonly_known== 37872 (neg)
                    (Pa_checked_p11)

                    ; #32950: <==commonly_known== 83528 (pos)
                    (Bb_checked_p11)

                    ; #42914: <==commonly_known== 83528 (pos)
                    (Bc_checked_p11)

                    ; #51942: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #53470: <==commonly_known== 83528 (pos)
                    (Ba_checked_p11)

                    ; #55770: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #61277: <==closure== 51942 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #73279: <==commonly_known== 37872 (neg)
                    (Pc_checked_p11)

                    ; #75342: <==commonly_known== 83528 (pos)
                    (Bd_checked_p11)

                    ; #82426: <==closure== 55770 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #83528: origin
                    (checked_p11)

                    ; #11942: <==negation-removal== 51942 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #13376: <==negation-removal== 32950 (pos)
                    (not (Pb_not_checked_p11))

                    ; #18612: <==uncertain_firing== 55770 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #21321: <==negation-removal== 75342 (pos)
                    (not (Pd_not_checked_p11))

                    ; #27429: <==uncertain_firing== 61277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #30727: <==negation-removal== 21527 (pos)
                    (not (Bd_not_checked_p11))

                    ; #37872: <==negation-removal== 83528 (pos)
                    (not (not_checked_p11))

                    ; #39197: <==negation-removal== 25942 (pos)
                    (not (Ba_not_checked_p11))

                    ; #51599: <==negation-removal== 73279 (pos)
                    (not (Bc_not_checked_p11))

                    ; #51988: <==uncertain_firing== 51942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #54726: <==negation-removal== 53470 (pos)
                    (not (Pa_not_checked_p11))

                    ; #56229: <==uncertain_firing== 82426 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #77597: <==negation-removal== 82426 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #79900: <==negation-removal== 55770 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #82527: <==negation-removal== 42914 (pos)
                    (not (Pc_not_checked_p11))

                    ; #87122: <==negation-removal== 61277 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #89605: <==negation-removal== 18798 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observe_d_p12_s
        :precondition (and (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #13166: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #14344: <==commonly_known== 75019 (neg)
                    (Pd_checked_p12)

                    ; #19854: <==closure== 13166 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #26234: <==closure== 69268 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #29285: <==commonly_known== 75019 (neg)
                    (Pa_checked_p12)

                    ; #30601: <==commonly_known== 74499 (pos)
                    (Bc_checked_p12)

                    ; #45407: <==commonly_known== 75019 (neg)
                    (Pc_checked_p12)

                    ; #69268: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #70735: <==commonly_known== 75019 (neg)
                    (Pb_checked_p12)

                    ; #71762: <==commonly_known== 74499 (pos)
                    (Bd_checked_p12)

                    ; #74499: origin
                    (checked_p12)

                    ; #84360: <==commonly_known== 74499 (pos)
                    (Bb_checked_p12)

                    ; #89979: <==commonly_known== 74499 (pos)
                    (Ba_checked_p12)

                    ; #14311: <==negation-removal== 89979 (pos)
                    (not (Pa_not_checked_p12))

                    ; #17241: <==negation-removal== 13166 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #19022: <==negation-removal== 84360 (pos)
                    (not (Pb_not_checked_p12))

                    ; #23260: <==uncertain_firing== 13166 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #25469: <==negation-removal== 71762 (pos)
                    (not (Pd_not_checked_p12))

                    ; #26484: <==negation-removal== 70735 (pos)
                    (not (Bb_not_checked_p12))

                    ; #34931: <==negation-removal== 69268 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #42723: <==negation-removal== 45407 (pos)
                    (not (Bc_not_checked_p12))

                    ; #55968: <==uncertain_firing== 26234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #63519: <==negation-removal== 30601 (pos)
                    (not (Pc_not_checked_p12))

                    ; #74415: <==uncertain_firing== 69268 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #75019: <==negation-removal== 74499 (pos)
                    (not (not_checked_p12))

                    ; #81513: <==negation-removal== 19854 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #83048: <==negation-removal== 26234 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #83447: <==uncertain_firing== 19854 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #83890: <==negation-removal== 14344 (pos)
                    (not (Bd_not_checked_p12))

                    ; #85613: <==negation-removal== 29285 (pos)
                    (not (Ba_not_checked_p12))))

    (:action observe_d_p1_s
        :precondition (and (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #14145: <==commonly_known== 94225 (neg)
                    (Pd_checked_p1)

                    ; #14573: <==commonly_known== 20987 (pos)
                    (Bc_checked_p1)

                    ; #16533: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #20987: origin
                    (checked_p1)

                    ; #21824: <==closure== 16533 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #28954: <==commonly_known== 94225 (neg)
                    (Pc_checked_p1)

                    ; #28974: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #31131: <==commonly_known== 94225 (neg)
                    (Pb_checked_p1)

                    ; #32183: <==commonly_known== 94225 (neg)
                    (Pa_checked_p1)

                    ; #43894: <==commonly_known== 20987 (pos)
                    (Ba_checked_p1)

                    ; #59950: <==closure== 28974 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #73758: <==commonly_known== 20987 (pos)
                    (Bd_checked_p1)

                    ; #87228: <==commonly_known== 20987 (pos)
                    (Bb_checked_p1)

                    ; #10737: <==negation-removal== 31131 (pos)
                    (not (Bb_not_checked_p1))

                    ; #14321: <==negation-removal== 87228 (pos)
                    (not (Pb_not_checked_p1))

                    ; #17858: <==negation-removal== 28954 (pos)
                    (not (Bc_not_checked_p1))

                    ; #18071: <==negation-removal== 21824 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #34176: <==negation-removal== 14573 (pos)
                    (not (Pc_not_checked_p1))

                    ; #36070: <==negation-removal== 14145 (pos)
                    (not (Bd_not_checked_p1))

                    ; #59684: <==uncertain_firing== 28974 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #74061: <==negation-removal== 73758 (pos)
                    (not (Pd_not_checked_p1))

                    ; #76141: <==uncertain_firing== 59950 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #77910: <==negation-removal== 28974 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #79264: <==uncertain_firing== 21824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #83227: <==negation-removal== 59950 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #84734: <==negation-removal== 32183 (pos)
                    (not (Ba_not_checked_p1))

                    ; #84843: <==negation-removal== 43894 (pos)
                    (not (Pa_not_checked_p1))

                    ; #86860: <==negation-removal== 16533 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #89262: <==uncertain_firing== 16533 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #94225: <==negation-removal== 20987 (pos)
                    (not (not_checked_p1))))

    (:action observe_d_p2_s
        :precondition (and (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #12600: <==commonly_known== 89904 (neg)
                    (Pb_checked_p2)

                    ; #14469: <==commonly_known== 53491 (pos)
                    (Bc_checked_p2)

                    ; #17184: <==commonly_known== 53491 (pos)
                    (Bb_checked_p2)

                    ; #19024: <==closure== 21217 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #21217: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #21549: <==commonly_known== 89904 (neg)
                    (Pd_checked_p2)

                    ; #25212: <==commonly_known== 89904 (neg)
                    (Pa_checked_p2)

                    ; #35003: <==commonly_known== 89904 (neg)
                    (Pc_checked_p2)

                    ; #36733: <==commonly_known== 53491 (pos)
                    (Ba_checked_p2)

                    ; #51028: <==closure== 91203 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #53491: origin
                    (checked_p2)

                    ; #78581: <==commonly_known== 53491 (pos)
                    (Bd_checked_p2)

                    ; #91203: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #18260: <==negation-removal== 12600 (pos)
                    (not (Bb_not_checked_p2))

                    ; #25556: <==negation-removal== 78581 (pos)
                    (not (Pd_not_checked_p2))

                    ; #40260: <==uncertain_firing== 19024 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 25212 (pos)
                    (not (Ba_not_checked_p2))

                    ; #45782: <==negation-removal== 35003 (pos)
                    (not (Bc_not_checked_p2))

                    ; #51474: <==negation-removal== 14469 (pos)
                    (not (Pc_not_checked_p2))

                    ; #57672: <==negation-removal== 51028 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #59466: <==uncertain_firing== 21217 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #65043: <==negation-removal== 17184 (pos)
                    (not (Pb_not_checked_p2))

                    ; #67221: <==uncertain_firing== 91203 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #73310: <==negation-removal== 19024 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #81199: <==negation-removal== 21549 (pos)
                    (not (Bd_not_checked_p2))

                    ; #81629: <==negation-removal== 36733 (pos)
                    (not (Pa_not_checked_p2))

                    ; #84949: <==negation-removal== 91203 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #89904: <==negation-removal== 53491 (pos)
                    (not (not_checked_p2))

                    ; #90716: <==negation-removal== 21217 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #91869: <==uncertain_firing== 51028 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))))

    (:action observe_d_p3_s
        :precondition (and (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #14900: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #15758: <==commonly_known== 63328 (pos)
                    (Bc_checked_p3)

                    ; #33346: <==commonly_known== 63328 (pos)
                    (Bb_checked_p3)

                    ; #41746: <==commonly_known== 24010 (neg)
                    (Pa_checked_p3)

                    ; #45067: <==commonly_known== 63328 (pos)
                    (Ba_checked_p3)

                    ; #48473: <==commonly_known== 24010 (neg)
                    (Pb_checked_p3)

                    ; #63328: origin
                    (checked_p3)

                    ; #68404: <==commonly_known== 24010 (neg)
                    (Pc_checked_p3)

                    ; #71884: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #76606: <==commonly_known== 63328 (pos)
                    (Bd_checked_p3)

                    ; #81428: <==commonly_known== 24010 (neg)
                    (Pd_checked_p3)

                    ; #84618: <==closure== 14900 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #86193: <==closure== 71884 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #10171: <==negation-removal== 76606 (pos)
                    (not (Pd_not_checked_p3))

                    ; #13323: <==negation-removal== 15758 (pos)
                    (not (Pc_not_checked_p3))

                    ; #24010: <==negation-removal== 63328 (pos)
                    (not (not_checked_p3))

                    ; #25582: <==uncertain_firing== 86193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36419: <==uncertain_firing== 14900 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #36765: <==negation-removal== 71884 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #50328: <==uncertain_firing== 71884 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #51794: <==negation-removal== 86193 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #51862: <==negation-removal== 81428 (pos)
                    (not (Bd_not_checked_p3))

                    ; #57145: <==negation-removal== 84618 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #65871: <==negation-removal== 41746 (pos)
                    (not (Ba_not_checked_p3))

                    ; #77590: <==negation-removal== 45067 (pos)
                    (not (Pa_not_checked_p3))

                    ; #77814: <==negation-removal== 68404 (pos)
                    (not (Bc_not_checked_p3))

                    ; #78485: <==negation-removal== 48473 (pos)
                    (not (Bb_not_checked_p3))

                    ; #91514: <==uncertain_firing== 84618 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #91698: <==negation-removal== 14900 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #91863: <==negation-removal== 33346 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_d_p4_s
        :precondition (and (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #14160: <==closure== 49443 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #16079: <==commonly_known== 57779 (neg)
                    (Pa_checked_p4)

                    ; #29489: <==commonly_known== 59480 (pos)
                    (Bd_checked_p4)

                    ; #30633: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #48460: <==closure== 30633 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #49443: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #49896: <==commonly_known== 57779 (neg)
                    (Pc_checked_p4)

                    ; #50329: <==commonly_known== 57779 (neg)
                    (Pb_checked_p4)

                    ; #55650: <==commonly_known== 59480 (pos)
                    (Bb_checked_p4)

                    ; #59480: origin
                    (checked_p4)

                    ; #62620: <==commonly_known== 57779 (neg)
                    (Pd_checked_p4)

                    ; #64624: <==commonly_known== 59480 (pos)
                    (Bc_checked_p4)

                    ; #68667: <==commonly_known== 59480 (pos)
                    (Ba_checked_p4)

                    ; #13482: <==negation-removal== 49896 (pos)
                    (not (Bc_not_checked_p4))

                    ; #16731: <==negation-removal== 64624 (pos)
                    (not (Pc_not_checked_p4))

                    ; #18341: <==negation-removal== 50329 (pos)
                    (not (Bb_not_checked_p4))

                    ; #19567: <==negation-removal== 14160 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #39668: <==negation-removal== 48460 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #39926: <==negation-removal== 16079 (pos)
                    (not (Ba_not_checked_p4))

                    ; #45697: <==uncertain_firing== 30633 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #49779: <==negation-removal== 68667 (pos)
                    (not (Pa_not_checked_p4))

                    ; #53670: <==uncertain_firing== 49443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57779: <==negation-removal== 59480 (pos)
                    (not (not_checked_p4))

                    ; #68464: <==negation-removal== 29489 (pos)
                    (not (Pd_not_checked_p4))

                    ; #80469: <==negation-removal== 62620 (pos)
                    (not (Bd_not_checked_p4))

                    ; #85735: <==negation-removal== 55650 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88146: <==uncertain_firing== 14160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #89309: <==negation-removal== 49443 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #89698: <==uncertain_firing== 48460 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #91259: <==negation-removal== 30633 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))))

    (:action observe_d_p5_s
        :precondition (and (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #12703: <==commonly_known== 14037 (pos)
                    (Bd_checked_p5)

                    ; #12925: <==commonly_known== 36661 (neg)
                    (Pa_checked_p5)

                    ; #14037: origin
                    (checked_p5)

                    ; #24925: <==commonly_known== 36661 (neg)
                    (Pc_checked_p5)

                    ; #35685: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #35958: <==commonly_known== 14037 (pos)
                    (Bb_checked_p5)

                    ; #56719: <==commonly_known== 14037 (pos)
                    (Bc_checked_p5)

                    ; #58069: <==commonly_known== 36661 (neg)
                    (Pd_checked_p5)

                    ; #62883: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #69294: <==commonly_known== 36661 (neg)
                    (Pb_checked_p5)

                    ; #80056: <==closure== 35685 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #80596: <==commonly_known== 14037 (pos)
                    (Ba_checked_p5)

                    ; #91780: <==closure== 62883 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #11093: <==uncertain_firing== 91780 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #14025: <==negation-removal== 80056 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #17635: <==negation-removal== 12925 (pos)
                    (not (Ba_not_checked_p5))

                    ; #28504: <==negation-removal== 35958 (pos)
                    (not (Pb_not_checked_p5))

                    ; #32295: <==uncertain_firing== 80056 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #36661: <==negation-removal== 14037 (pos)
                    (not (not_checked_p5))

                    ; #41636: <==negation-removal== 69294 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44791: <==negation-removal== 62883 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #45495: <==uncertain_firing== 35685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #58107: <==uncertain_firing== 62883 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #60909: <==negation-removal== 35685 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #69466: <==negation-removal== 24925 (pos)
                    (not (Bc_not_checked_p5))

                    ; #69862: <==negation-removal== 58069 (pos)
                    (not (Bd_not_checked_p5))

                    ; #72865: <==negation-removal== 56719 (pos)
                    (not (Pc_not_checked_p5))

                    ; #78038: <==negation-removal== 12703 (pos)
                    (not (Pd_not_checked_p5))

                    ; #85303: <==negation-removal== 91780 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #90088: <==negation-removal== 80596 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observe_d_p6_s
        :precondition (and (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #17493: <==commonly_known== 26135 (neg)
                    (Pc_checked_p6)

                    ; #20641: <==closure== 34558 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #21656: <==commonly_known== 65823 (pos)
                    (Bb_checked_p6)

                    ; #34558: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #49237: <==commonly_known== 65823 (pos)
                    (Ba_checked_p6)

                    ; #58990: <==commonly_known== 65823 (pos)
                    (Bc_checked_p6)

                    ; #65823: origin
                    (checked_p6)

                    ; #67771: <==commonly_known== 26135 (neg)
                    (Pa_checked_p6)

                    ; #67877: <==commonly_known== 65823 (pos)
                    (Bd_checked_p6)

                    ; #68243: <==closure== 76810 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #76810: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #78409: <==commonly_known== 26135 (neg)
                    (Pb_checked_p6)

                    ; #86891: <==commonly_known== 26135 (neg)
                    (Pd_checked_p6)

                    ; #11062: <==negation-removal== 67771 (pos)
                    (not (Ba_not_checked_p6))

                    ; #12545: <==negation-removal== 67877 (pos)
                    (not (Pd_not_checked_p6))

                    ; #14147: <==negation-removal== 86891 (pos)
                    (not (Bd_not_checked_p6))

                    ; #16129: <==uncertain_firing== 34558 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #21925: <==negation-removal== 20641 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #26135: <==negation-removal== 65823 (pos)
                    (not (not_checked_p6))

                    ; #32255: <==negation-removal== 17493 (pos)
                    (not (Bc_not_checked_p6))

                    ; #51423: <==negation-removal== 49237 (pos)
                    (not (Pa_not_checked_p6))

                    ; #55171: <==negation-removal== 68243 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #57294: <==negation-removal== 58990 (pos)
                    (not (Pc_not_checked_p6))

                    ; #60549: <==uncertain_firing== 76810 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #61741: <==uncertain_firing== 68243 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #62590: <==negation-removal== 34558 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #65838: <==negation-removal== 21656 (pos)
                    (not (Pb_not_checked_p6))

                    ; #67470: <==negation-removal== 76810 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #72399: <==uncertain_firing== 20641 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #90495: <==negation-removal== 78409 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observe_d_p7_s
        :precondition (and (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #11449: <==closure== 43152 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #15888: <==commonly_known== 21324 (neg)
                    (Pb_checked_p7)

                    ; #20479: <==commonly_known== 67498 (pos)
                    (Bb_checked_p7)

                    ; #22716: <==closure== 44181 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #29092: <==commonly_known== 67498 (pos)
                    (Ba_checked_p7)

                    ; #40137: <==commonly_known== 21324 (neg)
                    (Pd_checked_p7)

                    ; #43152: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #44181: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #55366: <==commonly_known== 21324 (neg)
                    (Pc_checked_p7)

                    ; #65730: <==commonly_known== 67498 (pos)
                    (Bd_checked_p7)

                    ; #67498: origin
                    (checked_p7)

                    ; #79746: <==commonly_known== 67498 (pos)
                    (Bc_checked_p7)

                    ; #91022: <==commonly_known== 21324 (neg)
                    (Pa_checked_p7)

                    ; #12917: <==negation-removal== 43152 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #20981: <==negation-removal== 22716 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #21324: <==negation-removal== 67498 (pos)
                    (not (not_checked_p7))

                    ; #24418: <==negation-removal== 79746 (pos)
                    (not (Pc_not_checked_p7))

                    ; #27752: <==negation-removal== 11449 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #36136: <==negation-removal== 65730 (pos)
                    (not (Pd_not_checked_p7))

                    ; #39936: <==negation-removal== 44181 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #40361: <==negation-removal== 40137 (pos)
                    (not (Bd_not_checked_p7))

                    ; #46775: <==negation-removal== 55366 (pos)
                    (not (Bc_not_checked_p7))

                    ; #54094: <==negation-removal== 15888 (pos)
                    (not (Bb_not_checked_p7))

                    ; #56934: <==uncertain_firing== 44181 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #57437: <==uncertain_firing== 22716 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #60944: <==uncertain_firing== 11449 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #68349: <==negation-removal== 91022 (pos)
                    (not (Ba_not_checked_p7))

                    ; #73662: <==negation-removal== 29092 (pos)
                    (not (Pa_not_checked_p7))

                    ; #81933: <==negation-removal== 20479 (pos)
                    (not (Pb_not_checked_p7))

                    ; #91674: <==uncertain_firing== 43152 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observe_d_p8_s
        :precondition (and (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #17335: <==commonly_known== 88496 (neg)
                    (Pa_checked_p8)

                    ; #37191: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #38084: origin
                    (checked_p8)

                    ; #38696: <==commonly_known== 38084 (pos)
                    (Bc_checked_p8)

                    ; #42129: <==commonly_known== 88496 (neg)
                    (Pd_checked_p8)

                    ; #42215: <==closure== 37191 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #42893: <==closure== 58812 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #58812: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #58840: <==commonly_known== 38084 (pos)
                    (Ba_checked_p8)

                    ; #65271: <==commonly_known== 88496 (neg)
                    (Pc_checked_p8)

                    ; #67218: <==commonly_known== 38084 (pos)
                    (Bd_checked_p8)

                    ; #67455: <==commonly_known== 88496 (neg)
                    (Pb_checked_p8)

                    ; #71366: <==commonly_known== 38084 (pos)
                    (Bb_checked_p8)

                    ; #10195: <==negation-removal== 42893 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #20980: <==uncertain_firing== 42215 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #23138: <==negation-removal== 42215 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #32108: <==negation-removal== 71366 (pos)
                    (not (Pb_not_checked_p8))

                    ; #33626: <==negation-removal== 38696 (pos)
                    (not (Pc_not_checked_p8))

                    ; #42773: <==negation-removal== 58840 (pos)
                    (not (Pa_not_checked_p8))

                    ; #44325: <==negation-removal== 37191 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #51162: <==negation-removal== 67218 (pos)
                    (not (Pd_not_checked_p8))

                    ; #52172: <==negation-removal== 65271 (pos)
                    (not (Bc_not_checked_p8))

                    ; #56529: <==negation-removal== 42129 (pos)
                    (not (Bd_not_checked_p8))

                    ; #63852: <==uncertain_firing== 42893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #72413: <==uncertain_firing== 37191 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #73490: <==negation-removal== 17335 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75442: <==uncertain_firing== 58812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #77316: <==negation-removal== 67455 (pos)
                    (not (Bb_not_checked_p8))

                    ; #82053: <==negation-removal== 58812 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #88496: <==negation-removal== 38084 (pos)
                    (not (not_checked_p8))))

    (:action observe_d_p9_s
        :precondition (and (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13846: <==commonly_known== 91889 (neg)
                    (Pa_checked_p9)

                    ; #15048: <==commonly_known== 91889 (neg)
                    (Pd_checked_p9)

                    ; #22791: <==commonly_known== 91889 (neg)
                    (Pb_checked_p9)

                    ; #27795: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #38481: <==commonly_known== 65042 (pos)
                    (Bc_checked_p9)

                    ; #40415: <==closure== 71163 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #47055: <==commonly_known== 65042 (pos)
                    (Bd_checked_p9)

                    ; #52448: <==closure== 27795 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #55848: <==commonly_known== 65042 (pos)
                    (Ba_checked_p9)

                    ; #63304: <==commonly_known== 65042 (pos)
                    (Bb_checked_p9)

                    ; #65042: origin
                    (checked_p9)

                    ; #71163: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #79832: <==commonly_known== 91889 (neg)
                    (Pc_checked_p9)

                    ; #10229: <==negation-removal== 79832 (pos)
                    (not (Bc_not_checked_p9))

                    ; #15759: <==uncertain_firing== 71163 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #18214: <==uncertain_firing== 40415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #26043: <==negation-removal== 47055 (pos)
                    (not (Pd_not_checked_p9))

                    ; #30205: <==negation-removal== 71163 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #31979: <==negation-removal== 13846 (pos)
                    (not (Ba_not_checked_p9))

                    ; #36331: <==negation-removal== 40415 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #41552: <==negation-removal== 55848 (pos)
                    (not (Pa_not_checked_p9))

                    ; #47806: <==negation-removal== 38481 (pos)
                    (not (Pc_not_checked_p9))

                    ; #49360: <==uncertain_firing== 27795 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #51292: <==uncertain_firing== 52448 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #62328: <==negation-removal== 22791 (pos)
                    (not (Bb_not_checked_p9))

                    ; #62985: <==negation-removal== 27795 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #64747: <==negation-removal== 52448 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #77363: <==negation-removal== 63304 (pos)
                    (not (Pb_not_checked_p9))

                    ; #91889: <==negation-removal== 65042 (pos)
                    (not (not_checked_p9))

                    ; #97116: <==negation-removal== 15048 (pos)
                    (not (Bd_not_checked_p9))))

)