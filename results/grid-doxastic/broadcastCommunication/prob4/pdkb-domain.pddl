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
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #43394: origin
                    (Ba_not_survivorat_s_p10)

                    ; #52639: <==closure== 43394 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #27490: <==negation-removal== 52639 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #86261: <==negation-removal== 43394 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #12458: <==closure== 72856 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #72856: origin
                    (Bb_not_survivorat_s_p10)

                    ; #64138: <==negation-removal== 72856 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #74839: <==negation-removal== 12458 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #27094: origin
                    (Bc_not_survivorat_s_p10)

                    ; #57442: <==closure== 27094 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #29767: <==negation-removal== 57442 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #51667: <==negation-removal== 27094 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #17625: <==closure== 63654 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #63654: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18022: <==negation-removal== 63654 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #48470: <==negation-removal== 17625 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (leader_a)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #43394: origin
                    (Ba_not_survivorat_s_p10)

                    ; #52639: <==closure== 43394 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #27490: <==negation-removal== 52639 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #86261: <==negation-removal== 43394 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #12458: <==closure== 72856 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #72856: origin
                    (Bb_not_survivorat_s_p10)

                    ; #64138: <==negation-removal== 72856 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #74839: <==negation-removal== 12458 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #27094: origin
                    (Bc_not_survivorat_s_p10)

                    ; #57442: <==closure== 27094 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #29767: <==negation-removal== 57442 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #51667: <==negation-removal== 27094 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_b_d_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #17625: <==closure== 63654 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #63654: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18022: <==negation-removal== 63654 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #48470: <==negation-removal== 17625 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #43394: origin
                    (Ba_not_survivorat_s_p10)

                    ; #52639: <==closure== 43394 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #27490: <==negation-removal== 52639 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #86261: <==negation-removal== 43394 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_b)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #12458: <==closure== 72856 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #72856: origin
                    (Bb_not_survivorat_s_p10)

                    ; #64138: <==negation-removal== 72856 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #74839: <==negation-removal== 12458 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_c)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #27094: origin
                    (Bc_not_survivorat_s_p10)

                    ; #57442: <==closure== 27094 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #29767: <==negation-removal== 57442 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #51667: <==negation-removal== 27094 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_d)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #17625: <==closure== 63654 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #63654: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18022: <==negation-removal== 63654 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #48470: <==negation-removal== 17625 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_d_a_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_a)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #43394: origin
                    (Ba_not_survivorat_s_p10)

                    ; #52639: <==closure== 43394 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #27490: <==negation-removal== 52639 (pos)
                    (not (Ba_survivorat_s_p10))

                    ; #86261: <==negation-removal== 43394 (pos)
                    (not (Pa_survivorat_s_p10))))

    (:action badcomm_p10_d_b_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_b)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #12458: <==closure== 72856 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #72856: origin
                    (Bb_not_survivorat_s_p10)

                    ; #64138: <==negation-removal== 72856 (pos)
                    (not (Pb_survivorat_s_p10))

                    ; #74839: <==negation-removal== 12458 (pos)
                    (not (Bb_survivorat_s_p10))))

    (:action badcomm_p10_d_c_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #27094: origin
                    (Bc_not_survivorat_s_p10)

                    ; #57442: <==closure== 27094 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #29767: <==negation-removal== 57442 (pos)
                    (not (Bc_survivorat_s_p10))

                    ; #51667: <==negation-removal== 27094 (pos)
                    (not (Pc_survivorat_s_p10))))

    (:action badcomm_p10_d_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #17625: <==closure== 63654 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #63654: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18022: <==negation-removal== 63654 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #48470: <==negation-removal== 17625 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #85494: <==closure== 90150 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #90150: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39560: <==negation-removal== 90150 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #44434: <==negation-removal== 85494 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b))
        :effect (and
                    ; #24378: origin
                    (Bb_not_survivorat_s_p11)

                    ; #86095: <==closure== 24378 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #30519: <==negation-removal== 24378 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85975: <==negation-removal== 86095 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_c))
        :effect (and
                    ; #73838: origin
                    (Bc_not_survivorat_s_p11)

                    ; #77111: <==closure== 73838 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #12332: <==negation-removal== 77111 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #13843: <==negation-removal== 73838 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_a_d_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_d))
        :effect (and
                    ; #63959: origin
                    (Bd_not_survivorat_s_p11)

                    ; #88358: <==closure== 63959 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #27581: <==negation-removal== 63959 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #27849: <==negation-removal== 88358 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (Bb_survivorat_s_p11)
                           (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #85494: <==closure== 90150 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #90150: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39560: <==negation-removal== 90150 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #44434: <==negation-removal== 85494 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #24378: origin
                    (Bb_not_survivorat_s_p11)

                    ; #86095: <==closure== 24378 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #30519: <==negation-removal== 24378 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85975: <==negation-removal== 86095 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #73838: origin
                    (Bc_not_survivorat_s_p11)

                    ; #77111: <==closure== 73838 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #12332: <==negation-removal== 77111 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #13843: <==negation-removal== 73838 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_d_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #63959: origin
                    (Bd_not_survivorat_s_p11)

                    ; #88358: <==closure== 63959 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #27581: <==negation-removal== 63959 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #27849: <==negation-removal== 88358 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11))
        :effect (and
                    ; #85494: <==closure== 90150 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #90150: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39560: <==negation-removal== 90150 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #44434: <==negation-removal== 85494 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #24378: origin
                    (Bb_not_survivorat_s_p11)

                    ; #86095: <==closure== 24378 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #30519: <==negation-removal== 24378 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85975: <==negation-removal== 86095 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11))
        :effect (and
                    ; #73838: origin
                    (Bc_not_survivorat_s_p11)

                    ; #77111: <==closure== 73838 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #12332: <==negation-removal== 77111 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #13843: <==negation-removal== 73838 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_d_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_d)
                           (at_c_p11))
        :effect (and
                    ; #63959: origin
                    (Bd_not_survivorat_s_p11)

                    ; #88358: <==closure== 63959 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #27581: <==negation-removal== 63959 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #27849: <==negation-removal== 88358 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p11_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #85494: <==closure== 90150 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #90150: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39560: <==negation-removal== 90150 (pos)
                    (not (Pa_survivorat_s_p11))

                    ; #44434: <==negation-removal== 85494 (pos)
                    (not (Ba_survivorat_s_p11))))

    (:action badcomm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_b)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #24378: origin
                    (Bb_not_survivorat_s_p11)

                    ; #86095: <==closure== 24378 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #30519: <==negation-removal== 24378 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #85975: <==negation-removal== 86095 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #73838: origin
                    (Bc_not_survivorat_s_p11)

                    ; #77111: <==closure== 73838 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #12332: <==negation-removal== 77111 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #13843: <==negation-removal== 73838 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_d_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_d)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #63959: origin
                    (Bd_not_survivorat_s_p11)

                    ; #88358: <==closure== 63959 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #27581: <==negation-removal== 63959 (pos)
                    (not (Pd_survivorat_s_p11))

                    ; #27849: <==negation-removal== 88358 (pos)
                    (not (Bd_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (leader_a)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #33492: origin
                    (Ba_not_survivorat_s_p12)

                    ; #80507: <==closure== 33492 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #38783: <==negation-removal== 80507 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #64972: <==negation-removal== 33492 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #72221: origin
                    (Bb_not_survivorat_s_p12)

                    ; #94627: <==closure== 72221 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39883: <==negation-removal== 72221 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #41226: <==negation-removal== 94627 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #85191: origin
                    (Bc_not_survivorat_s_p12)

                    ; #89760: <==closure== 85191 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #78177: <==negation-removal== 85191 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #84426: <==negation-removal== 89760 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_a_d_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #22502: origin
                    (Bd_not_survivorat_s_p12)

                    ; #52245: <==closure== 22502 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #73792: <==negation-removal== 52245 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82327: <==negation-removal== 22502 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #33492: origin
                    (Ba_not_survivorat_s_p12)

                    ; #80507: <==closure== 33492 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #38783: <==negation-removal== 80507 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #64972: <==negation-removal== 33492 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_b)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #72221: origin
                    (Bb_not_survivorat_s_p12)

                    ; #94627: <==closure== 72221 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39883: <==negation-removal== 72221 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #41226: <==negation-removal== 94627 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_c)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #85191: origin
                    (Bc_not_survivorat_s_p12)

                    ; #89760: <==closure== 85191 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #78177: <==negation-removal== 85191 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #84426: <==negation-removal== 89760 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_b_d_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_d)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #22502: origin
                    (Bd_not_survivorat_s_p12)

                    ; #52245: <==closure== 22502 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #73792: <==negation-removal== 52245 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82327: <==negation-removal== 22502 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (leader_a)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #33492: origin
                    (Ba_not_survivorat_s_p12)

                    ; #80507: <==closure== 33492 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #38783: <==negation-removal== 80507 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #64972: <==negation-removal== 33492 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_b)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #72221: origin
                    (Bb_not_survivorat_s_p12)

                    ; #94627: <==closure== 72221 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39883: <==negation-removal== 72221 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #41226: <==negation-removal== 94627 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #85191: origin
                    (Bc_not_survivorat_s_p12)

                    ; #89760: <==closure== 85191 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #78177: <==negation-removal== 85191 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #84426: <==negation-removal== 89760 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_d)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #22502: origin
                    (Bd_not_survivorat_s_p12)

                    ; #52245: <==closure== 22502 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #73792: <==negation-removal== 52245 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82327: <==negation-removal== 22502 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_d_a_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #33492: origin
                    (Ba_not_survivorat_s_p12)

                    ; #80507: <==closure== 33492 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #38783: <==negation-removal== 80507 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #64972: <==negation-removal== 33492 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_d_b_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_b)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #72221: origin
                    (Bb_not_survivorat_s_p12)

                    ; #94627: <==closure== 72221 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #39883: <==negation-removal== 72221 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #41226: <==negation-removal== 94627 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_d_c_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #85191: origin
                    (Bc_not_survivorat_s_p12)

                    ; #89760: <==closure== 85191 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #78177: <==negation-removal== 85191 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #84426: <==negation-removal== 89760 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_d_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_d)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #22502: origin
                    (Bd_not_survivorat_s_p12)

                    ; #52245: <==closure== 22502 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #73792: <==negation-removal== 52245 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82327: <==negation-removal== 22502 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1))
        :effect (and
                    ; #24850: <==closure== 79178 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #79178: origin
                    (Ba_not_survivorat_s_p1)

                    ; #44847: <==negation-removal== 79178 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #77057: <==negation-removal== 24850 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1))
        :effect (and
                    ; #16697: origin
                    (Bb_not_survivorat_s_p1)

                    ; #24249: <==closure== 16697 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #18160: <==negation-removal== 24249 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75828: <==negation-removal== 16697 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c)
                           (at_a_p1))
        :effect (and
                    ; #14171: <==closure== 28159 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #28159: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19556: <==negation-removal== 28159 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #28682: <==negation-removal== 14171 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_a_d_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_d)
                           (at_a_p1))
        :effect (and
                    ; #77812: origin
                    (Bd_not_survivorat_s_p1)

                    ; #92054: <==closure== 77812 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #24878: <==negation-removal== 77812 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #77383: <==negation-removal== 92054 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #24850: <==closure== 79178 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #79178: origin
                    (Ba_not_survivorat_s_p1)

                    ; #44847: <==negation-removal== 79178 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #77057: <==negation-removal== 24850 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #16697: origin
                    (Bb_not_survivorat_s_p1)

                    ; #24249: <==closure== 16697 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #18160: <==negation-removal== 24249 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75828: <==negation-removal== 16697 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #14171: <==closure== 28159 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #28159: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19556: <==negation-removal== 28159 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #28682: <==negation-removal== 14171 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_d_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #77812: origin
                    (Bd_not_survivorat_s_p1)

                    ; #92054: <==closure== 77812 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #24878: <==negation-removal== 77812 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #77383: <==negation-removal== 92054 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #24850: <==closure== 79178 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #79178: origin
                    (Ba_not_survivorat_s_p1)

                    ; #44847: <==negation-removal== 79178 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #77057: <==negation-removal== 24850 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1))
        :effect (and
                    ; #16697: origin
                    (Bb_not_survivorat_s_p1)

                    ; #24249: <==closure== 16697 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #18160: <==negation-removal== 24249 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75828: <==negation-removal== 16697 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #14171: <==closure== 28159 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #28159: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19556: <==negation-removal== 28159 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #28682: <==negation-removal== 14171 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_d_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (leader_d)
                           (at_c_p1))
        :effect (and
                    ; #77812: origin
                    (Bd_not_survivorat_s_p1)

                    ; #92054: <==closure== 77812 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #24878: <==negation-removal== 77812 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #77383: <==negation-removal== 92054 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #24850: <==closure== 79178 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #79178: origin
                    (Ba_not_survivorat_s_p1)

                    ; #44847: <==negation-removal== 79178 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #77057: <==negation-removal== 24850 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_d_b_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_b)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #16697: origin
                    (Bb_not_survivorat_s_p1)

                    ; #24249: <==closure== 16697 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #18160: <==negation-removal== 24249 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #75828: <==negation-removal== 16697 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_d_c_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_c)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #14171: <==closure== 28159 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #28159: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19556: <==negation-removal== 28159 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #28682: <==negation-removal== 14171 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_d_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_d)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #77812: origin
                    (Bd_not_survivorat_s_p1)

                    ; #92054: <==closure== 77812 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #24878: <==negation-removal== 77812 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #77383: <==negation-removal== 92054 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #34469: <==closure== 42577 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #42577: origin
                    (Ba_not_survivorat_s_p2)

                    ; #47277: <==negation-removal== 42577 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #65636: <==negation-removal== 34469 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #11576: origin
                    (Bb_not_survivorat_s_p2)

                    ; #62919: <==closure== 11576 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #81919: <==negation-removal== 62919 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84903: <==negation-removal== 11576 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #20103: <==closure== 52615 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #52615: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62349: <==negation-removal== 20103 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #81913: <==negation-removal== 52615 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #60452: <==closure== 83640 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #83640: origin
                    (Bd_not_survivorat_s_p2)

                    ; #14023: <==negation-removal== 60452 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #78338: <==negation-removal== 83640 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #34469: <==closure== 42577 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #42577: origin
                    (Ba_not_survivorat_s_p2)

                    ; #47277: <==negation-removal== 42577 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #65636: <==negation-removal== 34469 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #11576: origin
                    (Bb_not_survivorat_s_p2)

                    ; #62919: <==closure== 11576 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #81919: <==negation-removal== 62919 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84903: <==negation-removal== 11576 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #20103: <==closure== 52615 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #52615: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62349: <==negation-removal== 20103 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #81913: <==negation-removal== 52615 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #60452: <==closure== 83640 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #83640: origin
                    (Bd_not_survivorat_s_p2)

                    ; #14023: <==negation-removal== 60452 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #78338: <==negation-removal== 83640 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #34469: <==closure== 42577 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #42577: origin
                    (Ba_not_survivorat_s_p2)

                    ; #47277: <==negation-removal== 42577 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #65636: <==negation-removal== 34469 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #11576: origin
                    (Bb_not_survivorat_s_p2)

                    ; #62919: <==closure== 11576 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #81919: <==negation-removal== 62919 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84903: <==negation-removal== 11576 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #20103: <==closure== 52615 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #52615: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62349: <==negation-removal== 20103 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #81913: <==negation-removal== 52615 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_c_d_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #60452: <==closure== 83640 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #83640: origin
                    (Bd_not_survivorat_s_p2)

                    ; #14023: <==negation-removal== 60452 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #78338: <==negation-removal== 83640 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #34469: <==closure== 42577 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #42577: origin
                    (Ba_not_survivorat_s_p2)

                    ; #47277: <==negation-removal== 42577 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #65636: <==negation-removal== 34469 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #11576: origin
                    (Bb_not_survivorat_s_p2)

                    ; #62919: <==closure== 11576 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #81919: <==negation-removal== 62919 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #84903: <==negation-removal== 11576 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #20103: <==closure== 52615 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #52615: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62349: <==negation-removal== 20103 (pos)
                    (not (Bc_survivorat_s_p2))

                    ; #81913: <==negation-removal== 52615 (pos)
                    (not (Pc_survivorat_s_p2))))

    (:action badcomm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_d)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #60452: <==closure== 83640 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #83640: origin
                    (Bd_not_survivorat_s_p2)

                    ; #14023: <==negation-removal== 60452 (pos)
                    (not (Bd_survivorat_s_p2))

                    ; #78338: <==negation-removal== 83640 (pos)
                    (not (Pd_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #62101: origin
                    (Ba_not_survivorat_s_p3)

                    ; #81279: <==closure== 62101 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #49303: <==negation-removal== 62101 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #75402: <==negation-removal== 81279 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #17338: origin
                    (Bb_not_survivorat_s_p3)

                    ; #37356: <==closure== 17338 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #78712: <==negation-removal== 37356 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #85304: <==negation-removal== 17338 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #29603: <==closure== 79331 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #79331: origin
                    (Bc_not_survivorat_s_p3)

                    ; #43694: <==negation-removal== 79331 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #84225: <==negation-removal== 29603 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_a_d_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_d)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #52134: <==closure== 79817 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #79817: origin
                    (Bd_not_survivorat_s_p3)

                    ; #51557: <==negation-removal== 52134 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79279: <==negation-removal== 79817 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #62101: origin
                    (Ba_not_survivorat_s_p3)

                    ; #81279: <==closure== 62101 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #49303: <==negation-removal== 62101 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #75402: <==negation-removal== 81279 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #17338: origin
                    (Bb_not_survivorat_s_p3)

                    ; #37356: <==closure== 17338 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #78712: <==negation-removal== 37356 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #85304: <==negation-removal== 17338 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #29603: <==closure== 79331 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #79331: origin
                    (Bc_not_survivorat_s_p3)

                    ; #43694: <==negation-removal== 79331 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #84225: <==negation-removal== 29603 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_d_s
        :precondition (and (Pb_survivorat_s_p3)
                           (leader_d)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #52134: <==closure== 79817 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #79817: origin
                    (Bd_not_survivorat_s_p3)

                    ; #51557: <==negation-removal== 52134 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79279: <==negation-removal== 79817 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #62101: origin
                    (Ba_not_survivorat_s_p3)

                    ; #81279: <==closure== 62101 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #49303: <==negation-removal== 62101 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #75402: <==negation-removal== 81279 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #17338: origin
                    (Bb_not_survivorat_s_p3)

                    ; #37356: <==closure== 17338 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #78712: <==negation-removal== 37356 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #85304: <==negation-removal== 17338 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_c))
        :effect (and
                    ; #29603: <==closure== 79331 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #79331: origin
                    (Bc_not_survivorat_s_p3)

                    ; #43694: <==negation-removal== 79331 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #84225: <==negation-removal== 29603 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_d_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_d))
        :effect (and
                    ; #52134: <==closure== 79817 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #79817: origin
                    (Bd_not_survivorat_s_p3)

                    ; #51557: <==negation-removal== 52134 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79279: <==negation-removal== 79817 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #62101: origin
                    (Ba_not_survivorat_s_p3)

                    ; #81279: <==closure== 62101 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #49303: <==negation-removal== 62101 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #75402: <==negation-removal== 81279 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #17338: origin
                    (Bb_not_survivorat_s_p3)

                    ; #37356: <==closure== 17338 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #78712: <==negation-removal== 37356 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #85304: <==negation-removal== 17338 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_d_c_s
        :precondition (and (Pd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #29603: <==closure== 79331 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #79331: origin
                    (Bc_not_survivorat_s_p3)

                    ; #43694: <==negation-removal== 79331 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #84225: <==negation-removal== 29603 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_d_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_d)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #52134: <==closure== 79817 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #79817: origin
                    (Bd_not_survivorat_s_p3)

                    ; #51557: <==negation-removal== 52134 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #79279: <==negation-removal== 79817 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #12475: origin
                    (Ba_not_survivorat_s_p4)

                    ; #48205: <==closure== 12475 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #23284: <==negation-removal== 48205 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #84198: <==negation-removal== 12475 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #46119: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66290: <==closure== 46119 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #18917: <==negation-removal== 66290 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #68674: <==negation-removal== 46119 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18703: <==closure== 59628 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #59628: origin
                    (Bc_not_survivorat_s_p4)

                    ; #68590: <==negation-removal== 18703 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74029: <==negation-removal== 59628 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_a_d_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #27147: <==closure== 43360 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #43360: origin
                    (Bd_not_survivorat_s_p4)

                    ; #33076: <==negation-removal== 43360 (pos)
                    (not (Pd_survivorat_s_p4))

                    ; #53199: <==negation-removal== 27147 (pos)
                    (not (Bd_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #12475: origin
                    (Ba_not_survivorat_s_p4)

                    ; #48205: <==closure== 12475 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #23284: <==negation-removal== 48205 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #84198: <==negation-removal== 12475 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #46119: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66290: <==closure== 46119 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #18917: <==negation-removal== 66290 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #68674: <==negation-removal== 46119 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (at_b_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18703: <==closure== 59628 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #59628: origin
                    (Bc_not_survivorat_s_p4)

                    ; #68590: <==negation-removal== 18703 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74029: <==negation-removal== 59628 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_d_s
        :precondition (and (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #27147: <==closure== 43360 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #43360: origin
                    (Bd_not_survivorat_s_p4)

                    ; #33076: <==negation-removal== 43360 (pos)
                    (not (Pd_survivorat_s_p4))

                    ; #53199: <==negation-removal== 27147 (pos)
                    (not (Bd_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (leader_a)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #12475: origin
                    (Ba_not_survivorat_s_p4)

                    ; #48205: <==closure== 12475 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #23284: <==negation-removal== 48205 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #84198: <==negation-removal== 12475 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #46119: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66290: <==closure== 46119 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #18917: <==negation-removal== 66290 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #68674: <==negation-removal== 46119 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #18703: <==closure== 59628 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #59628: origin
                    (Bc_not_survivorat_s_p4)

                    ; #68590: <==negation-removal== 18703 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74029: <==negation-removal== 59628 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_d_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #27147: <==closure== 43360 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #43360: origin
                    (Bd_not_survivorat_s_p4)

                    ; #33076: <==negation-removal== 43360 (pos)
                    (not (Pd_survivorat_s_p4))

                    ; #53199: <==negation-removal== 27147 (pos)
                    (not (Bd_survivorat_s_p4))))

    (:action badcomm_p4_d_a_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_a)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #12475: origin
                    (Ba_not_survivorat_s_p4)

                    ; #48205: <==closure== 12475 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #23284: <==negation-removal== 48205 (pos)
                    (not (Ba_survivorat_s_p4))

                    ; #84198: <==negation-removal== 12475 (pos)
                    (not (Pa_survivorat_s_p4))))

    (:action badcomm_p4_d_b_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_b)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #46119: origin
                    (Bb_not_survivorat_s_p4)

                    ; #66290: <==closure== 46119 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #18917: <==negation-removal== 66290 (pos)
                    (not (Bb_survivorat_s_p4))

                    ; #68674: <==negation-removal== 46119 (pos)
                    (not (Pb_survivorat_s_p4))))

    (:action badcomm_p4_d_c_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_c)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #18703: <==closure== 59628 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #59628: origin
                    (Bc_not_survivorat_s_p4)

                    ; #68590: <==negation-removal== 18703 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #74029: <==negation-removal== 59628 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_d_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #27147: <==closure== 43360 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #43360: origin
                    (Bd_not_survivorat_s_p4)

                    ; #33076: <==negation-removal== 43360 (pos)
                    (not (Pd_survivorat_s_p4))

                    ; #53199: <==negation-removal== 27147 (pos)
                    (not (Bd_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #30417: origin
                    (Ba_not_survivorat_s_p5)

                    ; #60655: <==closure== 30417 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #22412: <==negation-removal== 60655 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #91950: <==negation-removal== 30417 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #23322: origin
                    (Bb_not_survivorat_s_p5)

                    ; #32155: <==closure== 23322 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #24991: <==negation-removal== 23322 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #89969: <==negation-removal== 32155 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #66823: <==closure== 73419 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #73419: origin
                    (Bc_not_survivorat_s_p5)

                    ; #18175: <==negation-removal== 73419 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #75411: <==negation-removal== 66823 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #75515: <==closure== 90590 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #90590: origin
                    (Bd_not_survivorat_s_p5)

                    ; #53473: <==negation-removal== 90590 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #83540: <==negation-removal== 75515 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #30417: origin
                    (Ba_not_survivorat_s_p5)

                    ; #60655: <==closure== 30417 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #22412: <==negation-removal== 60655 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #91950: <==negation-removal== 30417 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #23322: origin
                    (Bb_not_survivorat_s_p5)

                    ; #32155: <==closure== 23322 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #24991: <==negation-removal== 23322 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #89969: <==negation-removal== 32155 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #66823: <==closure== 73419 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #73419: origin
                    (Bc_not_survivorat_s_p5)

                    ; #18175: <==negation-removal== 73419 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #75411: <==negation-removal== 66823 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_d_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_d)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #75515: <==closure== 90590 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #90590: origin
                    (Bd_not_survivorat_s_p5)

                    ; #53473: <==negation-removal== 90590 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #83540: <==negation-removal== 75515 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #30417: origin
                    (Ba_not_survivorat_s_p5)

                    ; #60655: <==closure== 30417 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #22412: <==negation-removal== 60655 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #91950: <==negation-removal== 30417 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #23322: origin
                    (Bb_not_survivorat_s_p5)

                    ; #32155: <==closure== 23322 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #24991: <==negation-removal== 23322 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #89969: <==negation-removal== 32155 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #66823: <==closure== 73419 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #73419: origin
                    (Bc_not_survivorat_s_p5)

                    ; #18175: <==negation-removal== 73419 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #75411: <==negation-removal== 66823 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_d_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #75515: <==closure== 90590 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #90590: origin
                    (Bd_not_survivorat_s_p5)

                    ; #53473: <==negation-removal== 90590 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #83540: <==negation-removal== 75515 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p5_d_a_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #30417: origin
                    (Ba_not_survivorat_s_p5)

                    ; #60655: <==closure== 30417 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #22412: <==negation-removal== 60655 (pos)
                    (not (Ba_survivorat_s_p5))

                    ; #91950: <==negation-removal== 30417 (pos)
                    (not (Pa_survivorat_s_p5))))

    (:action badcomm_p5_d_b_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #23322: origin
                    (Bb_not_survivorat_s_p5)

                    ; #32155: <==closure== 23322 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #24991: <==negation-removal== 23322 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #89969: <==negation-removal== 32155 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_d_c_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #66823: <==closure== 73419 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #73419: origin
                    (Bc_not_survivorat_s_p5)

                    ; #18175: <==negation-removal== 73419 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #75411: <==negation-removal== 66823 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_d_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #75515: <==closure== 90590 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #90590: origin
                    (Bd_not_survivorat_s_p5)

                    ; #53473: <==negation-removal== 90590 (pos)
                    (not (Pd_survivorat_s_p5))

                    ; #83540: <==negation-removal== 75515 (pos)
                    (not (Bd_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #53566: origin
                    (Ba_not_survivorat_s_p6)

                    ; #79825: <==closure== 53566 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #34723: <==negation-removal== 53566 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87753: <==negation-removal== 79825 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #73337: <==closure== 82115 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82115: origin
                    (Bb_not_survivorat_s_p6)

                    ; #14372: <==negation-removal== 73337 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #50557: <==negation-removal== 82115 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #16708: <==closure== 48297 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #48297: origin
                    (Bc_not_survivorat_s_p6)

                    ; #44603: <==negation-removal== 16708 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #46999: <==negation-removal== 48297 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_a_d_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_d))
        :effect (and
                    ; #59880: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83930: <==closure== 59880 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #54541: <==negation-removal== 83930 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #78926: <==negation-removal== 59880 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #53566: origin
                    (Ba_not_survivorat_s_p6)

                    ; #79825: <==closure== 53566 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #34723: <==negation-removal== 53566 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87753: <==negation-removal== 79825 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #73337: <==closure== 82115 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82115: origin
                    (Bb_not_survivorat_s_p6)

                    ; #14372: <==negation-removal== 73337 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #50557: <==negation-removal== 82115 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #16708: <==closure== 48297 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #48297: origin
                    (Bc_not_survivorat_s_p6)

                    ; #44603: <==negation-removal== 16708 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #46999: <==negation-removal== 48297 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #59880: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83930: <==closure== 59880 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #54541: <==negation-removal== 83930 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #78926: <==negation-removal== 59880 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #53566: origin
                    (Ba_not_survivorat_s_p6)

                    ; #79825: <==closure== 53566 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #34723: <==negation-removal== 53566 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87753: <==negation-removal== 79825 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #73337: <==closure== 82115 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82115: origin
                    (Bb_not_survivorat_s_p6)

                    ; #14372: <==negation-removal== 73337 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #50557: <==negation-removal== 82115 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #16708: <==closure== 48297 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #48297: origin
                    (Bc_not_survivorat_s_p6)

                    ; #44603: <==negation-removal== 16708 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #46999: <==negation-removal== 48297 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_d_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #59880: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83930: <==closure== 59880 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #54541: <==negation-removal== 83930 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #78926: <==negation-removal== 59880 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_d_a_s
        :precondition (and (at_d_p6)
                           (leader_a)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #53566: origin
                    (Ba_not_survivorat_s_p6)

                    ; #79825: <==closure== 53566 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #34723: <==negation-removal== 53566 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #87753: <==negation-removal== 79825 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_d_b_s
        :precondition (and (at_d_p6)
                           (leader_b)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #73337: <==closure== 82115 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #82115: origin
                    (Bb_not_survivorat_s_p6)

                    ; #14372: <==negation-removal== 73337 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #50557: <==negation-removal== 82115 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_d_c_s
        :precondition (and (at_d_p6)
                           (leader_c)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #16708: <==closure== 48297 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #48297: origin
                    (Bc_not_survivorat_s_p6)

                    ; #44603: <==negation-removal== 16708 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #46999: <==negation-removal== 48297 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_d_d_s
        :precondition (and (at_d_p6)
                           (leader_d)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #59880: origin
                    (Bd_not_survivorat_s_p6)

                    ; #83930: <==closure== 59880 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #54541: <==negation-removal== 83930 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #78926: <==negation-removal== 59880 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (leader_a)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #20919: <==closure== 36316 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #36316: origin
                    (Ba_not_survivorat_s_p7)

                    ; #44353: <==negation-removal== 20919 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #58833: <==negation-removal== 36316 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (leader_b)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #14304: origin
                    (Bb_not_survivorat_s_p7)

                    ; #41343: <==closure== 14304 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #12929: <==negation-removal== 14304 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #27571: <==negation-removal== 41343 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #23724: origin
                    (Bc_not_survivorat_s_p7)

                    ; #55559: <==closure== 23724 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #43388: <==negation-removal== 55559 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72983: <==negation-removal== 23724 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_a_d_s
        :precondition (and (leader_d)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #29732: <==closure== 71876 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #71876: origin
                    (Bd_not_survivorat_s_p7)

                    ; #19947: <==negation-removal== 71876 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #96681: <==negation-removal== 29732 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (leader_a)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20919: <==closure== 36316 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #36316: origin
                    (Ba_not_survivorat_s_p7)

                    ; #44353: <==negation-removal== 20919 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #58833: <==negation-removal== 36316 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #14304: origin
                    (Bb_not_survivorat_s_p7)

                    ; #41343: <==closure== 14304 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #12929: <==negation-removal== 14304 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #27571: <==negation-removal== 41343 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #23724: origin
                    (Bc_not_survivorat_s_p7)

                    ; #55559: <==closure== 23724 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #43388: <==negation-removal== 55559 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72983: <==negation-removal== 23724 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_b_d_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_d)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #29732: <==closure== 71876 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #71876: origin
                    (Bd_not_survivorat_s_p7)

                    ; #19947: <==negation-removal== 71876 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #96681: <==negation-removal== 29732 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #20919: <==closure== 36316 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #36316: origin
                    (Ba_not_survivorat_s_p7)

                    ; #44353: <==negation-removal== 20919 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #58833: <==negation-removal== 36316 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7))
        :effect (and
                    ; #14304: origin
                    (Bb_not_survivorat_s_p7)

                    ; #41343: <==closure== 14304 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #12929: <==negation-removal== 14304 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #27571: <==negation-removal== 41343 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #23724: origin
                    (Bc_not_survivorat_s_p7)

                    ; #55559: <==closure== 23724 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #43388: <==negation-removal== 55559 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72983: <==negation-removal== 23724 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #29732: <==closure== 71876 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #71876: origin
                    (Bd_not_survivorat_s_p7)

                    ; #19947: <==negation-removal== 71876 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #96681: <==negation-removal== 29732 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p7_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #20919: <==closure== 36316 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #36316: origin
                    (Ba_not_survivorat_s_p7)

                    ; #44353: <==negation-removal== 20919 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #58833: <==negation-removal== 36316 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #14304: origin
                    (Bb_not_survivorat_s_p7)

                    ; #41343: <==closure== 14304 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #12929: <==negation-removal== 14304 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #27571: <==negation-removal== 41343 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_d_c_s
        :precondition (and (leader_c)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #23724: origin
                    (Bc_not_survivorat_s_p7)

                    ; #55559: <==closure== 23724 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #43388: <==negation-removal== 55559 (pos)
                    (not (Bc_survivorat_s_p7))

                    ; #72983: <==negation-removal== 23724 (pos)
                    (not (Pc_survivorat_s_p7))))

    (:action badcomm_p7_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #29732: <==closure== 71876 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #71876: origin
                    (Bd_not_survivorat_s_p7)

                    ; #19947: <==negation-removal== 71876 (pos)
                    (not (Pd_survivorat_s_p7))

                    ; #96681: <==negation-removal== 29732 (pos)
                    (not (Bd_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #60779: <==closure== 76837 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #76837: origin
                    (Ba_not_survivorat_s_p8)

                    ; #67110: <==negation-removal== 76837 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #85265: <==negation-removal== 60779 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #22701: origin
                    (Bb_not_survivorat_s_p8)

                    ; #77648: <==closure== 22701 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #29603: <==negation-removal== 77648 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #38820: <==negation-removal== 22701 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #23842: <==closure== 27691 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #27691: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 23842 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #47842: <==negation-removal== 27691 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_a_d_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #88814: origin
                    (Bd_not_survivorat_s_p8)

                    ; #92007: <==closure== 88814 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #17383: <==negation-removal== 92007 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #45208: <==negation-removal== 88814 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #60779: <==closure== 76837 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #76837: origin
                    (Ba_not_survivorat_s_p8)

                    ; #67110: <==negation-removal== 76837 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #85265: <==negation-removal== 60779 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #22701: origin
                    (Bb_not_survivorat_s_p8)

                    ; #77648: <==closure== 22701 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #29603: <==negation-removal== 77648 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #38820: <==negation-removal== 22701 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #23842: <==closure== 27691 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #27691: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 23842 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #47842: <==negation-removal== 27691 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #88814: origin
                    (Bd_not_survivorat_s_p8)

                    ; #92007: <==closure== 88814 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #17383: <==negation-removal== 92007 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #45208: <==negation-removal== 88814 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #60779: <==closure== 76837 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #76837: origin
                    (Ba_not_survivorat_s_p8)

                    ; #67110: <==negation-removal== 76837 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #85265: <==negation-removal== 60779 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #22701: origin
                    (Bb_not_survivorat_s_p8)

                    ; #77648: <==closure== 22701 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #29603: <==negation-removal== 77648 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #38820: <==negation-removal== 22701 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #23842: <==closure== 27691 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #27691: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 23842 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #47842: <==negation-removal== 27691 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_d_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #88814: origin
                    (Bd_not_survivorat_s_p8)

                    ; #92007: <==closure== 88814 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #17383: <==negation-removal== 92007 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #45208: <==negation-removal== 88814 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #60779: <==closure== 76837 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #76837: origin
                    (Ba_not_survivorat_s_p8)

                    ; #67110: <==negation-removal== 76837 (pos)
                    (not (Pa_survivorat_s_p8))

                    ; #85265: <==negation-removal== 60779 (pos)
                    (not (Ba_survivorat_s_p8))))

    (:action badcomm_p8_d_b_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_b)
                           (at_d_p8))
        :effect (and
                    ; #22701: origin
                    (Bb_not_survivorat_s_p8)

                    ; #77648: <==closure== 22701 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #29603: <==negation-removal== 77648 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #38820: <==negation-removal== 22701 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_d_c_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (leader_c))
        :effect (and
                    ; #23842: <==closure== 27691 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #27691: origin
                    (Bc_not_survivorat_s_p8)

                    ; #17378: <==negation-removal== 23842 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #47842: <==negation-removal== 27691 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_d_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d)
                           (at_d_p8))
        :effect (and
                    ; #88814: origin
                    (Bd_not_survivorat_s_p8)

                    ; #92007: <==closure== 88814 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #17383: <==negation-removal== 92007 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #45208: <==negation-removal== 88814 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #22890: origin
                    (Ba_not_survivorat_s_p9)

                    ; #91531: <==closure== 22890 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #48652: <==negation-removal== 91531 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #86499: <==negation-removal== 22890 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #37981: <==closure== 42883 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #42883: origin
                    (Bb_not_survivorat_s_p9)

                    ; #41725: <==negation-removal== 42883 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #69480: <==negation-removal== 37981 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #18900: origin
                    (Bc_not_survivorat_s_p9)

                    ; #49811: <==closure== 18900 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #15288: <==negation-removal== 18900 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #69883: <==negation-removal== 49811 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_a_d_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_d)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #25935: <==closure== 57924 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #57924: origin
                    (Bd_not_survivorat_s_p9)

                    ; #33809: <==negation-removal== 57924 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #57010: <==negation-removal== 25935 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #22890: origin
                    (Ba_not_survivorat_s_p9)

                    ; #91531: <==closure== 22890 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #48652: <==negation-removal== 91531 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #86499: <==negation-removal== 22890 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #37981: <==closure== 42883 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #42883: origin
                    (Bb_not_survivorat_s_p9)

                    ; #41725: <==negation-removal== 42883 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #69480: <==negation-removal== 37981 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #18900: origin
                    (Bc_not_survivorat_s_p9)

                    ; #49811: <==closure== 18900 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #15288: <==negation-removal== 18900 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #69883: <==negation-removal== 49811 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_d_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #25935: <==closure== 57924 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #57924: origin
                    (Bd_not_survivorat_s_p9)

                    ; #33809: <==negation-removal== 57924 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #57010: <==negation-removal== 25935 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #22890: origin
                    (Ba_not_survivorat_s_p9)

                    ; #91531: <==closure== 22890 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #48652: <==negation-removal== 91531 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #86499: <==negation-removal== 22890 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #37981: <==closure== 42883 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #42883: origin
                    (Bb_not_survivorat_s_p9)

                    ; #41725: <==negation-removal== 42883 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #69480: <==negation-removal== 37981 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (leader_c)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #18900: origin
                    (Bc_not_survivorat_s_p9)

                    ; #49811: <==closure== 18900 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #15288: <==negation-removal== 18900 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #69883: <==negation-removal== 49811 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_d_s
        :precondition (and (at_c_p9)
                           (leader_d)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #25935: <==closure== 57924 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #57924: origin
                    (Bd_not_survivorat_s_p9)

                    ; #33809: <==negation-removal== 57924 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #57010: <==negation-removal== 25935 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_d_a_s
        :precondition (and (leader_a)
                           (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #22890: origin
                    (Ba_not_survivorat_s_p9)

                    ; #91531: <==closure== 22890 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #48652: <==negation-removal== 91531 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #86499: <==negation-removal== 22890 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_d_b_s
        :precondition (and (leader_b)
                           (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #37981: <==closure== 42883 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #42883: origin
                    (Bb_not_survivorat_s_p9)

                    ; #41725: <==negation-removal== 42883 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #69480: <==negation-removal== 37981 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (leader_c)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #18900: origin
                    (Bc_not_survivorat_s_p9)

                    ; #49811: <==closure== 18900 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #15288: <==negation-removal== 18900 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #69883: <==negation-removal== 49811 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #25935: <==closure== 57924 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #57924: origin
                    (Bd_not_survivorat_s_p9)

                    ; #33809: <==negation-removal== 57924 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #57010: <==negation-removal== 25935 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (leader_a)
                           (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #27490: origin
                    (Ba_survivorat_s_p10)

                    ; #86261: <==closure== 27490 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43394: <==negation-removal== 86261 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #52639: <==negation-removal== 27490 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #64138: <==closure== 74839 (pos)
                    (Pb_survivorat_s_p10)

                    ; #74839: origin
                    (Bb_survivorat_s_p10)

                    ; #12458: <==negation-removal== 74839 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72856: <==negation-removal== 64138 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #29767: origin
                    (Bc_survivorat_s_p10)

                    ; #51667: <==closure== 29767 (pos)
                    (Pc_survivorat_s_p10)

                    ; #27094: <==negation-removal== 51667 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #57442: <==negation-removal== 29767 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #18022: <==closure== 48470 (pos)
                    (Pd_survivorat_s_p10)

                    ; #48470: origin
                    (Bd_survivorat_s_p10)

                    ; #17625: <==negation-removal== 48470 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63654: <==negation-removal== 18022 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (leader_a)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #27490: origin
                    (Ba_survivorat_s_p10)

                    ; #86261: <==closure== 27490 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43394: <==negation-removal== 86261 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #52639: <==negation-removal== 27490 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (leader_b)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #64138: <==closure== 74839 (pos)
                    (Pb_survivorat_s_p10)

                    ; #74839: origin
                    (Bb_survivorat_s_p10)

                    ; #12458: <==negation-removal== 74839 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72856: <==negation-removal== 64138 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (at_b_p10)
                           (leader_c)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #29767: origin
                    (Bc_survivorat_s_p10)

                    ; #51667: <==closure== 29767 (pos)
                    (Pc_survivorat_s_p10)

                    ; #27094: <==negation-removal== 51667 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #57442: <==negation-removal== 29767 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_d_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #18022: <==closure== 48470 (pos)
                    (Pd_survivorat_s_p10)

                    ; #48470: origin
                    (Bd_survivorat_s_p10)

                    ; #17625: <==negation-removal== 48470 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63654: <==negation-removal== 18022 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (leader_a)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #27490: origin
                    (Ba_survivorat_s_p10)

                    ; #86261: <==closure== 27490 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43394: <==negation-removal== 86261 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #52639: <==negation-removal== 27490 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_b)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #64138: <==closure== 74839 (pos)
                    (Pb_survivorat_s_p10)

                    ; #74839: origin
                    (Bb_survivorat_s_p10)

                    ; #12458: <==negation-removal== 74839 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72856: <==negation-removal== 64138 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_c)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #29767: origin
                    (Bc_survivorat_s_p10)

                    ; #51667: <==closure== 29767 (pos)
                    (Pc_survivorat_s_p10)

                    ; #27094: <==negation-removal== 51667 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #57442: <==negation-removal== 29767 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (leader_d)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #18022: <==closure== 48470 (pos)
                    (Pd_survivorat_s_p10)

                    ; #48470: origin
                    (Bd_survivorat_s_p10)

                    ; #17625: <==negation-removal== 48470 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63654: <==negation-removal== 18022 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_d_a_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_a)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #27490: origin
                    (Ba_survivorat_s_p10)

                    ; #86261: <==closure== 27490 (pos)
                    (Pa_survivorat_s_p10)

                    ; #43394: <==negation-removal== 86261 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #52639: <==negation-removal== 27490 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_d_b_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_b)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #64138: <==closure== 74839 (pos)
                    (Pb_survivorat_s_p10)

                    ; #74839: origin
                    (Bb_survivorat_s_p10)

                    ; #12458: <==negation-removal== 74839 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #72856: <==negation-removal== 64138 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_d_c_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_c)
                           (Bd_survivorat_s_p10))
        :effect (and
                    ; #29767: origin
                    (Bc_survivorat_s_p10)

                    ; #51667: <==closure== 29767 (pos)
                    (Pc_survivorat_s_p10)

                    ; #27094: <==negation-removal== 51667 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #57442: <==negation-removal== 29767 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_d_d_s
        :precondition (and (Pd_survivorat_s_p10)
                           (at_d_p10)
                           (Bd_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #18022: <==closure== 48470 (pos)
                    (Pd_survivorat_s_p10)

                    ; #48470: origin
                    (Bd_survivorat_s_p10)

                    ; #17625: <==negation-removal== 48470 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #63654: <==negation-removal== 18022 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #39560: <==closure== 44434 (pos)
                    (Pa_survivorat_s_p11)

                    ; #44434: origin
                    (Ba_survivorat_s_p11)

                    ; #85494: <==negation-removal== 44434 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #90150: <==negation-removal== 39560 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_b))
        :effect (and
                    ; #30519: <==closure== 85975 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85975: origin
                    (Bb_survivorat_s_p11)

                    ; #24378: <==negation-removal== 30519 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #86095: <==negation-removal== 85975 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_c))
        :effect (and
                    ; #12332: origin
                    (Bc_survivorat_s_p11)

                    ; #13843: <==closure== 12332 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73838: <==negation-removal== 13843 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77111: <==negation-removal== 12332 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_a_d_s
        :precondition (and (Pa_survivorat_s_p11)
                           (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (leader_d))
        :effect (and
                    ; #27581: <==closure== 27849 (pos)
                    (Pd_survivorat_s_p11)

                    ; #27849: origin
                    (Bd_survivorat_s_p11)

                    ; #63959: <==negation-removal== 27581 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #88358: <==negation-removal== 27849 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (Bb_survivorat_s_p11)
                           (leader_a)
                           (at_b_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #39560: <==closure== 44434 (pos)
                    (Pa_survivorat_s_p11)

                    ; #44434: origin
                    (Ba_survivorat_s_p11)

                    ; #85494: <==negation-removal== 44434 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #90150: <==negation-removal== 39560 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_b)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #30519: <==closure== 85975 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85975: origin
                    (Bb_survivorat_s_p11)

                    ; #24378: <==negation-removal== 30519 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #86095: <==negation-removal== 85975 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_c)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #12332: origin
                    (Bc_survivorat_s_p11)

                    ; #13843: <==closure== 12332 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73838: <==negation-removal== 13843 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77111: <==negation-removal== 12332 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_d_s
        :precondition (and (Bb_survivorat_s_p11)
                           (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #27581: <==closure== 27849 (pos)
                    (Pd_survivorat_s_p11)

                    ; #27849: origin
                    (Bd_survivorat_s_p11)

                    ; #63959: <==negation-removal== 27581 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #88358: <==negation-removal== 27849 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_a)
                           (at_c_p11))
        :effect (and
                    ; #39560: <==closure== 44434 (pos)
                    (Pa_survivorat_s_p11)

                    ; #44434: origin
                    (Ba_survivorat_s_p11)

                    ; #85494: <==negation-removal== 44434 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #90150: <==negation-removal== 39560 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_b)
                           (at_c_p11))
        :effect (and
                    ; #30519: <==closure== 85975 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85975: origin
                    (Bb_survivorat_s_p11)

                    ; #24378: <==negation-removal== 30519 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #86095: <==negation-removal== 85975 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_c)
                           (at_c_p11))
        :effect (and
                    ; #12332: origin
                    (Bc_survivorat_s_p11)

                    ; #13843: <==closure== 12332 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73838: <==negation-removal== 13843 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77111: <==negation-removal== 12332 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_d_s
        :precondition (and (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11)
                           (leader_d)
                           (at_c_p11))
        :effect (and
                    ; #27581: <==closure== 27849 (pos)
                    (Pd_survivorat_s_p11)

                    ; #27849: origin
                    (Bd_survivorat_s_p11)

                    ; #63959: <==negation-removal== 27581 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #88358: <==negation-removal== 27849 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #39560: <==closure== 44434 (pos)
                    (Pa_survivorat_s_p11)

                    ; #44434: origin
                    (Ba_survivorat_s_p11)

                    ; #85494: <==negation-removal== 44434 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #90150: <==negation-removal== 39560 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_b)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #30519: <==closure== 85975 (pos)
                    (Pb_survivorat_s_p11)

                    ; #85975: origin
                    (Bb_survivorat_s_p11)

                    ; #24378: <==negation-removal== 30519 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #86095: <==negation-removal== 85975 (pos)
                    (not (Pb_not_survivorat_s_p11))))

    (:action comm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #12332: origin
                    (Bc_survivorat_s_p11)

                    ; #13843: <==closure== 12332 (pos)
                    (Pc_survivorat_s_p11)

                    ; #73838: <==negation-removal== 13843 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #77111: <==negation-removal== 12332 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_d_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (leader_d)
                           (Pd_survivorat_s_p11))
        :effect (and
                    ; #27581: <==closure== 27849 (pos)
                    (Pd_survivorat_s_p11)

                    ; #27849: origin
                    (Bd_survivorat_s_p11)

                    ; #63959: <==negation-removal== 27581 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #88358: <==negation-removal== 27849 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (at_a_p12)
                           (leader_a)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #38783: origin
                    (Ba_survivorat_s_p12)

                    ; #64972: <==closure== 38783 (pos)
                    (Pa_survivorat_s_p12)

                    ; #33492: <==negation-removal== 64972 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #80507: <==negation-removal== 38783 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #39883: <==closure== 41226 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41226: origin
                    (Bb_survivorat_s_p12)

                    ; #72221: <==negation-removal== 39883 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #94627: <==negation-removal== 41226 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #78177: <==closure== 84426 (pos)
                    (Pc_survivorat_s_p12)

                    ; #84426: origin
                    (Bc_survivorat_s_p12)

                    ; #85191: <==negation-removal== 78177 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89760: <==negation-removal== 84426 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_a_d_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #73792: origin
                    (Bd_survivorat_s_p12)

                    ; #82327: <==closure== 73792 (pos)
                    (Pd_survivorat_s_p12)

                    ; #22502: <==negation-removal== 82327 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #52245: <==negation-removal== 73792 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #38783: origin
                    (Ba_survivorat_s_p12)

                    ; #64972: <==closure== 38783 (pos)
                    (Pa_survivorat_s_p12)

                    ; #33492: <==negation-removal== 64972 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #80507: <==negation-removal== 38783 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_b)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #39883: <==closure== 41226 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41226: origin
                    (Bb_survivorat_s_p12)

                    ; #72221: <==negation-removal== 39883 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #94627: <==negation-removal== 41226 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_c)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #78177: <==closure== 84426 (pos)
                    (Pc_survivorat_s_p12)

                    ; #84426: origin
                    (Bc_survivorat_s_p12)

                    ; #85191: <==negation-removal== 78177 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89760: <==negation-removal== 84426 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_d_s
        :precondition (and (Bb_survivorat_s_p12)
                           (leader_d)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #73792: origin
                    (Bd_survivorat_s_p12)

                    ; #82327: <==closure== 73792 (pos)
                    (Pd_survivorat_s_p12)

                    ; #22502: <==negation-removal== 82327 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #52245: <==negation-removal== 73792 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (leader_a)
                           (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #38783: origin
                    (Ba_survivorat_s_p12)

                    ; #64972: <==closure== 38783 (pos)
                    (Pa_survivorat_s_p12)

                    ; #33492: <==negation-removal== 64972 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #80507: <==negation-removal== 38783 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_b)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #39883: <==closure== 41226 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41226: origin
                    (Bb_survivorat_s_p12)

                    ; #72221: <==negation-removal== 39883 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #94627: <==negation-removal== 41226 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_c)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #78177: <==closure== 84426 (pos)
                    (Pc_survivorat_s_p12)

                    ; #84426: origin
                    (Bc_survivorat_s_p12)

                    ; #85191: <==negation-removal== 78177 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89760: <==negation-removal== 84426 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (leader_d)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #73792: origin
                    (Bd_survivorat_s_p12)

                    ; #82327: <==closure== 73792 (pos)
                    (Pd_survivorat_s_p12)

                    ; #22502: <==negation-removal== 82327 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #52245: <==negation-removal== 73792 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p12_d_a_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #38783: origin
                    (Ba_survivorat_s_p12)

                    ; #64972: <==closure== 38783 (pos)
                    (Pa_survivorat_s_p12)

                    ; #33492: <==negation-removal== 64972 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #80507: <==negation-removal== 38783 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_d_b_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_b)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #39883: <==closure== 41226 (pos)
                    (Pb_survivorat_s_p12)

                    ; #41226: origin
                    (Bb_survivorat_s_p12)

                    ; #72221: <==negation-removal== 39883 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #94627: <==negation-removal== 41226 (pos)
                    (not (Pb_not_survivorat_s_p12))))

    (:action comm_p12_d_c_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_c)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #78177: <==closure== 84426 (pos)
                    (Pc_survivorat_s_p12)

                    ; #84426: origin
                    (Bc_survivorat_s_p12)

                    ; #85191: <==negation-removal== 78177 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #89760: <==negation-removal== 84426 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_d_s
        :precondition (and (at_d_p12)
                           (Bd_survivorat_s_p12)
                           (leader_d)
                           (Pd_survivorat_s_p12))
        :effect (and
                    ; #73792: origin
                    (Bd_survivorat_s_p12)

                    ; #82327: <==closure== 73792 (pos)
                    (Pd_survivorat_s_p12)

                    ; #22502: <==negation-removal== 82327 (pos)
                    (not (Bd_not_survivorat_s_p12))

                    ; #52245: <==negation-removal== 73792 (pos)
                    (not (Pd_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1))
        :effect (and
                    ; #44847: <==closure== 77057 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77057: origin
                    (Ba_survivorat_s_p1)

                    ; #24850: <==negation-removal== 77057 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79178: <==negation-removal== 44847 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_b)
                           (at_a_p1))
        :effect (and
                    ; #18160: origin
                    (Bb_survivorat_s_p1)

                    ; #75828: <==closure== 18160 (pos)
                    (Pb_survivorat_s_p1)

                    ; #16697: <==negation-removal== 75828 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #24249: <==negation-removal== 18160 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_c)
                           (at_a_p1))
        :effect (and
                    ; #19556: <==closure== 28682 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28682: origin
                    (Bc_survivorat_s_p1)

                    ; #14171: <==negation-removal== 28682 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #28159: <==negation-removal== 19556 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_a_d_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (leader_d)
                           (at_a_p1))
        :effect (and
                    ; #24878: <==closure== 77383 (pos)
                    (Pd_survivorat_s_p1)

                    ; #77383: origin
                    (Bd_survivorat_s_p1)

                    ; #77812: <==negation-removal== 24878 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #92054: <==negation-removal== 77383 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #44847: <==closure== 77057 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77057: origin
                    (Ba_survivorat_s_p1)

                    ; #24850: <==negation-removal== 77057 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79178: <==negation-removal== 44847 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #18160: origin
                    (Bb_survivorat_s_p1)

                    ; #75828: <==closure== 18160 (pos)
                    (Pb_survivorat_s_p1)

                    ; #16697: <==negation-removal== 75828 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #24249: <==negation-removal== 18160 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #19556: <==closure== 28682 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28682: origin
                    (Bc_survivorat_s_p1)

                    ; #14171: <==negation-removal== 28682 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #28159: <==negation-removal== 19556 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_d_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_d))
        :effect (and
                    ; #24878: <==closure== 77383 (pos)
                    (Pd_survivorat_s_p1)

                    ; #77383: origin
                    (Bd_survivorat_s_p1)

                    ; #77812: <==negation-removal== 24878 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #92054: <==negation-removal== 77383 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #44847: <==closure== 77057 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77057: origin
                    (Ba_survivorat_s_p1)

                    ; #24850: <==negation-removal== 77057 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79178: <==negation-removal== 44847 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (at_c_p1))
        :effect (and
                    ; #18160: origin
                    (Bb_survivorat_s_p1)

                    ; #75828: <==closure== 18160 (pos)
                    (Pb_survivorat_s_p1)

                    ; #16697: <==negation-removal== 75828 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #24249: <==negation-removal== 18160 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_c))
        :effect (and
                    ; #19556: <==closure== 28682 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28682: origin
                    (Bc_survivorat_s_p1)

                    ; #14171: <==negation-removal== 28682 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #28159: <==negation-removal== 19556 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_d_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (leader_d)
                           (at_c_p1))
        :effect (and
                    ; #24878: <==closure== 77383 (pos)
                    (Pd_survivorat_s_p1)

                    ; #77383: origin
                    (Bd_survivorat_s_p1)

                    ; #77812: <==negation-removal== 24878 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #92054: <==negation-removal== 77383 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p1_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p1)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #44847: <==closure== 77057 (pos)
                    (Pa_survivorat_s_p1)

                    ; #77057: origin
                    (Ba_survivorat_s_p1)

                    ; #24850: <==negation-removal== 77057 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #79178: <==negation-removal== 44847 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_b_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_b)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #18160: origin
                    (Bb_survivorat_s_p1)

                    ; #75828: <==closure== 18160 (pos)
                    (Pb_survivorat_s_p1)

                    ; #16697: <==negation-removal== 75828 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #24249: <==negation-removal== 18160 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_d_c_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_c)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #19556: <==closure== 28682 (pos)
                    (Pc_survivorat_s_p1)

                    ; #28682: origin
                    (Bc_survivorat_s_p1)

                    ; #14171: <==negation-removal== 28682 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #28159: <==negation-removal== 19556 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_d_d_s
        :precondition (and (Pd_survivorat_s_p1)
                           (leader_d)
                           (at_d_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #24878: <==closure== 77383 (pos)
                    (Pd_survivorat_s_p1)

                    ; #77383: origin
                    (Bd_survivorat_s_p1)

                    ; #77812: <==negation-removal== 24878 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #92054: <==negation-removal== 77383 (pos)
                    (not (Pd_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #47277: <==closure== 65636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65636: origin
                    (Ba_survivorat_s_p2)

                    ; #34469: <==negation-removal== 65636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #42577: <==negation-removal== 47277 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_b)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #81919: origin
                    (Bb_survivorat_s_p2)

                    ; #84903: <==closure== 81919 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11576: <==negation-removal== 84903 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62919: <==negation-removal== 81919 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #62349: origin
                    (Bc_survivorat_s_p2)

                    ; #81913: <==closure== 62349 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20103: <==negation-removal== 62349 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 81913 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (leader_d)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #14023: origin
                    (Bd_survivorat_s_p2)

                    ; #78338: <==closure== 14023 (pos)
                    (Pd_survivorat_s_p2)

                    ; #60452: <==negation-removal== 14023 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #83640: <==negation-removal== 78338 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #47277: <==closure== 65636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65636: origin
                    (Ba_survivorat_s_p2)

                    ; #34469: <==negation-removal== 65636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #42577: <==negation-removal== 47277 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #81919: origin
                    (Bb_survivorat_s_p2)

                    ; #84903: <==closure== 81919 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11576: <==negation-removal== 84903 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62919: <==negation-removal== 81919 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #62349: origin
                    (Bc_survivorat_s_p2)

                    ; #81913: <==closure== 62349 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20103: <==negation-removal== 62349 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 81913 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #14023: origin
                    (Bd_survivorat_s_p2)

                    ; #78338: <==closure== 14023 (pos)
                    (Pd_survivorat_s_p2)

                    ; #60452: <==negation-removal== 14023 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #83640: <==negation-removal== 78338 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #47277: <==closure== 65636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65636: origin
                    (Ba_survivorat_s_p2)

                    ; #34469: <==negation-removal== 65636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #42577: <==negation-removal== 47277 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #81919: origin
                    (Bb_survivorat_s_p2)

                    ; #84903: <==closure== 81919 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11576: <==negation-removal== 84903 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62919: <==negation-removal== 81919 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #62349: origin
                    (Bc_survivorat_s_p2)

                    ; #81913: <==closure== 62349 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20103: <==negation-removal== 62349 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 81913 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_d_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #14023: origin
                    (Bd_survivorat_s_p2)

                    ; #78338: <==closure== 14023 (pos)
                    (Pd_survivorat_s_p2)

                    ; #60452: <==negation-removal== 14023 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #83640: <==negation-removal== 78338 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #47277: <==closure== 65636 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65636: origin
                    (Ba_survivorat_s_p2)

                    ; #34469: <==negation-removal== 65636 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #42577: <==negation-removal== 47277 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_d_b_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_b)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #81919: origin
                    (Bb_survivorat_s_p2)

                    ; #84903: <==closure== 81919 (pos)
                    (Pb_survivorat_s_p2)

                    ; #11576: <==negation-removal== 84903 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #62919: <==negation-removal== 81919 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_c_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (Bd_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #62349: origin
                    (Bc_survivorat_s_p2)

                    ; #81913: <==closure== 62349 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20103: <==negation-removal== 62349 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #52615: <==negation-removal== 81913 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (Pd_survivorat_s_p2)
                           (leader_d)
                           (Bd_survivorat_s_p2))
        :effect (and
                    ; #14023: origin
                    (Bd_survivorat_s_p2)

                    ; #78338: <==closure== 14023 (pos)
                    (Pd_survivorat_s_p2)

                    ; #60452: <==negation-removal== 14023 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #83640: <==negation-removal== 78338 (pos)
                    (not (Bd_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (leader_a)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #49303: <==closure== 75402 (pos)
                    (Pa_survivorat_s_p3)

                    ; #75402: origin
                    (Ba_survivorat_s_p3)

                    ; #62101: <==negation-removal== 49303 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81279: <==negation-removal== 75402 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #78712: origin
                    (Bb_survivorat_s_p3)

                    ; #85304: <==closure== 78712 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17338: <==negation-removal== 85304 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37356: <==negation-removal== 78712 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #43694: <==closure== 84225 (pos)
                    (Pc_survivorat_s_p3)

                    ; #84225: origin
                    (Bc_survivorat_s_p3)

                    ; #29603: <==negation-removal== 84225 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79331: <==negation-removal== 43694 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_a_d_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_d)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #51557: origin
                    (Bd_survivorat_s_p3)

                    ; #79279: <==closure== 51557 (pos)
                    (Pd_survivorat_s_p3)

                    ; #52134: <==negation-removal== 51557 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #79817: <==negation-removal== 79279 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #49303: <==closure== 75402 (pos)
                    (Pa_survivorat_s_p3)

                    ; #75402: origin
                    (Ba_survivorat_s_p3)

                    ; #62101: <==negation-removal== 49303 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81279: <==negation-removal== 75402 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #78712: origin
                    (Bb_survivorat_s_p3)

                    ; #85304: <==closure== 78712 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17338: <==negation-removal== 85304 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37356: <==negation-removal== 78712 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (Pb_survivorat_s_p3)
                           (leader_c)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #43694: <==closure== 84225 (pos)
                    (Pc_survivorat_s_p3)

                    ; #84225: origin
                    (Bc_survivorat_s_p3)

                    ; #29603: <==negation-removal== 84225 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79331: <==negation-removal== 43694 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_d_s
        :precondition (and (Pb_survivorat_s_p3)
                           (leader_d)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #51557: origin
                    (Bd_survivorat_s_p3)

                    ; #79279: <==closure== 51557 (pos)
                    (Pd_survivorat_s_p3)

                    ; #52134: <==negation-removal== 51557 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #79817: <==negation-removal== 79279 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #49303: <==closure== 75402 (pos)
                    (Pa_survivorat_s_p3)

                    ; #75402: origin
                    (Ba_survivorat_s_p3)

                    ; #62101: <==negation-removal== 49303 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81279: <==negation-removal== 75402 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #78712: origin
                    (Bb_survivorat_s_p3)

                    ; #85304: <==closure== 78712 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17338: <==negation-removal== 85304 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37356: <==negation-removal== 78712 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_c))
        :effect (and
                    ; #43694: <==closure== 84225 (pos)
                    (Pc_survivorat_s_p3)

                    ; #84225: origin
                    (Bc_survivorat_s_p3)

                    ; #29603: <==negation-removal== 84225 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79331: <==negation-removal== 43694 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_d_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (leader_d))
        :effect (and
                    ; #51557: origin
                    (Bd_survivorat_s_p3)

                    ; #79279: <==closure== 51557 (pos)
                    (Pd_survivorat_s_p3)

                    ; #52134: <==negation-removal== 51557 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #79817: <==negation-removal== 79279 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p3_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #49303: <==closure== 75402 (pos)
                    (Pa_survivorat_s_p3)

                    ; #75402: origin
                    (Ba_survivorat_s_p3)

                    ; #62101: <==negation-removal== 49303 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81279: <==negation-removal== 75402 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #78712: origin
                    (Bb_survivorat_s_p3)

                    ; #85304: <==closure== 78712 (pos)
                    (Pb_survivorat_s_p3)

                    ; #17338: <==negation-removal== 85304 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #37356: <==negation-removal== 78712 (pos)
                    (not (Pb_not_survivorat_s_p3))))

    (:action comm_p3_d_c_s
        :precondition (and (Pd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #43694: <==closure== 84225 (pos)
                    (Pc_survivorat_s_p3)

                    ; #84225: origin
                    (Bc_survivorat_s_p3)

                    ; #29603: <==negation-removal== 84225 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #79331: <==negation-removal== 43694 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_d_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (at_d_p3)
                           (leader_d)
                           (Bd_survivorat_s_p3))
        :effect (and
                    ; #51557: origin
                    (Bd_survivorat_s_p3)

                    ; #79279: <==closure== 51557 (pos)
                    (Pd_survivorat_s_p3)

                    ; #52134: <==negation-removal== 51557 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #79817: <==negation-removal== 79279 (pos)
                    (not (Bd_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #23284: origin
                    (Ba_survivorat_s_p4)

                    ; #84198: <==closure== 23284 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12475: <==negation-removal== 84198 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #48205: <==negation-removal== 23284 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #18917: origin
                    (Bb_survivorat_s_p4)

                    ; #68674: <==closure== 18917 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46119: <==negation-removal== 68674 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66290: <==negation-removal== 18917 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #68590: origin
                    (Bc_survivorat_s_p4)

                    ; #74029: <==closure== 68590 (pos)
                    (Pc_survivorat_s_p4)

                    ; #18703: <==negation-removal== 68590 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59628: <==negation-removal== 74029 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_a_d_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #33076: <==closure== 53199 (pos)
                    (Pd_survivorat_s_p4)

                    ; #53199: origin
                    (Bd_survivorat_s_p4)

                    ; #27147: <==negation-removal== 53199 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #43360: <==negation-removal== 33076 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (leader_a)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #23284: origin
                    (Ba_survivorat_s_p4)

                    ; #84198: <==closure== 23284 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12475: <==negation-removal== 84198 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #48205: <==negation-removal== 23284 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #18917: origin
                    (Bb_survivorat_s_p4)

                    ; #68674: <==closure== 18917 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46119: <==negation-removal== 68674 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66290: <==negation-removal== 18917 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (at_b_p4)
                           (leader_c)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #68590: origin
                    (Bc_survivorat_s_p4)

                    ; #74029: <==closure== 68590 (pos)
                    (Pc_survivorat_s_p4)

                    ; #18703: <==negation-removal== 68590 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59628: <==negation-removal== 74029 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_d_s
        :precondition (and (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #33076: <==closure== 53199 (pos)
                    (Pd_survivorat_s_p4)

                    ; #53199: origin
                    (Bd_survivorat_s_p4)

                    ; #27147: <==negation-removal== 53199 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #43360: <==negation-removal== 33076 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (at_c_p4)
                           (leader_a)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #23284: origin
                    (Ba_survivorat_s_p4)

                    ; #84198: <==closure== 23284 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12475: <==negation-removal== 84198 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #48205: <==negation-removal== 23284 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #18917: origin
                    (Bb_survivorat_s_p4)

                    ; #68674: <==closure== 18917 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46119: <==negation-removal== 68674 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66290: <==negation-removal== 18917 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #68590: origin
                    (Bc_survivorat_s_p4)

                    ; #74029: <==closure== 68590 (pos)
                    (Pc_survivorat_s_p4)

                    ; #18703: <==negation-removal== 68590 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59628: <==negation-removal== 74029 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_d_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #33076: <==closure== 53199 (pos)
                    (Pd_survivorat_s_p4)

                    ; #53199: origin
                    (Bd_survivorat_s_p4)

                    ; #27147: <==negation-removal== 53199 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #43360: <==negation-removal== 33076 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p4_d_a_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_a)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #23284: origin
                    (Ba_survivorat_s_p4)

                    ; #84198: <==closure== 23284 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12475: <==negation-removal== 84198 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #48205: <==negation-removal== 23284 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_d_b_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_b)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #18917: origin
                    (Bb_survivorat_s_p4)

                    ; #68674: <==closure== 18917 (pos)
                    (Pb_survivorat_s_p4)

                    ; #46119: <==negation-removal== 68674 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66290: <==negation-removal== 18917 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_d_c_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (leader_c)
                           (Pd_survivorat_s_p4))
        :effect (and
                    ; #68590: origin
                    (Bc_survivorat_s_p4)

                    ; #74029: <==closure== 68590 (pos)
                    (Pc_survivorat_s_p4)

                    ; #18703: <==negation-removal== 68590 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59628: <==negation-removal== 74029 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_d_s
        :precondition (and (Bd_survivorat_s_p4)
                           (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_d))
        :effect (and
                    ; #33076: <==closure== 53199 (pos)
                    (Pd_survivorat_s_p4)

                    ; #53199: origin
                    (Bd_survivorat_s_p4)

                    ; #27147: <==negation-removal== 53199 (pos)
                    (not (Pd_not_survivorat_s_p4))

                    ; #43360: <==negation-removal== 33076 (pos)
                    (not (Bd_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #22412: origin
                    (Ba_survivorat_s_p5)

                    ; #91950: <==closure== 22412 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30417: <==negation-removal== 91950 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60655: <==negation-removal== 22412 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #24991: <==closure== 89969 (pos)
                    (Pb_survivorat_s_p5)

                    ; #89969: origin
                    (Bb_survivorat_s_p5)

                    ; #23322: <==negation-removal== 24991 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32155: <==negation-removal== 89969 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #18175: <==closure== 75411 (pos)
                    (Pc_survivorat_s_p5)

                    ; #75411: origin
                    (Bc_survivorat_s_p5)

                    ; #66823: <==negation-removal== 75411 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73419: <==negation-removal== 18175 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_a_d_s
        :precondition (and (leader_d)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #53473: <==closure== 83540 (pos)
                    (Pd_survivorat_s_p5)

                    ; #83540: origin
                    (Bd_survivorat_s_p5)

                    ; #75515: <==negation-removal== 83540 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #90590: <==negation-removal== 53473 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #22412: origin
                    (Ba_survivorat_s_p5)

                    ; #91950: <==closure== 22412 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30417: <==negation-removal== 91950 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60655: <==negation-removal== 22412 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #24991: <==closure== 89969 (pos)
                    (Pb_survivorat_s_p5)

                    ; #89969: origin
                    (Bb_survivorat_s_p5)

                    ; #23322: <==negation-removal== 24991 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32155: <==negation-removal== 89969 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_c)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #18175: <==closure== 75411 (pos)
                    (Pc_survivorat_s_p5)

                    ; #75411: origin
                    (Bc_survivorat_s_p5)

                    ; #66823: <==negation-removal== 75411 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73419: <==negation-removal== 18175 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_d_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_d)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #53473: <==closure== 83540 (pos)
                    (Pd_survivorat_s_p5)

                    ; #83540: origin
                    (Bd_survivorat_s_p5)

                    ; #75515: <==negation-removal== 83540 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #90590: <==negation-removal== 53473 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_a)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #22412: origin
                    (Ba_survivorat_s_p5)

                    ; #91950: <==closure== 22412 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30417: <==negation-removal== 91950 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60655: <==negation-removal== 22412 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #24991: <==closure== 89969 (pos)
                    (Pb_survivorat_s_p5)

                    ; #89969: origin
                    (Bb_survivorat_s_p5)

                    ; #23322: <==negation-removal== 24991 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32155: <==negation-removal== 89969 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (leader_c)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #18175: <==closure== 75411 (pos)
                    (Pc_survivorat_s_p5)

                    ; #75411: origin
                    (Bc_survivorat_s_p5)

                    ; #66823: <==negation-removal== 75411 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73419: <==negation-removal== 18175 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_d_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #53473: <==closure== 83540 (pos)
                    (Pd_survivorat_s_p5)

                    ; #83540: origin
                    (Bd_survivorat_s_p5)

                    ; #75515: <==negation-removal== 83540 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #90590: <==negation-removal== 53473 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_d_a_s
        :precondition (and (Bd_survivorat_s_p5)
                           (leader_a)
                           (at_d_p5)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #22412: origin
                    (Ba_survivorat_s_p5)

                    ; #91950: <==closure== 22412 (pos)
                    (Pa_survivorat_s_p5)

                    ; #30417: <==negation-removal== 91950 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60655: <==negation-removal== 22412 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_b_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #24991: <==closure== 89969 (pos)
                    (Pb_survivorat_s_p5)

                    ; #89969: origin
                    (Bb_survivorat_s_p5)

                    ; #23322: <==negation-removal== 24991 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #32155: <==negation-removal== 89969 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_c_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_c)
                           (Pd_survivorat_s_p5))
        :effect (and
                    ; #18175: <==closure== 75411 (pos)
                    (Pc_survivorat_s_p5)

                    ; #75411: origin
                    (Bc_survivorat_s_p5)

                    ; #66823: <==negation-removal== 75411 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #73419: <==negation-removal== 18175 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_d_d_s
        :precondition (and (Bd_survivorat_s_p5)
                           (at_d_p5)
                           (Pd_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #53473: <==closure== 83540 (pos)
                    (Pd_survivorat_s_p5)

                    ; #83540: origin
                    (Bd_survivorat_s_p5)

                    ; #75515: <==negation-removal== 83540 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #90590: <==negation-removal== 53473 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_a))
        :effect (and
                    ; #34723: <==closure== 87753 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87753: origin
                    (Ba_survivorat_s_p6)

                    ; #53566: <==negation-removal== 34723 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79825: <==negation-removal== 87753 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_b))
        :effect (and
                    ; #14372: origin
                    (Bb_survivorat_s_p6)

                    ; #50557: <==closure== 14372 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73337: <==negation-removal== 14372 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82115: <==negation-removal== 50557 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_c))
        :effect (and
                    ; #44603: origin
                    (Bc_survivorat_s_p6)

                    ; #46999: <==closure== 44603 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16708: <==negation-removal== 44603 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #48297: <==negation-removal== 46999 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_a_d_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (leader_d))
        :effect (and
                    ; #54541: origin
                    (Bd_survivorat_s_p6)

                    ; #78926: <==closure== 54541 (pos)
                    (Pd_survivorat_s_p6)

                    ; #59880: <==negation-removal== 78926 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83930: <==negation-removal== 54541 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #34723: <==closure== 87753 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87753: origin
                    (Ba_survivorat_s_p6)

                    ; #53566: <==negation-removal== 34723 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79825: <==negation-removal== 87753 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #14372: origin
                    (Bb_survivorat_s_p6)

                    ; #50557: <==closure== 14372 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73337: <==negation-removal== 14372 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82115: <==negation-removal== 50557 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #44603: origin
                    (Bc_survivorat_s_p6)

                    ; #46999: <==closure== 44603 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16708: <==negation-removal== 44603 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #48297: <==negation-removal== 46999 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #54541: origin
                    (Bd_survivorat_s_p6)

                    ; #78926: <==closure== 54541 (pos)
                    (Pd_survivorat_s_p6)

                    ; #59880: <==negation-removal== 78926 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83930: <==negation-removal== 54541 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #34723: <==closure== 87753 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87753: origin
                    (Ba_survivorat_s_p6)

                    ; #53566: <==negation-removal== 34723 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79825: <==negation-removal== 87753 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #14372: origin
                    (Bb_survivorat_s_p6)

                    ; #50557: <==closure== 14372 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73337: <==negation-removal== 14372 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82115: <==negation-removal== 50557 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #44603: origin
                    (Bc_survivorat_s_p6)

                    ; #46999: <==closure== 44603 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16708: <==negation-removal== 44603 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #48297: <==negation-removal== 46999 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_d_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (leader_d))
        :effect (and
                    ; #54541: origin
                    (Bd_survivorat_s_p6)

                    ; #78926: <==closure== 54541 (pos)
                    (Pd_survivorat_s_p6)

                    ; #59880: <==negation-removal== 78926 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83930: <==negation-removal== 54541 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_a_s
        :precondition (and (at_d_p6)
                           (leader_a)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #34723: <==closure== 87753 (pos)
                    (Pa_survivorat_s_p6)

                    ; #87753: origin
                    (Ba_survivorat_s_p6)

                    ; #53566: <==negation-removal== 34723 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #79825: <==negation-removal== 87753 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_d_b_s
        :precondition (and (at_d_p6)
                           (leader_b)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #14372: origin
                    (Bb_survivorat_s_p6)

                    ; #50557: <==closure== 14372 (pos)
                    (Pb_survivorat_s_p6)

                    ; #73337: <==negation-removal== 14372 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #82115: <==negation-removal== 50557 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_c_s
        :precondition (and (at_d_p6)
                           (leader_c)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #44603: origin
                    (Bc_survivorat_s_p6)

                    ; #46999: <==closure== 44603 (pos)
                    (Pc_survivorat_s_p6)

                    ; #16708: <==negation-removal== 44603 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #48297: <==negation-removal== 46999 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_d_d_s
        :precondition (and (at_d_p6)
                           (leader_d)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6))
        :effect (and
                    ; #54541: origin
                    (Bd_survivorat_s_p6)

                    ; #78926: <==closure== 54541 (pos)
                    (Pd_survivorat_s_p6)

                    ; #59880: <==negation-removal== 78926 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #83930: <==negation-removal== 54541 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (leader_a)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #44353: origin
                    (Ba_survivorat_s_p7)

                    ; #58833: <==closure== 44353 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20919: <==negation-removal== 44353 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #36316: <==negation-removal== 58833 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (leader_b)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #12929: <==closure== 27571 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27571: origin
                    (Bb_survivorat_s_p7)

                    ; #14304: <==negation-removal== 12929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41343: <==negation-removal== 27571 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #43388: origin
                    (Bc_survivorat_s_p7)

                    ; #72983: <==closure== 43388 (pos)
                    (Pc_survivorat_s_p7)

                    ; #23724: <==negation-removal== 72983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55559: <==negation-removal== 43388 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_a_d_s
        :precondition (and (leader_d)
                           (at_a_p7)
                           (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #19947: <==closure== 96681 (pos)
                    (Pd_survivorat_s_p7)

                    ; #96681: origin
                    (Bd_survivorat_s_p7)

                    ; #29732: <==negation-removal== 96681 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #71876: <==negation-removal== 19947 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #44353: origin
                    (Ba_survivorat_s_p7)

                    ; #58833: <==closure== 44353 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20919: <==negation-removal== 44353 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #36316: <==negation-removal== 58833 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_b)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #12929: <==closure== 27571 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27571: origin
                    (Bb_survivorat_s_p7)

                    ; #14304: <==negation-removal== 12929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41343: <==negation-removal== 27571 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #43388: origin
                    (Bc_survivorat_s_p7)

                    ; #72983: <==closure== 43388 (pos)
                    (Pc_survivorat_s_p7)

                    ; #23724: <==negation-removal== 72983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55559: <==negation-removal== 43388 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_d_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (leader_d)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #19947: <==closure== 96681 (pos)
                    (Pd_survivorat_s_p7)

                    ; #96681: origin
                    (Bd_survivorat_s_p7)

                    ; #29732: <==negation-removal== 96681 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #71876: <==negation-removal== 19947 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #44353: origin
                    (Ba_survivorat_s_p7)

                    ; #58833: <==closure== 44353 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20919: <==negation-removal== 44353 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #36316: <==negation-removal== 58833 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_b)
                           (at_c_p7))
        :effect (and
                    ; #12929: <==closure== 27571 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27571: origin
                    (Bb_survivorat_s_p7)

                    ; #14304: <==negation-removal== 12929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41343: <==negation-removal== 27571 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_c)
                           (at_c_p7))
        :effect (and
                    ; #43388: origin
                    (Bc_survivorat_s_p7)

                    ; #72983: <==closure== 43388 (pos)
                    (Pc_survivorat_s_p7)

                    ; #23724: <==negation-removal== 72983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55559: <==negation-removal== 43388 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #19947: <==closure== 96681 (pos)
                    (Pd_survivorat_s_p7)

                    ; #96681: origin
                    (Bd_survivorat_s_p7)

                    ; #29732: <==negation-removal== 96681 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #71876: <==negation-removal== 19947 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p7_d_a_s
        :precondition (and (leader_a)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #44353: origin
                    (Ba_survivorat_s_p7)

                    ; #58833: <==closure== 44353 (pos)
                    (Pa_survivorat_s_p7)

                    ; #20919: <==negation-removal== 44353 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #36316: <==negation-removal== 58833 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_d_b_s
        :precondition (and (leader_b)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #12929: <==closure== 27571 (pos)
                    (Pb_survivorat_s_p7)

                    ; #27571: origin
                    (Bb_survivorat_s_p7)

                    ; #14304: <==negation-removal== 12929 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #41343: <==negation-removal== 27571 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_d_c_s
        :precondition (and (leader_c)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #43388: origin
                    (Bc_survivorat_s_p7)

                    ; #72983: <==closure== 43388 (pos)
                    (Pc_survivorat_s_p7)

                    ; #23724: <==negation-removal== 72983 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #55559: <==negation-removal== 43388 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_d_d_s
        :precondition (and (leader_d)
                           (Pd_survivorat_s_p7)
                           (at_d_p7)
                           (Bd_survivorat_s_p7))
        :effect (and
                    ; #19947: <==closure== 96681 (pos)
                    (Pd_survivorat_s_p7)

                    ; #96681: origin
                    (Bd_survivorat_s_p7)

                    ; #29732: <==negation-removal== 96681 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #71876: <==negation-removal== 19947 (pos)
                    (not (Bd_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #67110: <==closure== 85265 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85265: origin
                    (Ba_survivorat_s_p8)

                    ; #60779: <==negation-removal== 85265 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #76837: <==negation-removal== 67110 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #29603: origin
                    (Bb_survivorat_s_p8)

                    ; #38820: <==closure== 29603 (pos)
                    (Pb_survivorat_s_p8)

                    ; #22701: <==negation-removal== 38820 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77648: <==negation-removal== 29603 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #17378: origin
                    (Bc_survivorat_s_p8)

                    ; #47842: <==closure== 17378 (pos)
                    (Pc_survivorat_s_p8)

                    ; #23842: <==negation-removal== 17378 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #27691: <==negation-removal== 47842 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_a_d_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #17383: origin
                    (Bd_survivorat_s_p8)

                    ; #45208: <==closure== 17383 (pos)
                    (Pd_survivorat_s_p8)

                    ; #88814: <==negation-removal== 45208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #92007: <==negation-removal== 17383 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #67110: <==closure== 85265 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85265: origin
                    (Ba_survivorat_s_p8)

                    ; #60779: <==negation-removal== 85265 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #76837: <==negation-removal== 67110 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_b))
        :effect (and
                    ; #29603: origin
                    (Bb_survivorat_s_p8)

                    ; #38820: <==closure== 29603 (pos)
                    (Pb_survivorat_s_p8)

                    ; #22701: <==negation-removal== 38820 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77648: <==negation-removal== 29603 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #17378: origin
                    (Bc_survivorat_s_p8)

                    ; #47842: <==closure== 17378 (pos)
                    (Pc_survivorat_s_p8)

                    ; #23842: <==negation-removal== 17378 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #27691: <==negation-removal== 47842 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #17383: origin
                    (Bd_survivorat_s_p8)

                    ; #45208: <==closure== 17383 (pos)
                    (Pd_survivorat_s_p8)

                    ; #88814: <==negation-removal== 45208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #92007: <==negation-removal== 17383 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #67110: <==closure== 85265 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85265: origin
                    (Ba_survivorat_s_p8)

                    ; #60779: <==negation-removal== 85265 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #76837: <==negation-removal== 67110 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #29603: origin
                    (Bb_survivorat_s_p8)

                    ; #38820: <==closure== 29603 (pos)
                    (Pb_survivorat_s_p8)

                    ; #22701: <==negation-removal== 38820 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77648: <==negation-removal== 29603 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_c))
        :effect (and
                    ; #17378: origin
                    (Bc_survivorat_s_p8)

                    ; #47842: <==closure== 17378 (pos)
                    (Pc_survivorat_s_p8)

                    ; #23842: <==negation-removal== 17378 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #27691: <==negation-removal== 47842 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_d_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_d))
        :effect (and
                    ; #17383: origin
                    (Bd_survivorat_s_p8)

                    ; #45208: <==closure== 17383 (pos)
                    (Pd_survivorat_s_p8)

                    ; #88814: <==negation-removal== 45208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #92007: <==negation-removal== 17383 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p8_d_a_s
        :precondition (and (leader_a)
                           (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #67110: <==closure== 85265 (pos)
                    (Pa_survivorat_s_p8)

                    ; #85265: origin
                    (Ba_survivorat_s_p8)

                    ; #60779: <==negation-removal== 85265 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #76837: <==negation-removal== 67110 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_b_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_b)
                           (at_d_p8))
        :effect (and
                    ; #29603: origin
                    (Bb_survivorat_s_p8)

                    ; #38820: <==closure== 29603 (pos)
                    (Pb_survivorat_s_p8)

                    ; #22701: <==negation-removal== 38820 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #77648: <==negation-removal== 29603 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_d_c_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8)
                           (leader_c))
        :effect (and
                    ; #17378: origin
                    (Bc_survivorat_s_p8)

                    ; #47842: <==closure== 17378 (pos)
                    (Pc_survivorat_s_p8)

                    ; #23842: <==negation-removal== 17378 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #27691: <==negation-removal== 47842 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (leader_d)
                           (at_d_p8))
        :effect (and
                    ; #17383: origin
                    (Bd_survivorat_s_p8)

                    ; #45208: <==closure== 17383 (pos)
                    (Pd_survivorat_s_p8)

                    ; #88814: <==negation-removal== 45208 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #92007: <==negation-removal== 17383 (pos)
                    (not (Pd_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #48652: origin
                    (Ba_survivorat_s_p9)

                    ; #86499: <==closure== 48652 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22890: <==negation-removal== 86499 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91531: <==negation-removal== 48652 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #41725: <==closure== 69480 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69480: origin
                    (Bb_survivorat_s_p9)

                    ; #37981: <==negation-removal== 69480 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42883: <==negation-removal== 41725 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15288: <==closure== 69883 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69883: origin
                    (Bc_survivorat_s_p9)

                    ; #18900: <==negation-removal== 15288 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #49811: <==negation-removal== 69883 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_a_d_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_d)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #33809: <==closure== 57010 (pos)
                    (Pd_survivorat_s_p9)

                    ; #57010: origin
                    (Bd_survivorat_s_p9)

                    ; #25935: <==negation-removal== 57010 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57924: <==negation-removal== 33809 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (at_b_p9)
                           (leader_a)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #48652: origin
                    (Ba_survivorat_s_p9)

                    ; #86499: <==closure== 48652 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22890: <==negation-removal== 86499 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91531: <==negation-removal== 48652 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #41725: <==closure== 69480 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69480: origin
                    (Bb_survivorat_s_p9)

                    ; #37981: <==negation-removal== 69480 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42883: <==negation-removal== 41725 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #15288: <==closure== 69883 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69883: origin
                    (Bc_survivorat_s_p9)

                    ; #18900: <==negation-removal== 15288 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #49811: <==negation-removal== 69883 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_d_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #33809: <==closure== 57010 (pos)
                    (Pd_survivorat_s_p9)

                    ; #57010: origin
                    (Bd_survivorat_s_p9)

                    ; #25935: <==negation-removal== 57010 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57924: <==negation-removal== 33809 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (at_c_p9)
                           (leader_a)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #48652: origin
                    (Ba_survivorat_s_p9)

                    ; #86499: <==closure== 48652 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22890: <==negation-removal== 86499 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91531: <==negation-removal== 48652 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (at_c_p9)
                           (leader_b)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #41725: <==closure== 69480 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69480: origin
                    (Bb_survivorat_s_p9)

                    ; #37981: <==negation-removal== 69480 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42883: <==negation-removal== 41725 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (at_c_p9)
                           (leader_c)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #15288: <==closure== 69883 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69883: origin
                    (Bc_survivorat_s_p9)

                    ; #18900: <==negation-removal== 15288 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #49811: <==negation-removal== 69883 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_d_s
        :precondition (and (at_c_p9)
                           (leader_d)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #33809: <==closure== 57010 (pos)
                    (Pd_survivorat_s_p9)

                    ; #57010: origin
                    (Bd_survivorat_s_p9)

                    ; #25935: <==negation-removal== 57010 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57924: <==negation-removal== 33809 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_d_a_s
        :precondition (and (leader_a)
                           (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #48652: origin
                    (Ba_survivorat_s_p9)

                    ; #86499: <==closure== 48652 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22890: <==negation-removal== 86499 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #91531: <==negation-removal== 48652 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_d_b_s
        :precondition (and (leader_b)
                           (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #41725: <==closure== 69480 (pos)
                    (Pb_survivorat_s_p9)

                    ; #69480: origin
                    (Bb_survivorat_s_p9)

                    ; #37981: <==negation-removal== 69480 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #42883: <==negation-removal== 41725 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (leader_c)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9))
        :effect (and
                    ; #15288: <==closure== 69883 (pos)
                    (Pc_survivorat_s_p9)

                    ; #69883: origin
                    (Bc_survivorat_s_p9)

                    ; #18900: <==negation-removal== 15288 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #49811: <==negation-removal== 69883 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Pd_survivorat_s_p9)
                           (Bd_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #33809: <==closure== 57010 (pos)
                    (Pd_survivorat_s_p9)

                    ; #57010: origin
                    (Bd_survivorat_s_p9)

                    ; #25935: <==negation-removal== 57010 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #57924: <==negation-removal== 33809 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1)
                           (not (leader_a)))
        :effect (and
                    ; #70450: origin
                    (not_at_a_p10)

                    ; #87163: origin
                    (at_a_p1)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #70450: origin
                    (not_at_a_p10)

                    ; #72458: origin
                    (at_a_p12)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #70450: origin
                    (not_at_a_p10)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #61219: <==negation-removal== 70450 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #70967: origin
                    (not_at_a_p11)

                    ; #87163: origin
                    (at_a_p1)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #70967: origin
                    (not_at_a_p11)

                    ; #72458: origin
                    (at_a_p12)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #70967: origin
                    (not_at_a_p11)

                    ; #22932: <==negation-removal== 70967 (pos)
                    (not (at_a_p11))

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1)
                           (not (leader_a)))
        :effect (and
                    ; #71099: origin
                    (not_at_a_p12)

                    ; #87163: origin
                    (at_a_p1)

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #71099: origin
                    (not_at_a_p12)

                    ; #72458: origin
                    (at_a_p12)

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #71099: origin
                    (not_at_a_p12)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #72458: <==negation-removal== 71099 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #87163: origin
                    (at_a_p1)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #72458: origin
                    (at_a_p12)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #88614: origin
                    (not_at_a_p1)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #87163: <==negation-removal== 88614 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #87163: origin
                    (at_a_p1)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #72458: origin
                    (at_a_p12)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #91929: origin
                    (not_at_a_p2)

                    ; #12761: <==negation-removal== 91929 (pos)
                    (not (at_a_p2))

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #57675: origin
                    (not_at_a_p3)

                    ; #87163: origin
                    (at_a_p1)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #57675: origin
                    (not_at_a_p3)

                    ; #61219: origin
                    (at_a_p10)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #57675: origin
                    (not_at_a_p3)

                    ; #72458: origin
                    (at_a_p12)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #57675: origin
                    (not_at_a_p3)

                    ; #59487: origin
                    (at_a_p4)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #57675: origin
                    (not_at_a_p3)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #54977: <==negation-removal== 57675 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #87163: origin
                    (at_a_p1)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #61219: origin
                    (at_a_p10)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #22932: origin
                    (at_a_p11)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #72458: origin
                    (at_a_p12)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #17849: origin
                    (not_at_a_p4)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #54977: origin
                    (at_a_p3)

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #59487: origin
                    (at_a_p4)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #46233: origin
                    (at_a_p5)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #17849: origin
                    (not_at_a_p4)

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #37422: origin
                    (at_a_p7)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #17849: origin
                    (not_at_a_p4)

                    ; #47872: origin
                    (at_a_p8)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #17849: origin
                    (not_at_a_p4)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #59487: <==negation-removal== 17849 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #87163: origin
                    (at_a_p1)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #61219: origin
                    (at_a_p10)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #23679: origin
                    (not_at_a_p5)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #72458: origin
                    (at_a_p12)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #23679: origin
                    (not_at_a_p5)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #54977: origin
                    (at_a_p3)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #59487: origin
                    (at_a_p4)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #46233: origin
                    (at_a_p5)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #23679: origin
                    (not_at_a_p5)

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #37422: origin
                    (at_a_p7)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23679: origin
                    (not_at_a_p5)

                    ; #47872: origin
                    (at_a_p8)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #23679: origin
                    (not_at_a_p5)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #46233: <==negation-removal== 23679 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #80453: origin
                    (not_at_a_p6)

                    ; #87163: origin
                    (at_a_p1)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61219: origin
                    (at_a_p10)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #72458: origin
                    (at_a_p12)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #54977: origin
                    (at_a_p3)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #59487: origin
                    (at_a_p4)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #46233: origin
                    (at_a_p5)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #47872: origin
                    (at_a_p8)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #80453: origin
                    (not_at_a_p6)

                    ; #15207: <==negation-removal== 80453 (pos)
                    (not (at_a_p6))

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #87163: origin
                    (at_a_p1)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #61219: origin
                    (at_a_p10)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #22932: origin
                    (at_a_p11)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #72458: origin
                    (at_a_p12)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #15234: origin
                    (not_at_a_p7)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #54977: origin
                    (at_a_p3)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #59487: origin
                    (at_a_p4)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #46233: origin
                    (at_a_p5)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #15234: origin
                    (not_at_a_p7)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #37422: origin
                    (at_a_p7)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #15234: origin
                    (not_at_a_p7)

                    ; #47872: origin
                    (at_a_p8)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #15234: origin
                    (not_at_a_p7)

                    ; #37422: <==negation-removal== 15234 (pos)
                    (not (at_a_p7))

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #87163: origin
                    (at_a_p1)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #61219: origin
                    (at_a_p10)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #22932: origin
                    (at_a_p11)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #72458: origin
                    (at_a_p12)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #14507: origin
                    (not_at_a_p8)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #54977: origin
                    (at_a_p3)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #59487: origin
                    (at_a_p4)

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #46233: origin
                    (at_a_p5)

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #15207: origin
                    (at_a_p6)

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #37422: origin
                    (at_a_p7)

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #14507: origin
                    (not_at_a_p8)

                    ; #47872: origin
                    (at_a_p8)

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #14507: origin
                    (not_at_a_p8)

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))

                    ; #47872: <==negation-removal== 14507 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #87163: origin
                    (at_a_p1)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #88614: <==negation-removal== 87163 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #61219: origin
                    (at_a_p10)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #70450: <==negation-removal== 61219 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22932: origin
                    (at_a_p11)

                    ; #44315: origin
                    (not_at_a_p9)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #70967: <==negation-removal== 22932 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #72458: origin
                    (at_a_p12)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #71099: <==negation-removal== 72458 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12761: origin
                    (at_a_p2)

                    ; #44315: origin
                    (not_at_a_p9)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #91929: <==negation-removal== 12761 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #54977: origin
                    (at_a_p3)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #57675: <==negation-removal== 54977 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #59487: origin
                    (at_a_p4)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #17849: <==negation-removal== 59487 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #46233: origin
                    (at_a_p5)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #23679: <==negation-removal== 46233 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #15207: origin
                    (at_a_p6)

                    ; #44315: origin
                    (not_at_a_p9)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #80453: <==negation-removal== 15207 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37422: origin
                    (at_a_p7)

                    ; #44315: origin
                    (not_at_a_p9)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #15234: <==negation-removal== 37422 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #44315: origin
                    (not_at_a_p9)

                    ; #47872: origin
                    (at_a_p8)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #14507: <==negation-removal== 47872 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12954: origin
                    (at_a_p9)

                    ; #44315: origin
                    (not_at_a_p9)

                    ; #12954: <==negation-removal== 44315 (pos)
                    (not (at_a_p9))

                    ; #44315: <==negation-removal== 12954 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1)
                           (not (leader_b)))
        :effect (and
                    ; #70699: origin
                    (not_at_b_p10)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10)
                           (not (leader_b)))
        :effect (and
                    ; #64800: origin
                    (at_b_p10)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #70699: origin
                    (not_at_b_p10)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #44908: origin
                    (at_b_p2)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50658: origin
                    (at_b_p4)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #70699: origin
                    (not_at_b_p10)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #40320: origin
                    (at_b_p7)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #44335: origin
                    (at_b_p8)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #52189: origin
                    (at_b_p9)

                    ; #70699: origin
                    (not_at_b_p10)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #64800: <==negation-removal== 70699 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #88415: origin
                    (at_b_p1)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #64800: origin
                    (at_b_p10)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #75493: origin
                    (at_b_p12)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2)
                           (not (leader_b)))
        :effect (and
                    ; #44908: origin
                    (at_b_p2)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #50658: origin
                    (at_b_p4)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #73149: origin
                    (at_b_p5)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #40320: origin
                    (at_b_p7)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #44335: origin
                    (at_b_p8)

                    ; #45765: origin
                    (not_at_b_p11)

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #45765: origin
                    (not_at_b_p11)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #19592: <==negation-removal== 45765 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #64800: origin
                    (at_b_p10)

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #38099: origin
                    (not_at_b_p12)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #38099: origin
                    (not_at_b_p12)

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #38099: origin
                    (not_at_b_p12)

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #38099: origin
                    (not_at_b_p12)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #75493: <==negation-removal== 38099 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #64800: origin
                    (at_b_p10)

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #35205: origin
                    (not_at_b_p1)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #37720: origin
                    (at_b_p3)

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #35205: origin
                    (not_at_b_p1)

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #35205: origin
                    (not_at_b_p1)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #88415: <==negation-removal== 35205 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #64800: origin
                    (at_b_p10)

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #24826: origin
                    (not_at_b_p2)

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #37720: origin
                    (at_b_p3)

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #32037: origin
                    (at_b_p6)

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9)
                           (not (leader_b)))
        :effect (and
                    ; #24826: origin
                    (not_at_b_p2)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #44908: <==negation-removal== 24826 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #81061: origin
                    (not_at_b_p3)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #64800: origin
                    (at_b_p10)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #75493: origin
                    (at_b_p12)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #44908: origin
                    (at_b_p2)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50658: origin
                    (at_b_p4)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #73149: origin
                    (at_b_p5)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #40320: origin
                    (at_b_p7)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #44335: origin
                    (at_b_p8)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #52189: origin
                    (at_b_p9)

                    ; #81061: origin
                    (not_at_b_p3)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #37720: <==negation-removal== 81061 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #64800: origin
                    (at_b_p10)

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #44908: origin
                    (at_b_p2)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #40320: origin
                    (at_b_p7)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #44335: origin
                    (at_b_p8)

                    ; #44934: origin
                    (not_at_b_p4)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9)
                           (not (leader_b)))
        :effect (and
                    ; #44934: origin
                    (not_at_b_p4)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #50658: <==negation-removal== 44934 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #64800: origin
                    (at_b_p10)

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #26204: origin
                    (not_at_b_p5)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #37720: origin
                    (at_b_p3)

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #32037: origin
                    (at_b_p6)

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #26204: origin
                    (not_at_b_p5)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #73149: <==negation-removal== 26204 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #61051: origin
                    (not_at_b_p6)

                    ; #88415: origin
                    (at_b_p1)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #61051: origin
                    (not_at_b_p6)

                    ; #64800: origin
                    (at_b_p10)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #61051: origin
                    (not_at_b_p6)

                    ; #75493: origin
                    (at_b_p12)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #44908: origin
                    (at_b_p2)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #37720: origin
                    (at_b_p3)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50658: origin
                    (at_b_p4)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #61051: origin
                    (not_at_b_p6)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #40320: origin
                    (at_b_p7)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #44335: origin
                    (at_b_p8)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #52189: origin
                    (at_b_p9)

                    ; #61051: origin
                    (not_at_b_p6)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #32037: <==negation-removal== 61051 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #64800: origin
                    (at_b_p10)

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #25302: origin
                    (not_at_b_p7)

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #37720: origin
                    (at_b_p3)

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #50658: origin
                    (at_b_p4)

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #32037: origin
                    (at_b_p6)

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9)
                           (not (leader_b)))
        :effect (and
                    ; #25302: origin
                    (not_at_b_p7)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #40320: <==negation-removal== 25302 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #64800: origin
                    (at_b_p10)

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19592: origin
                    (at_b_p11)

                    ; #36236: origin
                    (not_at_b_p8)

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #37720: origin
                    (at_b_p3)

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #32037: origin
                    (at_b_p6)

                    ; #36236: origin
                    (not_at_b_p8)

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #36236: origin
                    (not_at_b_p8)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #44335: <==negation-removal== 36236 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #88415: origin
                    (at_b_p1)

                    ; #35205: <==negation-removal== 88415 (pos)
                    (not (not_at_b_p1))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #64800: origin
                    (at_b_p10)

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))

                    ; #70699: <==negation-removal== 64800 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #19592: origin
                    (at_b_p11)

                    ; #45765: <==negation-removal== 19592 (pos)
                    (not (not_at_b_p11))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #75493: origin
                    (at_b_p12)

                    ; #38099: <==negation-removal== 75493 (pos)
                    (not (not_at_b_p12))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #44908: origin
                    (at_b_p2)

                    ; #24826: <==negation-removal== 44908 (pos)
                    (not (not_at_b_p2))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #37720: origin
                    (at_b_p3)

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))

                    ; #81061: <==negation-removal== 37720 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #50658: origin
                    (at_b_p4)

                    ; #44934: <==negation-removal== 50658 (pos)
                    (not (not_at_b_p4))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #73149: origin
                    (at_b_p5)

                    ; #26204: <==negation-removal== 73149 (pos)
                    (not (not_at_b_p5))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #32037: origin
                    (at_b_p6)

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))

                    ; #61051: <==negation-removal== 32037 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #40320: origin
                    (at_b_p7)

                    ; #25302: <==negation-removal== 40320 (pos)
                    (not (not_at_b_p7))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #44335: origin
                    (at_b_p8)

                    ; #36236: <==negation-removal== 44335 (pos)
                    (not (not_at_b_p8))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9)
                           (not (leader_b)))
        :effect (and
                    ; #10380: origin
                    (not_at_b_p9)

                    ; #52189: origin
                    (at_b_p9)

                    ; #10380: <==negation-removal== 52189 (pos)
                    (not (not_at_b_p9))

                    ; #52189: <==negation-removal== 10380 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #41516: origin
                    (at_c_p1)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #41368: origin
                    (at_c_p10)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #71577: origin
                    (at_c_p11)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #16070: origin
                    (not_at_c_p10)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #16070: origin
                    (not_at_c_p10)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #52723: origin
                    (at_c_p5)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #26364: origin
                    (at_c_p6)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #42796: origin
                    (at_c_p7)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #16070: origin
                    (not_at_c_p10)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #16070: origin
                    (not_at_c_p10)

                    ; #53196: origin
                    (at_c_p9)

                    ; #41368: <==negation-removal== 16070 (pos)
                    (not (at_c_p10))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50975: origin
                    (not_at_c_p11)

                    ; #71577: origin
                    (at_c_p11)

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50975: origin
                    (not_at_c_p11)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50975: origin
                    (not_at_c_p11)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50975: origin
                    (not_at_c_p11)

                    ; #52723: origin
                    (at_c_p5)

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #50975: origin
                    (not_at_c_p11)

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #50975: origin
                    (not_at_c_p11)

                    ; #53196: origin
                    (at_c_p9)

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))

                    ; #71577: <==negation-removal== 50975 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #70958: origin
                    (not_at_c_p12)

                    ; #71577: origin
                    (at_c_p11)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #70958: origin
                    (not_at_c_p12)

                    ; #78581: origin
                    (at_c_p3)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58337: origin
                    (at_c_p4)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52723: origin
                    (at_c_p5)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9)
                           (not (leader_c)))
        :effect (and
                    ; #53196: origin
                    (at_c_p9)

                    ; #70958: origin
                    (not_at_c_p12)

                    ; #11574: <==negation-removal== 70958 (pos)
                    (not (at_c_p12))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #51399: origin
                    (not_at_c_p1)

                    ; #71577: origin
                    (at_c_p11)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #51399: origin
                    (not_at_c_p1)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #51399: origin
                    (not_at_c_p1)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #51399: origin
                    (not_at_c_p1)

                    ; #52723: origin
                    (at_c_p5)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #51399: origin
                    (not_at_c_p1)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #51399: origin
                    (not_at_c_p1)

                    ; #53196: origin
                    (at_c_p9)

                    ; #41516: <==negation-removal== 51399 (pos)
                    (not (at_c_p1))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48256: origin
                    (not_at_c_p2)

                    ; #71577: origin
                    (at_c_p11)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48256: origin
                    (not_at_c_p2)

                    ; #78581: origin
                    (at_c_p3)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #48256: origin
                    (not_at_c_p2)

                    ; #58337: origin
                    (at_c_p4)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48256: origin
                    (not_at_c_p2)

                    ; #52723: origin
                    (at_c_p5)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #48256: origin
                    (not_at_c_p2)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #48256: origin
                    (not_at_c_p2)

                    ; #53196: origin
                    (at_c_p9)

                    ; #13208: <==negation-removal== 48256 (pos)
                    (not (at_c_p2))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #41516: origin
                    (at_c_p1)

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #41368: origin
                    (at_c_p10)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #71577: origin
                    (at_c_p11)

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #36567: origin
                    (not_at_c_p3)

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #36567: origin
                    (not_at_c_p3)

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #52723: origin
                    (at_c_p5)

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #36567: origin
                    (not_at_c_p3)

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #42796: origin
                    (at_c_p7)

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #36567: origin
                    (not_at_c_p3)

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #36567: origin
                    (not_at_c_p3)

                    ; #53196: origin
                    (at_c_p9)

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))

                    ; #78581: <==negation-removal== 36567 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #41516: origin
                    (at_c_p1)

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #41368: origin
                    (at_c_p10)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #71577: origin
                    (at_c_p11)

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #35975: origin
                    (not_at_c_p4)

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #35975: origin
                    (not_at_c_p4)

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #52723: origin
                    (at_c_p5)

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #35975: origin
                    (not_at_c_p4)

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #42796: origin
                    (at_c_p7)

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #35975: origin
                    (not_at_c_p4)

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9)
                           (not (leader_c)))
        :effect (and
                    ; #35975: origin
                    (not_at_c_p4)

                    ; #53196: origin
                    (at_c_p9)

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))

                    ; #58337: <==negation-removal== 35975 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #65055: origin
                    (not_at_c_p5)

                    ; #71577: origin
                    (at_c_p11)

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #65055: origin
                    (not_at_c_p5)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58337: origin
                    (at_c_p4)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52723: origin
                    (at_c_p5)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #53196: origin
                    (at_c_p9)

                    ; #65055: origin
                    (not_at_c_p5)

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))

                    ; #52723: <==negation-removal== 65055 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11)
                           (not (leader_c)))
        :effect (and
                    ; #71577: origin
                    (at_c_p11)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #78581: origin
                    (at_c_p3)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58337: origin
                    (at_c_p4)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52723: origin
                    (at_c_p5)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #53196: origin
                    (at_c_p9)

                    ; #78826: origin
                    (not_at_c_p6)

                    ; #26364: <==negation-removal== 78826 (pos)
                    (not (at_c_p6))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #67231: origin
                    (not_at_c_p7)

                    ; #71577: origin
                    (at_c_p11)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #67231: origin
                    (not_at_c_p7)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #58337: origin
                    (at_c_p4)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52723: origin
                    (at_c_p5)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #53196: origin
                    (at_c_p9)

                    ; #67231: origin
                    (not_at_c_p7)

                    ; #42796: <==negation-removal== 67231 (pos)
                    (not (at_c_p7))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #68636: origin
                    (not_at_c_p8)

                    ; #71577: origin
                    (at_c_p11)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #68636: origin
                    (not_at_c_p8)

                    ; #78581: origin
                    (at_c_p3)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #58337: origin
                    (at_c_p4)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #52723: origin
                    (at_c_p5)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #53196: origin
                    (at_c_p9)

                    ; #68636: origin
                    (not_at_c_p8)

                    ; #14439: <==negation-removal== 68636 (pos)
                    (not (at_c_p8))

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #41516: origin
                    (at_c_p1)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #51399: <==negation-removal== 41516 (pos)
                    (not (not_at_c_p1))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #41368: origin
                    (at_c_p10)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #16070: <==negation-removal== 41368 (pos)
                    (not (not_at_c_p10))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #45943: origin
                    (not_at_c_p9)

                    ; #71577: origin
                    (at_c_p11)

                    ; #50975: <==negation-removal== 71577 (pos)
                    (not (not_at_c_p11))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #11574: origin
                    (at_c_p12)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))

                    ; #70958: <==negation-removal== 11574 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13208: origin
                    (at_c_p2)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #48256: <==negation-removal== 13208 (pos)
                    (not (not_at_c_p2))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #45943: origin
                    (not_at_c_p9)

                    ; #78581: origin
                    (at_c_p3)

                    ; #36567: <==negation-removal== 78581 (pos)
                    (not (not_at_c_p3))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #45943: origin
                    (not_at_c_p9)

                    ; #58337: origin
                    (at_c_p4)

                    ; #35975: <==negation-removal== 58337 (pos)
                    (not (not_at_c_p4))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #45943: origin
                    (not_at_c_p9)

                    ; #52723: origin
                    (at_c_p5)

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))

                    ; #65055: <==negation-removal== 52723 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26364: origin
                    (at_c_p6)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))

                    ; #78826: <==negation-removal== 26364 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #42796: origin
                    (at_c_p7)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))

                    ; #67231: <==negation-removal== 42796 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #14439: origin
                    (at_c_p8)

                    ; #45943: origin
                    (not_at_c_p9)

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))

                    ; #68636: <==negation-removal== 14439 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #45943: origin
                    (not_at_c_p9)

                    ; #53196: origin
                    (at_c_p9)

                    ; #45943: <==negation-removal== 53196 (pos)
                    (not (not_at_c_p9))

                    ; #53196: <==negation-removal== 45943 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (at_d_p10)
                           (succ_p10_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (at_d_p10)
                           (succ_p10_p10)
                           (not (leader_d)))
        :effect (and
                    ; #56632: origin
                    (not_at_d_p10)

                    ; #87148: origin
                    (at_d_p10)

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (at_d_p10)
                           (succ_p10_p11)
                           (not (leader_d)))
        :effect (and
                    ; #56632: origin
                    (not_at_d_p10)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (at_d_p10)
                           (succ_p10_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5)
                           (not (leader_d)))
        :effect (and
                    ; #56632: origin
                    (not_at_d_p10)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (at_d_p10)
                           (succ_p10_p6)
                           (not (leader_d)))
        :effect (and
                    ; #56632: origin
                    (not_at_d_p10)

                    ; #69212: origin
                    (at_d_p6)

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8)
                           (not (leader_d)))
        :effect (and
                    ; #56632: origin
                    (not_at_d_p10)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (at_d_p10)
                           (succ_p10_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #56632: origin
                    (not_at_d_p10)

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))

                    ; #87148: <==negation-removal== 56632 (pos)
                    (not (at_d_p10))))

    (:action move_d_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #54756: origin
                    (at_d_p1)

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #87148: origin
                    (at_d_p10)

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #47887: origin
                    (at_d_p12)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #21004: origin
                    (at_d_p2)

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #11879: origin
                    (at_d_p3)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #36238: origin
                    (at_d_p4)

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #69212: origin
                    (at_d_p6)

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #50253: origin
                    (at_d_p7)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10819: origin
                    (not_at_d_p11)

                    ; #13029: origin
                    (at_d_p9)

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))

                    ; #80083: <==negation-removal== 10819 (pos)
                    (not (at_d_p11))))

    (:action move_d_p12_p1
        :precondition (and (at_d_p12)
                           (succ_p12_p1)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #54756: origin
                    (at_d_p1)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (at_d_p12)
                           (succ_p12_p10)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #87148: origin
                    (at_d_p10)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (at_d_p12)
                           (succ_p12_p11)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p12
        :precondition (and (at_d_p12)
                           (succ_p12_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (at_d_p12)
                           (succ_p12_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (at_d_p12)
                           (succ_p12_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p4
        :precondition (and (at_d_p12)
                           (succ_p12_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (at_d_p12)
                           (succ_p12_p5)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (at_d_p12)
                           (succ_p12_p6)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #69212: origin
                    (at_d_p6)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (at_d_p12)
                           (succ_p12_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (at_d_p12)
                           (succ_p12_p8)
                           (not (leader_d)))
        :effect (and
                    ; #53286: origin
                    (not_at_d_p12)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p9
        :precondition (and (at_d_p12)
                           (succ_p12_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #53286: origin
                    (not_at_d_p12)

                    ; #47887: <==negation-removal== 53286 (pos)
                    (not (at_d_p12))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #56856: origin
                    (not_at_d_p1)

                    ; #87148: origin
                    (at_d_p10)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11)
                           (not (leader_d)))
        :effect (and
                    ; #56856: origin
                    (not_at_d_p1)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #56856: origin
                    (not_at_d_p1)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #56856: origin
                    (not_at_d_p1)

                    ; #69212: origin
                    (at_d_p6)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #56856: origin
                    (not_at_d_p1)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #56856: origin
                    (not_at_d_p1)

                    ; #54756: <==negation-removal== 56856 (pos)
                    (not (at_d_p1))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #78894: origin
                    (not_at_d_p2)

                    ; #87148: origin
                    (at_d_p10)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (at_d_p2)
                           (succ_p2_p11)
                           (not (leader_d)))
        :effect (and
                    ; #78894: origin
                    (not_at_d_p2)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (at_d_p2)
                           (succ_p2_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #58892: origin
                    (at_d_p5)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #69212: origin
                    (at_d_p6)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8)
                           (not (leader_d)))
        :effect (and
                    ; #67950: origin
                    (at_d_p8)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #78894: origin
                    (not_at_d_p2)

                    ; #21004: <==negation-removal== 78894 (pos)
                    (not (at_d_p2))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #54756: origin
                    (at_d_p1)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (at_d_p3)
                           (succ_p3_p10)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #87148: origin
                    (at_d_p10)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p12
        :precondition (and (at_d_p3)
                           (succ_p3_p12)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #47887: origin
                    (at_d_p12)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #21004: origin
                    (at_d_p2)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #12324: origin
                    (not_at_d_p3)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (at_d_p3)
                           (succ_p3_p4)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #36238: origin
                    (at_d_p4)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p3_p5
        :precondition (and (at_d_p3)
                           (succ_p3_p5)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #58892: origin
                    (at_d_p5)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p3_p6
        :precondition (and (at_d_p3)
                           (succ_p3_p6)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #69212: origin
                    (at_d_p6)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (at_d_p3)
                           (succ_p3_p7)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #50253: origin
                    (at_d_p7)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #67950: origin
                    (at_d_p8)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p3_p9
        :precondition (and (at_d_p3)
                           (succ_p3_p9)
                           (not (leader_d)))
        :effect (and
                    ; #12324: origin
                    (not_at_d_p3)

                    ; #13029: origin
                    (at_d_p9)

                    ; #11879: <==negation-removal== 12324 (pos)
                    (not (at_d_p3))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10)
                           (not (leader_d)))
        :effect (and
                    ; #77328: origin
                    (not_at_d_p4)

                    ; #87148: origin
                    (at_d_p10)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11)
                           (not (leader_d)))
        :effect (and
                    ; #77328: origin
                    (not_at_d_p4)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5)
                           (not (leader_d)))
        :effect (and
                    ; #58892: origin
                    (at_d_p5)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6)
                           (not (leader_d)))
        :effect (and
                    ; #69212: origin
                    (at_d_p6)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #67950: origin
                    (at_d_p8)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #77328: origin
                    (not_at_d_p4)

                    ; #36238: <==negation-removal== 77328 (pos)
                    (not (at_d_p4))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #54756: origin
                    (at_d_p1)

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p10
        :precondition (and (at_d_p5)
                           (succ_p5_p10)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #87148: origin
                    (at_d_p10)

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #47887: origin
                    (at_d_p12)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (at_d_p5)
                           (succ_p5_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #43257: origin
                    (not_at_d_p5)

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #43257: origin
                    (not_at_d_p5)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #43257: origin
                    (not_at_d_p5)

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #69212: origin
                    (at_d_p6)

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #50253: origin
                    (at_d_p7)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43257: origin
                    (not_at_d_p5)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #43257: origin
                    (not_at_d_p5)

                    ; #58892: <==negation-removal== 43257 (pos)
                    (not (at_d_p5))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (at_d_p6)
                           (succ_p6_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (at_d_p6)
                           (succ_p6_p10)
                           (not (leader_d)))
        :effect (and
                    ; #76490: origin
                    (not_at_d_p6)

                    ; #87148: origin
                    (at_d_p10)

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (at_d_p6)
                           (succ_p6_p11)
                           (not (leader_d)))
        :effect (and
                    ; #76490: origin
                    (not_at_d_p6)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (at_d_p6)
                           (succ_p6_p12)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (at_d_p6)
                           (succ_p6_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (at_d_p6)
                           (succ_p6_p5)
                           (not (leader_d)))
        :effect (and
                    ; #58892: origin
                    (at_d_p5)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (at_d_p6)
                           (succ_p6_p6)
                           (not (leader_d)))
        :effect (and
                    ; #69212: origin
                    (at_d_p6)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (at_d_p6)
                           (succ_p6_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (at_d_p6)
                           (succ_p6_p8)
                           (not (leader_d)))
        :effect (and
                    ; #67950: origin
                    (at_d_p8)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #76490: origin
                    (not_at_d_p6)

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))

                    ; #69212: <==negation-removal== 76490 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #54756: origin
                    (at_d_p1)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #87148: origin
                    (at_d_p10)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #47887: origin
                    (at_d_p12)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #47254: origin
                    (not_at_d_p7)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #47254: origin
                    (not_at_d_p7)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #47254: origin
                    (not_at_d_p7)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #69212: origin
                    (at_d_p6)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #50253: origin
                    (at_d_p7)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #47254: origin
                    (not_at_d_p7)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #47254: origin
                    (not_at_d_p7)

                    ; #50253: <==negation-removal== 47254 (pos)
                    (not (at_d_p7))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #54756: origin
                    (at_d_p1)

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #87148: origin
                    (at_d_p10)

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #47887: origin
                    (at_d_p12)

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #43657: origin
                    (not_at_d_p8)

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #43657: origin
                    (not_at_d_p8)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #43657: origin
                    (not_at_d_p8)

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #58892: origin
                    (at_d_p5)

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #69212: origin
                    (at_d_p6)

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #50253: origin
                    (at_d_p7)

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #43657: origin
                    (not_at_d_p8)

                    ; #67950: origin
                    (at_d_p8)

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #43657: origin
                    (not_at_d_p8)

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))

                    ; #67950: <==negation-removal== 43657 (pos)
                    (not (at_d_p8))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1)
                           (not (leader_d)))
        :effect (and
                    ; #54756: origin
                    (at_d_p1)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #56856: <==negation-removal== 54756 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #64080: origin
                    (not_at_d_p9)

                    ; #87148: origin
                    (at_d_p10)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #56632: <==negation-removal== 87148 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11)
                           (not (leader_d)))
        :effect (and
                    ; #64080: origin
                    (not_at_d_p9)

                    ; #80083: origin
                    (at_d_p11)

                    ; #10819: <==negation-removal== 80083 (pos)
                    (not (not_at_d_p11))

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #47887: origin
                    (at_d_p12)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #53286: <==negation-removal== 47887 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #21004: origin
                    (at_d_p2)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #78894: <==negation-removal== 21004 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #11879: origin
                    (at_d_p3)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #12324: <==negation-removal== 11879 (pos)
                    (not (not_at_d_p3))

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4)
                           (not (leader_d)))
        :effect (and
                    ; #36238: origin
                    (at_d_p4)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #77328: <==negation-removal== 36238 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5)
                           (not (leader_d)))
        :effect (and
                    ; #58892: origin
                    (at_d_p5)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #43257: <==negation-removal== 58892 (pos)
                    (not (not_at_d_p5))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #64080: origin
                    (not_at_d_p9)

                    ; #69212: origin
                    (at_d_p6)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #76490: <==negation-removal== 69212 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7)
                           (not (leader_d)))
        :effect (and
                    ; #50253: origin
                    (at_d_p7)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #47254: <==negation-removal== 50253 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8)
                           (not (leader_d)))
        :effect (and
                    ; #64080: origin
                    (not_at_d_p9)

                    ; #67950: origin
                    (at_d_p8)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #43657: <==negation-removal== 67950 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9)
                           (not (leader_d)))
        :effect (and
                    ; #13029: origin
                    (at_d_p9)

                    ; #64080: origin
                    (not_at_d_p9)

                    ; #13029: <==negation-removal== 64080 (pos)
                    (not (at_d_p9))

                    ; #64080: <==negation-removal== 13029 (pos)
                    (not (not_at_d_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #15477: <==commonly_known== 87084 (pos)
                    (Ba_checked_p10)

                    ; #16470: <==commonly_known== 71205 (neg)
                    (Pa_checked_p10)

                    ; #19479: <==commonly_known== 71205 (neg)
                    (Pb_checked_p10)

                    ; #23266: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #36874: <==commonly_known== 71205 (neg)
                    (Pc_checked_p10)

                    ; #55065: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #68454: <==commonly_known== 87084 (pos)
                    (Bd_checked_p10)

                    ; #68458: <==commonly_known== 87084 (pos)
                    (Bc_checked_p10)

                    ; #69885: <==closure== 55065 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #77992: <==closure== 23266 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #84531: <==commonly_known== 71205 (neg)
                    (Pd_checked_p10)

                    ; #85091: <==commonly_known== 87084 (pos)
                    (Bb_checked_p10)

                    ; #87084: origin
                    (checked_p10)

                    ; #10218: <==uncertain_firing== 55065 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #21216: <==negation-removal== 16470 (pos)
                    (not (Ba_not_checked_p10))

                    ; #30790: <==negation-removal== 85091 (pos)
                    (not (Pb_not_checked_p10))

                    ; #35715: <==uncertain_firing== 69885 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #35990: <==negation-removal== 15477 (pos)
                    (not (Pa_not_checked_p10))

                    ; #38008: <==negation-removal== 68454 (pos)
                    (not (Pd_not_checked_p10))

                    ; #41652: <==negation-removal== 68458 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42296: <==negation-removal== 84531 (pos)
                    (not (Bd_not_checked_p10))

                    ; #50703: <==uncertain_firing== 77992 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #50935: <==negation-removal== 69885 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #56609: <==uncertain_firing== 23266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #57391: <==negation-removal== 55065 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #57731: <==negation-removal== 19479 (pos)
                    (not (Bb_not_checked_p10))

                    ; #62273: <==negation-removal== 77992 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #66005: <==negation-removal== 36874 (pos)
                    (not (Bc_not_checked_p10))

                    ; #71205: <==negation-removal== 87084 (pos)
                    (not (not_checked_p10))

                    ; #77056: <==negation-removal== 23266 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #22363: <==commonly_known== 54854 (pos)
                    (Bb_checked_p11)

                    ; #26294: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #31848: <==commonly_known== 26810 (neg)
                    (Pa_checked_p11)

                    ; #44631: <==commonly_known== 54854 (pos)
                    (Bd_checked_p11)

                    ; #51684: <==commonly_known== 54854 (pos)
                    (Ba_checked_p11)

                    ; #52691: <==commonly_known== 26810 (neg)
                    (Pd_checked_p11)

                    ; #54854: origin
                    (checked_p11)

                    ; #60569: <==closure== 26294 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #61194: <==closure== 69450 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #69450: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #82068: <==commonly_known== 26810 (neg)
                    (Pc_checked_p11)

                    ; #88423: <==commonly_known== 26810 (neg)
                    (Pb_checked_p11)

                    ; #91461: <==commonly_known== 54854 (pos)
                    (Bc_checked_p11)

                    ; #12990: <==negation-removal== 82068 (pos)
                    (not (Bc_not_checked_p11))

                    ; #21609: <==negation-removal== 51684 (pos)
                    (not (Pa_not_checked_p11))

                    ; #24871: <==negation-removal== 61194 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26810: <==negation-removal== 54854 (pos)
                    (not (not_checked_p11))

                    ; #28699: <==uncertain_firing== 60569 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #43729: <==negation-removal== 88423 (pos)
                    (not (Bb_not_checked_p11))

                    ; #44534: <==uncertain_firing== 61194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #44954: <==negation-removal== 69450 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #52265: <==negation-removal== 91461 (pos)
                    (not (Pc_not_checked_p11))

                    ; #57782: <==negation-removal== 31848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #61726: <==uncertain_firing== 26294 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #65787: <==negation-removal== 26294 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #67102: <==negation-removal== 44631 (pos)
                    (not (Pd_not_checked_p11))

                    ; #67523: <==uncertain_firing== 69450 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #68101: <==negation-removal== 52691 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69508: <==negation-removal== 22363 (pos)
                    (not (Pb_not_checked_p11))

                    ; #80770: <==negation-removal== 60569 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #14706: <==commonly_known== 70807 (pos)
                    (Bb_checked_p12)

                    ; #15009: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #19077: <==commonly_known== 70807 (pos)
                    (Bc_checked_p12)

                    ; #19750: <==commonly_known== 50954 (neg)
                    (Pc_checked_p12)

                    ; #23866: <==commonly_known== 50954 (neg)
                    (Pd_checked_p12)

                    ; #32548: <==commonly_known== 50954 (neg)
                    (Pb_checked_p12)

                    ; #50389: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #70807: origin
                    (checked_p12)

                    ; #76232: <==commonly_known== 50954 (neg)
                    (Pa_checked_p12)

                    ; #78705: <==commonly_known== 70807 (pos)
                    (Bd_checked_p12)

                    ; #79125: <==closure== 15009 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #83018: <==commonly_known== 70807 (pos)
                    (Ba_checked_p12)

                    ; #84712: <==closure== 50389 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #15638: <==negation-removal== 14706 (pos)
                    (not (Pb_not_checked_p12))

                    ; #16171: <==negation-removal== 79125 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #30078: <==uncertain_firing== 15009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #38910: <==negation-removal== 76232 (pos)
                    (not (Ba_not_checked_p12))

                    ; #40165: <==uncertain_firing== 50389 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #40848: <==negation-removal== 78705 (pos)
                    (not (Pd_not_checked_p12))

                    ; #46877: <==negation-removal== 19750 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50954: <==negation-removal== 70807 (pos)
                    (not (not_checked_p12))

                    ; #54696: <==negation-removal== 32548 (pos)
                    (not (Bb_not_checked_p12))

                    ; #59688: <==negation-removal== 19077 (pos)
                    (not (Pc_not_checked_p12))

                    ; #70217: <==negation-removal== 84712 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #72463: <==negation-removal== 23866 (pos)
                    (not (Bd_not_checked_p12))

                    ; #72933: <==uncertain_firing== 79125 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #77360: <==negation-removal== 15009 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #82934: <==negation-removal== 83018 (pos)
                    (not (Pa_not_checked_p12))

                    ; #84134: <==negation-removal== 50389 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #85900: <==uncertain_firing== 84712 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #19639: <==commonly_known== 73423 (neg)
                    (Pa_checked_p1)

                    ; #22806: origin
                    (checked_p1)

                    ; #23073: <==commonly_known== 73423 (neg)
                    (Pb_checked_p1)

                    ; #36444: <==closure== 57245 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #41902: <==commonly_known== 22806 (pos)
                    (Bc_checked_p1)

                    ; #43463: <==commonly_known== 22806 (pos)
                    (Bb_checked_p1)

                    ; #57245: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #60725: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #61187: <==commonly_known== 22806 (pos)
                    (Bd_checked_p1)

                    ; #67924: <==commonly_known== 73423 (neg)
                    (Pd_checked_p1)

                    ; #78943: <==closure== 60725 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #86125: <==commonly_known== 73423 (neg)
                    (Pc_checked_p1)

                    ; #90357: <==commonly_known== 22806 (pos)
                    (Ba_checked_p1)

                    ; #32483: <==negation-removal== 67924 (pos)
                    (not (Bd_not_checked_p1))

                    ; #33359: <==negation-removal== 86125 (pos)
                    (not (Bc_not_checked_p1))

                    ; #40517: <==negation-removal== 36444 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45640: <==uncertain_firing== 57245 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #54083: <==negation-removal== 90357 (pos)
                    (not (Pa_not_checked_p1))

                    ; #58555: <==uncertain_firing== 78943 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63900: <==uncertain_firing== 60725 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65028: <==negation-removal== 57245 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #67195: <==negation-removal== 19639 (pos)
                    (not (Ba_not_checked_p1))

                    ; #69771: <==uncertain_firing== 36444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #72810: <==negation-removal== 78943 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #73311: <==negation-removal== 41902 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73423: <==negation-removal== 22806 (pos)
                    (not (not_checked_p1))

                    ; #77637: <==negation-removal== 43463 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78712: <==negation-removal== 60725 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #83405: <==negation-removal== 61187 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89937: <==negation-removal== 23073 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #11631: <==commonly_known== 87650 (neg)
                    (Pc_checked_p2)

                    ; #13485: <==commonly_known== 36820 (pos)
                    (Ba_checked_p2)

                    ; #19323: <==commonly_known== 87650 (neg)
                    (Pd_checked_p2)

                    ; #21679: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #33132: <==commonly_known== 36820 (pos)
                    (Bc_checked_p2)

                    ; #36820: origin
                    (checked_p2)

                    ; #41286: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #42342: <==commonly_known== 87650 (neg)
                    (Pb_checked_p2)

                    ; #47157: <==commonly_known== 87650 (neg)
                    (Pa_checked_p2)

                    ; #60761: <==commonly_known== 36820 (pos)
                    (Bb_checked_p2)

                    ; #71926: <==closure== 21679 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #74673: <==commonly_known== 36820 (pos)
                    (Bd_checked_p2)

                    ; #79981: <==closure== 41286 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #21049: <==negation-removal== 42342 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23567: <==negation-removal== 60761 (pos)
                    (not (Pb_not_checked_p2))

                    ; #28282: <==negation-removal== 41286 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34716: <==negation-removal== 79981 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #43472: <==negation-removal== 11631 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44620: <==negation-removal== 47157 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48126: <==uncertain_firing== 79981 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #48393: <==negation-removal== 19323 (pos)
                    (not (Bd_not_checked_p2))

                    ; #51530: <==negation-removal== 21679 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #55367: <==uncertain_firing== 21679 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #61373: <==negation-removal== 71926 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #62434: <==negation-removal== 13485 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64670: <==negation-removal== 33132 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72656: <==uncertain_firing== 41286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #77262: <==uncertain_firing== 71926 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #87650: <==negation-removal== 36820 (pos)
                    (not (not_checked_p2))

                    ; #90278: <==negation-removal== 74673 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #11102: <==commonly_known== 68720 (pos)
                    (Ba_checked_p3)

                    ; #11882: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #12114: <==commonly_known== 11335 (neg)
                    (Pa_checked_p3)

                    ; #24135: <==commonly_known== 11335 (neg)
                    (Pd_checked_p3)

                    ; #24616: <==commonly_known== 68720 (pos)
                    (Bc_checked_p3)

                    ; #31407: <==commonly_known== 68720 (pos)
                    (Bb_checked_p3)

                    ; #44196: <==commonly_known== 11335 (neg)
                    (Pb_checked_p3)

                    ; #58544: <==closure== 11882 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #68720: origin
                    (checked_p3)

                    ; #69424: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #75319: <==commonly_known== 11335 (neg)
                    (Pc_checked_p3)

                    ; #78163: <==closure== 69424 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #84578: <==commonly_known== 68720 (pos)
                    (Bd_checked_p3)

                    ; #11335: <==negation-removal== 68720 (pos)
                    (not (not_checked_p3))

                    ; #13930: <==negation-removal== 84578 (pos)
                    (not (Pd_not_checked_p3))

                    ; #14688: <==negation-removal== 78163 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #26487: <==uncertain_firing== 11882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #36486: <==negation-removal== 12114 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37783: <==negation-removal== 75319 (pos)
                    (not (Bc_not_checked_p3))

                    ; #49186: <==negation-removal== 11102 (pos)
                    (not (Pa_not_checked_p3))

                    ; #51113: <==negation-removal== 69424 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #59179: <==negation-removal== 24616 (pos)
                    (not (Pc_not_checked_p3))

                    ; #59543: <==uncertain_firing== 58544 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #61553: <==uncertain_firing== 69424 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #63504: <==uncertain_firing== 78163 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #64523: <==negation-removal== 31407 (pos)
                    (not (Pb_not_checked_p3))

                    ; #73344: <==negation-removal== 11882 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75614: <==negation-removal== 58544 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #86522: <==negation-removal== 44196 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87727: <==negation-removal== 24135 (pos)
                    (not (Bd_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #11574: <==closure== 30180 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #11942: <==closure== 12521 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #12521: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #24605: <==commonly_known== 28068 (neg)
                    (Pd_checked_p4)

                    ; #30180: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #34427: <==commonly_known== 28068 (neg)
                    (Pb_checked_p4)

                    ; #36033: <==commonly_known== 28068 (neg)
                    (Pc_checked_p4)

                    ; #49460: <==commonly_known== 63507 (pos)
                    (Ba_checked_p4)

                    ; #52889: <==commonly_known== 63507 (pos)
                    (Bc_checked_p4)

                    ; #53949: <==commonly_known== 63507 (pos)
                    (Bb_checked_p4)

                    ; #63507: origin
                    (checked_p4)

                    ; #64199: <==commonly_known== 28068 (neg)
                    (Pa_checked_p4)

                    ; #71495: <==commonly_known== 63507 (pos)
                    (Bd_checked_p4)

                    ; #14380: <==negation-removal== 24605 (pos)
                    (not (Bd_not_checked_p4))

                    ; #25971: <==negation-removal== 34427 (pos)
                    (not (Bb_not_checked_p4))

                    ; #28068: <==negation-removal== 63507 (pos)
                    (not (not_checked_p4))

                    ; #31092: <==negation-removal== 30180 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #33288: <==negation-removal== 36033 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37293: <==negation-removal== 52889 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38539: <==uncertain_firing== 12521 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #53085: <==negation-removal== 11574 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #62235: <==uncertain_firing== 30180 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #69378: <==uncertain_firing== 11574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #80810: <==uncertain_firing== 11942 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #81449: <==negation-removal== 71495 (pos)
                    (not (Pd_not_checked_p4))

                    ; #82407: <==negation-removal== 12521 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #82848: <==negation-removal== 11942 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #84542: <==negation-removal== 53949 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85147: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86180: <==negation-removal== 49460 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #10026: <==commonly_known== 51238 (pos)
                    (Ba_checked_p5)

                    ; #21292: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #38253: <==commonly_known== 15034 (neg)
                    (Pa_checked_p5)

                    ; #40479: <==commonly_known== 51238 (pos)
                    (Bb_checked_p5)

                    ; #43814: <==commonly_known== 15034 (neg)
                    (Pd_checked_p5)

                    ; #46688: <==commonly_known== 15034 (neg)
                    (Pc_checked_p5)

                    ; #50423: <==commonly_known== 51238 (pos)
                    (Bd_checked_p5)

                    ; #51238: origin
                    (checked_p5)

                    ; #52537: <==closure== 59887 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #59887: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #78945: <==commonly_known== 15034 (neg)
                    (Pb_checked_p5)

                    ; #80389: <==closure== 21292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #88180: <==commonly_known== 51238 (pos)
                    (Bc_checked_p5)

                    ; #15034: <==negation-removal== 51238 (pos)
                    (not (not_checked_p5))

                    ; #17920: <==negation-removal== 59887 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #22832: <==negation-removal== 40479 (pos)
                    (not (Pb_not_checked_p5))

                    ; #35795: <==negation-removal== 38253 (pos)
                    (not (Ba_not_checked_p5))

                    ; #39955: <==uncertain_firing== 59887 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #45872: <==negation-removal== 21292 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #51975: <==negation-removal== 43814 (pos)
                    (not (Bd_not_checked_p5))

                    ; #56631: <==negation-removal== 46688 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58605: <==uncertain_firing== 80389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #59454: <==negation-removal== 80389 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #59711: <==negation-removal== 88180 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61061: <==negation-removal== 10026 (pos)
                    (not (Pa_not_checked_p5))

                    ; #62336: <==uncertain_firing== 21292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #69390: <==negation-removal== 52537 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #70445: <==uncertain_firing== 52537 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #82586: <==negation-removal== 50423 (pos)
                    (not (Pd_not_checked_p5))

                    ; #85412: <==negation-removal== 78945 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #14330: <==commonly_known== 21035 (pos)
                    (Bd_checked_p6)

                    ; #15578: <==commonly_known== 32828 (neg)
                    (Pd_checked_p6)

                    ; #21035: origin
                    (checked_p6)

                    ; #23586: <==commonly_known== 32828 (neg)
                    (Pc_checked_p6)

                    ; #27737: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #38937: <==commonly_known== 21035 (pos)
                    (Bc_checked_p6)

                    ; #48128: <==commonly_known== 21035 (pos)
                    (Bb_checked_p6)

                    ; #49086: <==closure== 50711 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #50711: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #52651: <==commonly_known== 32828 (neg)
                    (Pb_checked_p6)

                    ; #58200: <==closure== 27737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #71976: <==commonly_known== 32828 (neg)
                    (Pa_checked_p6)

                    ; #74966: <==commonly_known== 21035 (pos)
                    (Ba_checked_p6)

                    ; #17501: <==uncertain_firing== 49086 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #18431: <==uncertain_firing== 27737 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #20589: <==negation-removal== 27737 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #26243: <==uncertain_firing== 50711 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #32828: <==negation-removal== 21035 (pos)
                    (not (not_checked_p6))

                    ; #33291: <==negation-removal== 23586 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39206: <==uncertain_firing== 58200 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #44234: <==negation-removal== 15578 (pos)
                    (not (Bd_not_checked_p6))

                    ; #45690: <==negation-removal== 49086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #47934: <==negation-removal== 38937 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51650: <==negation-removal== 52651 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54352: <==negation-removal== 14330 (pos)
                    (not (Pd_not_checked_p6))

                    ; #59576: <==negation-removal== 71976 (pos)
                    (not (Ba_not_checked_p6))

                    ; #63940: <==negation-removal== 58200 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #72511: <==negation-removal== 50711 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #82823: <==negation-removal== 48128 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88621: <==negation-removal== 74966 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #10215: <==commonly_known== 25830 (pos)
                    (Bd_checked_p7)

                    ; #22659: <==commonly_known== 54862 (neg)
                    (Pc_checked_p7)

                    ; #25830: origin
                    (checked_p7)

                    ; #28226: <==commonly_known== 54862 (neg)
                    (Pa_checked_p7)

                    ; #44264: <==closure== 58440 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #49802: <==commonly_known== 54862 (neg)
                    (Pd_checked_p7)

                    ; #53210: <==commonly_known== 25830 (pos)
                    (Bc_checked_p7)

                    ; #53803: <==commonly_known== 25830 (pos)
                    (Ba_checked_p7)

                    ; #57113: <==commonly_known== 54862 (neg)
                    (Pb_checked_p7)

                    ; #58440: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #79137: <==closure== 79842 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #79842: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #88516: <==commonly_known== 25830 (pos)
                    (Bb_checked_p7)

                    ; #13968: <==uncertain_firing== 58440 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #15297: <==negation-removal== 49802 (pos)
                    (not (Bd_not_checked_p7))

                    ; #27488: <==negation-removal== 88516 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27900: <==negation-removal== 22659 (pos)
                    (not (Bc_not_checked_p7))

                    ; #30335: <==negation-removal== 44264 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #40193: <==negation-removal== 10215 (pos)
                    (not (Pd_not_checked_p7))

                    ; #52265: <==negation-removal== 53210 (pos)
                    (not (Pc_not_checked_p7))

                    ; #52743: <==negation-removal== 79842 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54862: <==negation-removal== 25830 (pos)
                    (not (not_checked_p7))

                    ; #56662: <==negation-removal== 79137 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #57639: <==uncertain_firing== 44264 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #61498: <==negation-removal== 58440 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #62985: <==negation-removal== 57113 (pos)
                    (not (Bb_not_checked_p7))

                    ; #73017: <==uncertain_firing== 79842 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #80819: <==uncertain_firing== 79137 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #81662: <==negation-removal== 28226 (pos)
                    (not (Ba_not_checked_p7))

                    ; #88142: <==negation-removal== 53803 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #18991: origin
                    (checked_p8)

                    ; #27437: <==commonly_known== 29016 (neg)
                    (Pd_checked_p8)

                    ; #28750: <==commonly_known== 18991 (pos)
                    (Bc_checked_p8)

                    ; #31994: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #32433: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #38409: <==commonly_known== 29016 (neg)
                    (Pa_checked_p8)

                    ; #39457: <==commonly_known== 18991 (pos)
                    (Ba_checked_p8)

                    ; #56287: <==commonly_known== 18991 (pos)
                    (Bd_checked_p8)

                    ; #61780: <==commonly_known== 29016 (neg)
                    (Pb_checked_p8)

                    ; #62549: <==commonly_known== 29016 (neg)
                    (Pc_checked_p8)

                    ; #62907: <==closure== 32433 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #80384: <==closure== 31994 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #89721: <==commonly_known== 18991 (pos)
                    (Bb_checked_p8)

                    ; #10622: <==negation-removal== 28750 (pos)
                    (not (Pc_not_checked_p8))

                    ; #11132: <==uncertain_firing== 32433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #23507: <==negation-removal== 39457 (pos)
                    (not (Pa_not_checked_p8))

                    ; #27762: <==uncertain_firing== 80384 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #29016: <==negation-removal== 18991 (pos)
                    (not (not_checked_p8))

                    ; #33694: <==negation-removal== 38409 (pos)
                    (not (Ba_not_checked_p8))

                    ; #36902: <==uncertain_firing== 62907 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #37293: <==uncertain_firing== 31994 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #38725: <==negation-removal== 89721 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44473: <==negation-removal== 61780 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45046: <==negation-removal== 62549 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50341: <==negation-removal== 32433 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #53272: <==negation-removal== 27437 (pos)
                    (not (Bd_not_checked_p8))

                    ; #54613: <==negation-removal== 80384 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #65076: <==negation-removal== 31994 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #91662: <==negation-removal== 62907 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #98372: <==negation-removal== 56287 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #11281: <==commonly_known== 81518 (pos)
                    (Bc_checked_p9)

                    ; #15256: <==closure== 62671 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #20711: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #27571: <==commonly_known== 69773 (neg)
                    (Pd_checked_p9)

                    ; #27622: <==closure== 20711 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #42334: <==commonly_known== 81518 (pos)
                    (Bb_checked_p9)

                    ; #48481: <==commonly_known== 81518 (pos)
                    (Ba_checked_p9)

                    ; #62671: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #69604: <==commonly_known== 69773 (neg)
                    (Pb_checked_p9)

                    ; #75504: <==commonly_known== 69773 (neg)
                    (Pc_checked_p9)

                    ; #81518: origin
                    (checked_p9)

                    ; #84743: <==commonly_known== 81518 (pos)
                    (Bd_checked_p9)

                    ; #85923: <==commonly_known== 69773 (neg)
                    (Pa_checked_p9)

                    ; #13766: <==negation-removal== 48481 (pos)
                    (not (Pa_not_checked_p9))

                    ; #16880: <==negation-removal== 62671 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #16886: <==uncertain_firing== 20711 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #18956: <==negation-removal== 20711 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #24424: <==negation-removal== 15256 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #39389: <==negation-removal== 85923 (pos)
                    (not (Ba_not_checked_p9))

                    ; #49660: <==negation-removal== 42334 (pos)
                    (not (Pb_not_checked_p9))

                    ; #50655: <==negation-removal== 27571 (pos)
                    (not (Bd_not_checked_p9))

                    ; #54362: <==negation-removal== 84743 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54710: <==negation-removal== 69604 (pos)
                    (not (Bb_not_checked_p9))

                    ; #66074: <==uncertain_firing== 27622 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #69773: <==negation-removal== 81518 (pos)
                    (not (not_checked_p9))

                    ; #72034: <==uncertain_firing== 62671 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75303: <==negation-removal== 75504 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78251: <==negation-removal== 11281 (pos)
                    (not (Pc_not_checked_p9))

                    ; #85048: <==negation-removal== 27622 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #91692: <==uncertain_firing== 15256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #15477: <==commonly_known== 87084 (pos)
                    (Ba_checked_p10)

                    ; #16470: <==commonly_known== 71205 (neg)
                    (Pa_checked_p10)

                    ; #19479: <==commonly_known== 71205 (neg)
                    (Pb_checked_p10)

                    ; #23368: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #36874: <==commonly_known== 71205 (neg)
                    (Pc_checked_p10)

                    ; #41816: <==closure== 97820 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #55466: <==closure== 23368 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #68454: <==commonly_known== 87084 (pos)
                    (Bd_checked_p10)

                    ; #68458: <==commonly_known== 87084 (pos)
                    (Bc_checked_p10)

                    ; #84531: <==commonly_known== 71205 (neg)
                    (Pd_checked_p10)

                    ; #85091: <==commonly_known== 87084 (pos)
                    (Bb_checked_p10)

                    ; #87084: origin
                    (checked_p10)

                    ; #97820: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #17690: <==uncertain_firing== 97820 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #21216: <==negation-removal== 16470 (pos)
                    (not (Ba_not_checked_p10))

                    ; #30790: <==negation-removal== 85091 (pos)
                    (not (Pb_not_checked_p10))

                    ; #35990: <==negation-removal== 15477 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37015: <==negation-removal== 23368 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #37674: <==uncertain_firing== 41816 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #37872: <==negation-removal== 97820 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #38008: <==negation-removal== 68454 (pos)
                    (not (Pd_not_checked_p10))

                    ; #38186: <==uncertain_firing== 23368 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #40826: <==uncertain_firing== 55466 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #41652: <==negation-removal== 68458 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42296: <==negation-removal== 84531 (pos)
                    (not (Bd_not_checked_p10))

                    ; #57731: <==negation-removal== 19479 (pos)
                    (not (Bb_not_checked_p10))

                    ; #61020: <==negation-removal== 55466 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #66005: <==negation-removal== 36874 (pos)
                    (not (Bc_not_checked_p10))

                    ; #71205: <==negation-removal== 87084 (pos)
                    (not (not_checked_p10))

                    ; #75788: <==negation-removal== 41816 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #19190: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #22363: <==commonly_known== 54854 (pos)
                    (Bb_checked_p11)

                    ; #31848: <==commonly_known== 26810 (neg)
                    (Pa_checked_p11)

                    ; #44631: <==commonly_known== 54854 (pos)
                    (Bd_checked_p11)

                    ; #51684: <==commonly_known== 54854 (pos)
                    (Ba_checked_p11)

                    ; #52691: <==commonly_known== 26810 (neg)
                    (Pd_checked_p11)

                    ; #54854: origin
                    (checked_p11)

                    ; #57160: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #59881: <==closure== 19190 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #73895: <==closure== 57160 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #82068: <==commonly_known== 26810 (neg)
                    (Pc_checked_p11)

                    ; #88423: <==commonly_known== 26810 (neg)
                    (Pb_checked_p11)

                    ; #91461: <==commonly_known== 54854 (pos)
                    (Bc_checked_p11)

                    ; #12114: <==uncertain_firing== 73895 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #12990: <==negation-removal== 82068 (pos)
                    (not (Bc_not_checked_p11))

                    ; #21609: <==negation-removal== 51684 (pos)
                    (not (Pa_not_checked_p11))

                    ; #26652: <==uncertain_firing== 57160 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #26810: <==negation-removal== 54854 (pos)
                    (not (not_checked_p11))

                    ; #30696: <==negation-removal== 73895 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #36022: <==negation-removal== 57160 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #43729: <==negation-removal== 88423 (pos)
                    (not (Bb_not_checked_p11))

                    ; #52265: <==negation-removal== 91461 (pos)
                    (not (Pc_not_checked_p11))

                    ; #54745: <==negation-removal== 59881 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57782: <==negation-removal== 31848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #66616: <==negation-removal== 19190 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #67102: <==negation-removal== 44631 (pos)
                    (not (Pd_not_checked_p11))

                    ; #68101: <==negation-removal== 52691 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69508: <==negation-removal== 22363 (pos)
                    (not (Pb_not_checked_p11))

                    ; #88791: <==uncertain_firing== 19190 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #90722: <==uncertain_firing== 59881 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #11090: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #14706: <==commonly_known== 70807 (pos)
                    (Bb_checked_p12)

                    ; #19077: <==commonly_known== 70807 (pos)
                    (Bc_checked_p12)

                    ; #19750: <==commonly_known== 50954 (neg)
                    (Pc_checked_p12)

                    ; #23866: <==commonly_known== 50954 (neg)
                    (Pd_checked_p12)

                    ; #32548: <==commonly_known== 50954 (neg)
                    (Pb_checked_p12)

                    ; #49527: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #59643: <==closure== 49527 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #70807: origin
                    (checked_p12)

                    ; #76232: <==commonly_known== 50954 (neg)
                    (Pa_checked_p12)

                    ; #78705: <==commonly_known== 70807 (pos)
                    (Bd_checked_p12)

                    ; #83018: <==commonly_known== 70807 (pos)
                    (Ba_checked_p12)

                    ; #90778: <==closure== 11090 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #10267: <==negation-removal== 59643 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #15638: <==negation-removal== 14706 (pos)
                    (not (Pb_not_checked_p12))

                    ; #18597: <==uncertain_firing== 90778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #31822: <==negation-removal== 90778 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #32483: <==uncertain_firing== 49527 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #38910: <==negation-removal== 76232 (pos)
                    (not (Ba_not_checked_p12))

                    ; #40848: <==negation-removal== 78705 (pos)
                    (not (Pd_not_checked_p12))

                    ; #41882: <==uncertain_firing== 11090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #46877: <==negation-removal== 19750 (pos)
                    (not (Bc_not_checked_p12))

                    ; #49567: <==negation-removal== 11090 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #50954: <==negation-removal== 70807 (pos)
                    (not (not_checked_p12))

                    ; #54696: <==negation-removal== 32548 (pos)
                    (not (Bb_not_checked_p12))

                    ; #59688: <==negation-removal== 19077 (pos)
                    (not (Pc_not_checked_p12))

                    ; #66919: <==negation-removal== 49527 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #72463: <==negation-removal== 23866 (pos)
                    (not (Bd_not_checked_p12))

                    ; #82934: <==negation-removal== 83018 (pos)
                    (not (Pa_not_checked_p12))

                    ; #86793: <==uncertain_firing== 59643 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #19639: <==commonly_known== 73423 (neg)
                    (Pa_checked_p1)

                    ; #22806: origin
                    (checked_p1)

                    ; #23073: <==commonly_known== 73423 (neg)
                    (Pb_checked_p1)

                    ; #35382: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #37820: <==closure== 87036 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #41902: <==commonly_known== 22806 (pos)
                    (Bc_checked_p1)

                    ; #43463: <==commonly_known== 22806 (pos)
                    (Bb_checked_p1)

                    ; #61187: <==commonly_known== 22806 (pos)
                    (Bd_checked_p1)

                    ; #67924: <==commonly_known== 73423 (neg)
                    (Pd_checked_p1)

                    ; #86125: <==commonly_known== 73423 (neg)
                    (Pc_checked_p1)

                    ; #87036: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #88375: <==closure== 35382 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #90357: <==commonly_known== 22806 (pos)
                    (Ba_checked_p1)

                    ; #21150: <==uncertain_firing== 87036 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26706: <==negation-removal== 37820 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #32483: <==negation-removal== 67924 (pos)
                    (not (Bd_not_checked_p1))

                    ; #33359: <==negation-removal== 86125 (pos)
                    (not (Bc_not_checked_p1))

                    ; #33856: <==uncertain_firing== 88375 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #48625: <==uncertain_firing== 35382 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53097: <==negation-removal== 88375 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #54083: <==negation-removal== 90357 (pos)
                    (not (Pa_not_checked_p1))

                    ; #67195: <==negation-removal== 19639 (pos)
                    (not (Ba_not_checked_p1))

                    ; #71835: <==negation-removal== 35382 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #73311: <==negation-removal== 41902 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73423: <==negation-removal== 22806 (pos)
                    (not (not_checked_p1))

                    ; #73609: <==uncertain_firing== 37820 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #77637: <==negation-removal== 43463 (pos)
                    (not (Pb_not_checked_p1))

                    ; #78046: <==negation-removal== 87036 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #83405: <==negation-removal== 61187 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89937: <==negation-removal== 23073 (pos)
                    (not (Bb_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #11631: <==commonly_known== 87650 (neg)
                    (Pc_checked_p2)

                    ; #12672: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #13485: <==commonly_known== 36820 (pos)
                    (Ba_checked_p2)

                    ; #19323: <==commonly_known== 87650 (neg)
                    (Pd_checked_p2)

                    ; #33132: <==commonly_known== 36820 (pos)
                    (Bc_checked_p2)

                    ; #36820: origin
                    (checked_p2)

                    ; #42342: <==commonly_known== 87650 (neg)
                    (Pb_checked_p2)

                    ; #47157: <==commonly_known== 87650 (neg)
                    (Pa_checked_p2)

                    ; #60761: <==commonly_known== 36820 (pos)
                    (Bb_checked_p2)

                    ; #61771: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #69879: <==closure== 61771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #74673: <==commonly_known== 36820 (pos)
                    (Bd_checked_p2)

                    ; #88744: <==closure== 12672 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #21049: <==negation-removal== 42342 (pos)
                    (not (Bb_not_checked_p2))

                    ; #22700: <==uncertain_firing== 69879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #23567: <==negation-removal== 60761 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26527: <==negation-removal== 88744 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30291: <==uncertain_firing== 88744 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #41019: <==uncertain_firing== 61771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #42650: <==negation-removal== 69879 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #43472: <==negation-removal== 11631 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44620: <==negation-removal== 47157 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48393: <==negation-removal== 19323 (pos)
                    (not (Bd_not_checked_p2))

                    ; #50449: <==negation-removal== 12672 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58155: <==uncertain_firing== 12672 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #62434: <==negation-removal== 13485 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64670: <==negation-removal== 33132 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72211: <==negation-removal== 61771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #87650: <==negation-removal== 36820 (pos)
                    (not (not_checked_p2))

                    ; #90278: <==negation-removal== 74673 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #11102: <==commonly_known== 68720 (pos)
                    (Ba_checked_p3)

                    ; #12114: <==commonly_known== 11335 (neg)
                    (Pa_checked_p3)

                    ; #24135: <==commonly_known== 11335 (neg)
                    (Pd_checked_p3)

                    ; #24616: <==commonly_known== 68720 (pos)
                    (Bc_checked_p3)

                    ; #31407: <==commonly_known== 68720 (pos)
                    (Bb_checked_p3)

                    ; #33278: <==closure== 88182 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #37217: <==closure== 71785 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #44196: <==commonly_known== 11335 (neg)
                    (Pb_checked_p3)

                    ; #68720: origin
                    (checked_p3)

                    ; #71785: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #75319: <==commonly_known== 11335 (neg)
                    (Pc_checked_p3)

                    ; #84578: <==commonly_known== 68720 (pos)
                    (Bd_checked_p3)

                    ; #88182: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11335: <==negation-removal== 68720 (pos)
                    (not (not_checked_p3))

                    ; #13930: <==negation-removal== 84578 (pos)
                    (not (Pd_not_checked_p3))

                    ; #14562: <==uncertain_firing== 37217 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #24011: <==uncertain_firing== 71785 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #33908: <==uncertain_firing== 33278 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #36486: <==negation-removal== 12114 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37783: <==negation-removal== 75319 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42281: <==negation-removal== 37217 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #49186: <==negation-removal== 11102 (pos)
                    (not (Pa_not_checked_p3))

                    ; #59179: <==negation-removal== 24616 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64523: <==negation-removal== 31407 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79866: <==negation-removal== 71785 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #83837: <==uncertain_firing== 88182 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #84129: <==negation-removal== 88182 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #86522: <==negation-removal== 44196 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87727: <==negation-removal== 24135 (pos)
                    (not (Bd_not_checked_p3))

                    ; #88464: <==negation-removal== 33278 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #16189: <==closure== 36044 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #24605: <==commonly_known== 28068 (neg)
                    (Pd_checked_p4)

                    ; #34427: <==commonly_known== 28068 (neg)
                    (Pb_checked_p4)

                    ; #36033: <==commonly_known== 28068 (neg)
                    (Pc_checked_p4)

                    ; #36044: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #49460: <==commonly_known== 63507 (pos)
                    (Ba_checked_p4)

                    ; #52889: <==commonly_known== 63507 (pos)
                    (Bc_checked_p4)

                    ; #53949: <==commonly_known== 63507 (pos)
                    (Bb_checked_p4)

                    ; #53987: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #54229: <==closure== 53987 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #63507: origin
                    (checked_p4)

                    ; #64199: <==commonly_known== 28068 (neg)
                    (Pa_checked_p4)

                    ; #71495: <==commonly_known== 63507 (pos)
                    (Bd_checked_p4)

                    ; #14380: <==negation-removal== 24605 (pos)
                    (not (Bd_not_checked_p4))

                    ; #18106: <==uncertain_firing== 53987 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #25971: <==negation-removal== 34427 (pos)
                    (not (Bb_not_checked_p4))

                    ; #28068: <==negation-removal== 63507 (pos)
                    (not (not_checked_p4))

                    ; #31083: <==negation-removal== 54229 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #33288: <==negation-removal== 36033 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37293: <==negation-removal== 52889 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50574: <==negation-removal== 36044 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #57230: <==uncertain_firing== 36044 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #61028: <==uncertain_firing== 54229 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #74660: <==negation-removal== 16189 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #80240: <==negation-removal== 53987 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #81449: <==negation-removal== 71495 (pos)
                    (not (Pd_not_checked_p4))

                    ; #84542: <==negation-removal== 53949 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85147: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86180: <==negation-removal== 49460 (pos)
                    (not (Pa_not_checked_p4))

                    ; #86830: <==uncertain_firing== 16189 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #10026: <==commonly_known== 51238 (pos)
                    (Ba_checked_p5)

                    ; #22680: <==closure== 44202 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #38253: <==commonly_known== 15034 (neg)
                    (Pa_checked_p5)

                    ; #40479: <==commonly_known== 51238 (pos)
                    (Bb_checked_p5)

                    ; #43814: <==commonly_known== 15034 (neg)
                    (Pd_checked_p5)

                    ; #44202: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #46688: <==commonly_known== 15034 (neg)
                    (Pc_checked_p5)

                    ; #50423: <==commonly_known== 51238 (pos)
                    (Bd_checked_p5)

                    ; #51238: origin
                    (checked_p5)

                    ; #65749: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #77594: <==closure== 65749 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #78945: <==commonly_known== 15034 (neg)
                    (Pb_checked_p5)

                    ; #88180: <==commonly_known== 51238 (pos)
                    (Bc_checked_p5)

                    ; #14991: <==uncertain_firing== 44202 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #15034: <==negation-removal== 51238 (pos)
                    (not (not_checked_p5))

                    ; #22832: <==negation-removal== 40479 (pos)
                    (not (Pb_not_checked_p5))

                    ; #23350: <==uncertain_firing== 22680 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #29229: <==negation-removal== 65749 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #35795: <==negation-removal== 38253 (pos)
                    (not (Ba_not_checked_p5))

                    ; #37394: <==negation-removal== 77594 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #45288: <==negation-removal== 44202 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #47287: <==negation-removal== 22680 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #51975: <==negation-removal== 43814 (pos)
                    (not (Bd_not_checked_p5))

                    ; #56631: <==negation-removal== 46688 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59711: <==negation-removal== 88180 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61061: <==negation-removal== 10026 (pos)
                    (not (Pa_not_checked_p5))

                    ; #63933: <==uncertain_firing== 77594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82586: <==negation-removal== 50423 (pos)
                    (not (Pd_not_checked_p5))

                    ; #85412: <==negation-removal== 78945 (pos)
                    (not (Bb_not_checked_p5))

                    ; #85801: <==uncertain_firing== 65749 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #13495: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14330: <==commonly_known== 21035 (pos)
                    (Bd_checked_p6)

                    ; #15578: <==commonly_known== 32828 (neg)
                    (Pd_checked_p6)

                    ; #21035: origin
                    (checked_p6)

                    ; #23586: <==commonly_known== 32828 (neg)
                    (Pc_checked_p6)

                    ; #24731: <==closure== 28019 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #28019: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #38937: <==commonly_known== 21035 (pos)
                    (Bc_checked_p6)

                    ; #48128: <==commonly_known== 21035 (pos)
                    (Bb_checked_p6)

                    ; #52651: <==commonly_known== 32828 (neg)
                    (Pb_checked_p6)

                    ; #71346: <==closure== 13495 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #71976: <==commonly_known== 32828 (neg)
                    (Pa_checked_p6)

                    ; #74966: <==commonly_known== 21035 (pos)
                    (Ba_checked_p6)

                    ; #13833: <==uncertain_firing== 24731 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #16183: <==negation-removal== 71346 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19673: <==uncertain_firing== 28019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20798: <==negation-removal== 28019 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #20799: <==negation-removal== 24731 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #32828: <==negation-removal== 21035 (pos)
                    (not (not_checked_p6))

                    ; #33291: <==negation-removal== 23586 (pos)
                    (not (Bc_not_checked_p6))

                    ; #44234: <==negation-removal== 15578 (pos)
                    (not (Bd_not_checked_p6))

                    ; #47934: <==negation-removal== 38937 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51650: <==negation-removal== 52651 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54352: <==negation-removal== 14330 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54362: <==uncertain_firing== 71346 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #59576: <==negation-removal== 71976 (pos)
                    (not (Ba_not_checked_p6))

                    ; #71132: <==negation-removal== 13495 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #82519: <==uncertain_firing== 13495 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #82823: <==negation-removal== 48128 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88621: <==negation-removal== 74966 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #10215: <==commonly_known== 25830 (pos)
                    (Bd_checked_p7)

                    ; #16234: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #22659: <==commonly_known== 54862 (neg)
                    (Pc_checked_p7)

                    ; #25830: origin
                    (checked_p7)

                    ; #28226: <==commonly_known== 54862 (neg)
                    (Pa_checked_p7)

                    ; #36930: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #38933: <==closure== 36930 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #49802: <==commonly_known== 54862 (neg)
                    (Pd_checked_p7)

                    ; #53210: <==commonly_known== 25830 (pos)
                    (Bc_checked_p7)

                    ; #53803: <==commonly_known== 25830 (pos)
                    (Ba_checked_p7)

                    ; #57113: <==commonly_known== 54862 (neg)
                    (Pb_checked_p7)

                    ; #88516: <==commonly_known== 25830 (pos)
                    (Bb_checked_p7)

                    ; #90036: <==closure== 16234 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #15297: <==negation-removal== 49802 (pos)
                    (not (Bd_not_checked_p7))

                    ; #16596: <==negation-removal== 16234 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #27488: <==negation-removal== 88516 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27900: <==negation-removal== 22659 (pos)
                    (not (Bc_not_checked_p7))

                    ; #37489: <==uncertain_firing== 90036 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #38115: <==uncertain_firing== 16234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #40193: <==negation-removal== 10215 (pos)
                    (not (Pd_not_checked_p7))

                    ; #41741: <==negation-removal== 38933 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #49459: <==negation-removal== 36930 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #52265: <==negation-removal== 53210 (pos)
                    (not (Pc_not_checked_p7))

                    ; #54862: <==negation-removal== 25830 (pos)
                    (not (not_checked_p7))

                    ; #59135: <==negation-removal== 90036 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #60095: <==uncertain_firing== 38933 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #62985: <==negation-removal== 57113 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64787: <==uncertain_firing== 36930 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #81662: <==negation-removal== 28226 (pos)
                    (not (Ba_not_checked_p7))

                    ; #88142: <==negation-removal== 53803 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #18991: origin
                    (checked_p8)

                    ; #27437: <==commonly_known== 29016 (neg)
                    (Pd_checked_p8)

                    ; #28750: <==commonly_known== 18991 (pos)
                    (Bc_checked_p8)

                    ; #35487: <==closure== 40663 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #38409: <==commonly_known== 29016 (neg)
                    (Pa_checked_p8)

                    ; #39457: <==commonly_known== 18991 (pos)
                    (Ba_checked_p8)

                    ; #40663: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #56287: <==commonly_known== 18991 (pos)
                    (Bd_checked_p8)

                    ; #61780: <==commonly_known== 29016 (neg)
                    (Pb_checked_p8)

                    ; #62549: <==commonly_known== 29016 (neg)
                    (Pc_checked_p8)

                    ; #81714: <==closure== 86571 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #86571: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #89721: <==commonly_known== 18991 (pos)
                    (Bb_checked_p8)

                    ; #10622: <==negation-removal== 28750 (pos)
                    (not (Pc_not_checked_p8))

                    ; #10845: <==negation-removal== 81714 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #14295: <==negation-removal== 35487 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #23507: <==negation-removal== 39457 (pos)
                    (not (Pa_not_checked_p8))

                    ; #29016: <==negation-removal== 18991 (pos)
                    (not (not_checked_p8))

                    ; #33340: <==uncertain_firing== 35487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #33694: <==negation-removal== 38409 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35107: <==uncertain_firing== 40663 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #38725: <==negation-removal== 89721 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44325: <==uncertain_firing== 81714 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #44473: <==negation-removal== 61780 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45046: <==negation-removal== 62549 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53272: <==negation-removal== 27437 (pos)
                    (not (Bd_not_checked_p8))

                    ; #58006: <==negation-removal== 86571 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #65691: <==uncertain_firing== 86571 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #78203: <==negation-removal== 40663 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #98372: <==negation-removal== 56287 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #11281: <==commonly_known== 81518 (pos)
                    (Bc_checked_p9)

                    ; #27571: <==commonly_known== 69773 (neg)
                    (Pd_checked_p9)

                    ; #28907: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #42334: <==commonly_known== 81518 (pos)
                    (Bb_checked_p9)

                    ; #48481: <==commonly_known== 81518 (pos)
                    (Ba_checked_p9)

                    ; #61151: <==closure== 82604 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #69604: <==commonly_known== 69773 (neg)
                    (Pb_checked_p9)

                    ; #73604: <==closure== 28907 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #75504: <==commonly_known== 69773 (neg)
                    (Pc_checked_p9)

                    ; #81518: origin
                    (checked_p9)

                    ; #82604: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #84743: <==commonly_known== 81518 (pos)
                    (Bd_checked_p9)

                    ; #85923: <==commonly_known== 69773 (neg)
                    (Pa_checked_p9)

                    ; #13766: <==negation-removal== 48481 (pos)
                    (not (Pa_not_checked_p9))

                    ; #24801: <==uncertain_firing== 82604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #31871: <==negation-removal== 28907 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #39389: <==negation-removal== 85923 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39497: <==uncertain_firing== 61151 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #44601: <==negation-removal== 82604 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44842: <==negation-removal== 73604 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #49660: <==negation-removal== 42334 (pos)
                    (not (Pb_not_checked_p9))

                    ; #50655: <==negation-removal== 27571 (pos)
                    (not (Bd_not_checked_p9))

                    ; #54362: <==negation-removal== 84743 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54710: <==negation-removal== 69604 (pos)
                    (not (Bb_not_checked_p9))

                    ; #67268: <==negation-removal== 61151 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #69773: <==negation-removal== 81518 (pos)
                    (not (not_checked_p9))

                    ; #69791: <==uncertain_firing== 28907 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #75303: <==negation-removal== 75504 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78251: <==negation-removal== 11281 (pos)
                    (not (Pc_not_checked_p9))

                    ; #83228: <==uncertain_firing== 73604 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #15477: <==commonly_known== 87084 (pos)
                    (Ba_checked_p10)

                    ; #16470: <==commonly_known== 71205 (neg)
                    (Pa_checked_p10)

                    ; #19479: <==commonly_known== 71205 (neg)
                    (Pb_checked_p10)

                    ; #30789: <==closure== 74925 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #36874: <==commonly_known== 71205 (neg)
                    (Pc_checked_p10)

                    ; #43744: <==closure== 46199 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #46199: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #68454: <==commonly_known== 87084 (pos)
                    (Bd_checked_p10)

                    ; #68458: <==commonly_known== 87084 (pos)
                    (Bc_checked_p10)

                    ; #74925: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #84531: <==commonly_known== 71205 (neg)
                    (Pd_checked_p10)

                    ; #85091: <==commonly_known== 87084 (pos)
                    (Bb_checked_p10)

                    ; #87084: origin
                    (checked_p10)

                    ; #21216: <==negation-removal== 16470 (pos)
                    (not (Ba_not_checked_p10))

                    ; #30790: <==negation-removal== 85091 (pos)
                    (not (Pb_not_checked_p10))

                    ; #31394: <==uncertain_firing== 30789 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #35990: <==negation-removal== 15477 (pos)
                    (not (Pa_not_checked_p10))

                    ; #37047: <==uncertain_firing== 74925 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #38008: <==negation-removal== 68454 (pos)
                    (not (Pd_not_checked_p10))

                    ; #41652: <==negation-removal== 68458 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42296: <==negation-removal== 84531 (pos)
                    (not (Bd_not_checked_p10))

                    ; #50428: <==negation-removal== 74925 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #57731: <==negation-removal== 19479 (pos)
                    (not (Bb_not_checked_p10))

                    ; #62882: <==negation-removal== 30789 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #63788: <==uncertain_firing== 46199 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #64477: <==negation-removal== 46199 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #66005: <==negation-removal== 36874 (pos)
                    (not (Bc_not_checked_p10))

                    ; #71205: <==negation-removal== 87084 (pos)
                    (not (not_checked_p10))

                    ; #79354: <==uncertain_firing== 43744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #90332: <==negation-removal== 43744 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #17608: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #22363: <==commonly_known== 54854 (pos)
                    (Bb_checked_p11)

                    ; #31848: <==commonly_known== 26810 (neg)
                    (Pa_checked_p11)

                    ; #39109: <==closure== 17608 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #44631: <==commonly_known== 54854 (pos)
                    (Bd_checked_p11)

                    ; #51684: <==commonly_known== 54854 (pos)
                    (Ba_checked_p11)

                    ; #52691: <==commonly_known== 26810 (neg)
                    (Pd_checked_p11)

                    ; #54854: origin
                    (checked_p11)

                    ; #65879: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #70416: <==closure== 65879 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #82068: <==commonly_known== 26810 (neg)
                    (Pc_checked_p11)

                    ; #88423: <==commonly_known== 26810 (neg)
                    (Pb_checked_p11)

                    ; #91461: <==commonly_known== 54854 (pos)
                    (Bc_checked_p11)

                    ; #12990: <==negation-removal== 82068 (pos)
                    (not (Bc_not_checked_p11))

                    ; #21609: <==negation-removal== 51684 (pos)
                    (not (Pa_not_checked_p11))

                    ; #26810: <==negation-removal== 54854 (pos)
                    (not (not_checked_p11))

                    ; #40575: <==uncertain_firing== 17608 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #43729: <==negation-removal== 88423 (pos)
                    (not (Bb_not_checked_p11))

                    ; #47951: <==negation-removal== 70416 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #52265: <==negation-removal== 91461 (pos)
                    (not (Pc_not_checked_p11))

                    ; #53581: <==negation-removal== 17608 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #55648: <==negation-removal== 39109 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #56216: <==uncertain_firing== 65879 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #57782: <==negation-removal== 31848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #63298: <==uncertain_firing== 70416 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #67102: <==negation-removal== 44631 (pos)
                    (not (Pd_not_checked_p11))

                    ; #68101: <==negation-removal== 52691 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69508: <==negation-removal== 22363 (pos)
                    (not (Pb_not_checked_p11))

                    ; #73816: <==negation-removal== 65879 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #89287: <==uncertain_firing== 39109 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #14706: <==commonly_known== 70807 (pos)
                    (Bb_checked_p12)

                    ; #19077: <==commonly_known== 70807 (pos)
                    (Bc_checked_p12)

                    ; #19750: <==commonly_known== 50954 (neg)
                    (Pc_checked_p12)

                    ; #23866: <==commonly_known== 50954 (neg)
                    (Pd_checked_p12)

                    ; #32548: <==commonly_known== 50954 (neg)
                    (Pb_checked_p12)

                    ; #46842: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #52341: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #64789: <==closure== 46842 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #65606: <==closure== 52341 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #70807: origin
                    (checked_p12)

                    ; #76232: <==commonly_known== 50954 (neg)
                    (Pa_checked_p12)

                    ; #78705: <==commonly_known== 70807 (pos)
                    (Bd_checked_p12)

                    ; #83018: <==commonly_known== 70807 (pos)
                    (Ba_checked_p12)

                    ; #11229: <==negation-removal== 52341 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #15638: <==negation-removal== 14706 (pos)
                    (not (Pb_not_checked_p12))

                    ; #20054: <==uncertain_firing== 65606 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #34170: <==negation-removal== 64789 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #38910: <==negation-removal== 76232 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39857: <==uncertain_firing== 64789 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #40848: <==negation-removal== 78705 (pos)
                    (not (Pd_not_checked_p12))

                    ; #46877: <==negation-removal== 19750 (pos)
                    (not (Bc_not_checked_p12))

                    ; #49807: <==uncertain_firing== 52341 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #50954: <==negation-removal== 70807 (pos)
                    (not (not_checked_p12))

                    ; #54696: <==negation-removal== 32548 (pos)
                    (not (Bb_not_checked_p12))

                    ; #59688: <==negation-removal== 19077 (pos)
                    (not (Pc_not_checked_p12))

                    ; #72463: <==negation-removal== 23866 (pos)
                    (not (Bd_not_checked_p12))

                    ; #74347: <==negation-removal== 65606 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #82934: <==negation-removal== 83018 (pos)
                    (not (Pa_not_checked_p12))

                    ; #89330: <==uncertain_firing== 46842 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #90426: <==negation-removal== 46842 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #19639: <==commonly_known== 73423 (neg)
                    (Pa_checked_p1)

                    ; #22806: origin
                    (checked_p1)

                    ; #23073: <==commonly_known== 73423 (neg)
                    (Pb_checked_p1)

                    ; #35393: <==closure== 72889 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #38582: <==closure== 81224 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #41902: <==commonly_known== 22806 (pos)
                    (Bc_checked_p1)

                    ; #43463: <==commonly_known== 22806 (pos)
                    (Bb_checked_p1)

                    ; #61187: <==commonly_known== 22806 (pos)
                    (Bd_checked_p1)

                    ; #67924: <==commonly_known== 73423 (neg)
                    (Pd_checked_p1)

                    ; #72889: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #81224: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #86125: <==commonly_known== 73423 (neg)
                    (Pc_checked_p1)

                    ; #90357: <==commonly_known== 22806 (pos)
                    (Ba_checked_p1)

                    ; #14016: <==uncertain_firing== 38582 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #32483: <==negation-removal== 67924 (pos)
                    (not (Bd_not_checked_p1))

                    ; #33359: <==negation-removal== 86125 (pos)
                    (not (Bc_not_checked_p1))

                    ; #36608: <==negation-removal== 81224 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #44964: <==negation-removal== 72889 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54083: <==negation-removal== 90357 (pos)
                    (not (Pa_not_checked_p1))

                    ; #64440: <==negation-removal== 35393 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #67195: <==negation-removal== 19639 (pos)
                    (not (Ba_not_checked_p1))

                    ; #73311: <==negation-removal== 41902 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73423: <==negation-removal== 22806 (pos)
                    (not (not_checked_p1))

                    ; #76935: <==negation-removal== 38582 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #77637: <==negation-removal== 43463 (pos)
                    (not (Pb_not_checked_p1))

                    ; #79337: <==uncertain_firing== 72889 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83405: <==negation-removal== 61187 (pos)
                    (not (Pd_not_checked_p1))

                    ; #84950: <==uncertain_firing== 81224 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #89937: <==negation-removal== 23073 (pos)
                    (not (Bb_not_checked_p1))

                    ; #91336: <==uncertain_firing== 35393 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #11631: <==commonly_known== 87650 (neg)
                    (Pc_checked_p2)

                    ; #13485: <==commonly_known== 36820 (pos)
                    (Ba_checked_p2)

                    ; #19323: <==commonly_known== 87650 (neg)
                    (Pd_checked_p2)

                    ; #26505: <==closure== 60771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #33132: <==commonly_known== 36820 (pos)
                    (Bc_checked_p2)

                    ; #36820: origin
                    (checked_p2)

                    ; #42342: <==commonly_known== 87650 (neg)
                    (Pb_checked_p2)

                    ; #47157: <==commonly_known== 87650 (neg)
                    (Pa_checked_p2)

                    ; #47673: <==closure== 71580 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #60761: <==commonly_known== 36820 (pos)
                    (Bb_checked_p2)

                    ; #60771: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #71580: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #74673: <==commonly_known== 36820 (pos)
                    (Bd_checked_p2)

                    ; #19194: <==negation-removal== 47673 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #21049: <==negation-removal== 42342 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23567: <==negation-removal== 60761 (pos)
                    (not (Pb_not_checked_p2))

                    ; #38544: <==uncertain_firing== 71580 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #43472: <==negation-removal== 11631 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44620: <==negation-removal== 47157 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48393: <==negation-removal== 19323 (pos)
                    (not (Bd_not_checked_p2))

                    ; #51454: <==uncertain_firing== 26505 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #58038: <==negation-removal== 71580 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #62434: <==negation-removal== 13485 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64670: <==negation-removal== 33132 (pos)
                    (not (Pc_not_checked_p2))

                    ; #70932: <==uncertain_firing== 60771 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #73233: <==uncertain_firing== 47673 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #82995: <==negation-removal== 60771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #83887: <==negation-removal== 26505 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #87650: <==negation-removal== 36820 (pos)
                    (not (not_checked_p2))

                    ; #90278: <==negation-removal== 74673 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #11102: <==commonly_known== 68720 (pos)
                    (Ba_checked_p3)

                    ; #12114: <==commonly_known== 11335 (neg)
                    (Pa_checked_p3)

                    ; #24135: <==commonly_known== 11335 (neg)
                    (Pd_checked_p3)

                    ; #24616: <==commonly_known== 68720 (pos)
                    (Bc_checked_p3)

                    ; #25607: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #31407: <==commonly_known== 68720 (pos)
                    (Bb_checked_p3)

                    ; #44196: <==commonly_known== 11335 (neg)
                    (Pb_checked_p3)

                    ; #68720: origin
                    (checked_p3)

                    ; #75319: <==commonly_known== 11335 (neg)
                    (Pc_checked_p3)

                    ; #78924: <==closure== 25607 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #81782: <==closure== 82142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #82142: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #84578: <==commonly_known== 68720 (pos)
                    (Bd_checked_p3)

                    ; #11335: <==negation-removal== 68720 (pos)
                    (not (not_checked_p3))

                    ; #13930: <==negation-removal== 84578 (pos)
                    (not (Pd_not_checked_p3))

                    ; #22128: <==negation-removal== 81782 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29483: <==negation-removal== 82142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #36486: <==negation-removal== 12114 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37783: <==negation-removal== 75319 (pos)
                    (not (Bc_not_checked_p3))

                    ; #44508: <==negation-removal== 25607 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #49186: <==negation-removal== 11102 (pos)
                    (not (Pa_not_checked_p3))

                    ; #53881: <==negation-removal== 78924 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #59179: <==negation-removal== 24616 (pos)
                    (not (Pc_not_checked_p3))

                    ; #60494: <==uncertain_firing== 82142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #60644: <==uncertain_firing== 25607 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #64523: <==negation-removal== 31407 (pos)
                    (not (Pb_not_checked_p3))

                    ; #67854: <==uncertain_firing== 78924 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #85706: <==uncertain_firing== 81782 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #86522: <==negation-removal== 44196 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87727: <==negation-removal== 24135 (pos)
                    (not (Bd_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24605: <==commonly_known== 28068 (neg)
                    (Pd_checked_p4)

                    ; #24964: <==closure== 63153 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34427: <==commonly_known== 28068 (neg)
                    (Pb_checked_p4)

                    ; #36033: <==commonly_known== 28068 (neg)
                    (Pc_checked_p4)

                    ; #49460: <==commonly_known== 63507 (pos)
                    (Ba_checked_p4)

                    ; #52889: <==commonly_known== 63507 (pos)
                    (Bc_checked_p4)

                    ; #53949: <==commonly_known== 63507 (pos)
                    (Bb_checked_p4)

                    ; #54064: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #63153: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #63507: origin
                    (checked_p4)

                    ; #64199: <==commonly_known== 28068 (neg)
                    (Pa_checked_p4)

                    ; #71495: <==commonly_known== 63507 (pos)
                    (Bd_checked_p4)

                    ; #84662: <==closure== 54064 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #14380: <==negation-removal== 24605 (pos)
                    (not (Bd_not_checked_p4))

                    ; #19373: <==negation-removal== 24964 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #21548: <==uncertain_firing== 84662 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #25971: <==negation-removal== 34427 (pos)
                    (not (Bb_not_checked_p4))

                    ; #27175: <==uncertain_firing== 24964 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #28068: <==negation-removal== 63507 (pos)
                    (not (not_checked_p4))

                    ; #33288: <==negation-removal== 36033 (pos)
                    (not (Bc_not_checked_p4))

                    ; #36517: <==negation-removal== 84662 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #37293: <==negation-removal== 52889 (pos)
                    (not (Pc_not_checked_p4))

                    ; #49025: <==negation-removal== 54064 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #53228: <==negation-removal== 63153 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #72555: <==uncertain_firing== 63153 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #79515: <==uncertain_firing== 54064 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #81449: <==negation-removal== 71495 (pos)
                    (not (Pd_not_checked_p4))

                    ; #84542: <==negation-removal== 53949 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85147: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86180: <==negation-removal== 49460 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10026: <==commonly_known== 51238 (pos)
                    (Ba_checked_p5)

                    ; #27320: <==closure== 29674 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #29674: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #33158: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #38253: <==commonly_known== 15034 (neg)
                    (Pa_checked_p5)

                    ; #40479: <==commonly_known== 51238 (pos)
                    (Bb_checked_p5)

                    ; #43814: <==commonly_known== 15034 (neg)
                    (Pd_checked_p5)

                    ; #46688: <==commonly_known== 15034 (neg)
                    (Pc_checked_p5)

                    ; #50423: <==commonly_known== 51238 (pos)
                    (Bd_checked_p5)

                    ; #51073: <==closure== 33158 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #51238: origin
                    (checked_p5)

                    ; #78945: <==commonly_known== 15034 (neg)
                    (Pb_checked_p5)

                    ; #88180: <==commonly_known== 51238 (pos)
                    (Bc_checked_p5)

                    ; #15034: <==negation-removal== 51238 (pos)
                    (not (not_checked_p5))

                    ; #22832: <==negation-removal== 40479 (pos)
                    (not (Pb_not_checked_p5))

                    ; #35795: <==negation-removal== 38253 (pos)
                    (not (Ba_not_checked_p5))

                    ; #48089: <==negation-removal== 27320 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51456: <==uncertain_firing== 27320 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #51975: <==negation-removal== 43814 (pos)
                    (not (Bd_not_checked_p5))

                    ; #54161: <==negation-removal== 33158 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #56631: <==negation-removal== 46688 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59711: <==negation-removal== 88180 (pos)
                    (not (Pc_not_checked_p5))

                    ; #60811: <==uncertain_firing== 33158 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #61061: <==negation-removal== 10026 (pos)
                    (not (Pa_not_checked_p5))

                    ; #65530: <==negation-removal== 29674 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #71748: <==negation-removal== 51073 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #75130: <==uncertain_firing== 51073 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #77839: <==uncertain_firing== 29674 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #82586: <==negation-removal== 50423 (pos)
                    (not (Pd_not_checked_p5))

                    ; #85412: <==negation-removal== 78945 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #14330: <==commonly_known== 21035 (pos)
                    (Bd_checked_p6)

                    ; #15578: <==commonly_known== 32828 (neg)
                    (Pd_checked_p6)

                    ; #21035: origin
                    (checked_p6)

                    ; #23586: <==commonly_known== 32828 (neg)
                    (Pc_checked_p6)

                    ; #38937: <==commonly_known== 21035 (pos)
                    (Bc_checked_p6)

                    ; #42989: <==closure== 51363 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #48128: <==commonly_known== 21035 (pos)
                    (Bb_checked_p6)

                    ; #51363: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #52651: <==commonly_known== 32828 (neg)
                    (Pb_checked_p6)

                    ; #53520: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #71976: <==commonly_known== 32828 (neg)
                    (Pa_checked_p6)

                    ; #74966: <==commonly_known== 21035 (pos)
                    (Ba_checked_p6)

                    ; #79313: <==closure== 53520 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #11422: <==uncertain_firing== 79313 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #11742: <==negation-removal== 42989 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #32828: <==negation-removal== 21035 (pos)
                    (not (not_checked_p6))

                    ; #33291: <==negation-removal== 23586 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36210: <==negation-removal== 53520 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #44234: <==negation-removal== 15578 (pos)
                    (not (Bd_not_checked_p6))

                    ; #47728: <==uncertain_firing== 51363 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #47934: <==negation-removal== 38937 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51650: <==negation-removal== 52651 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54352: <==negation-removal== 14330 (pos)
                    (not (Pd_not_checked_p6))

                    ; #59576: <==negation-removal== 71976 (pos)
                    (not (Ba_not_checked_p6))

                    ; #65068: <==negation-removal== 51363 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70319: <==uncertain_firing== 42989 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #77172: <==negation-removal== 79313 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #82823: <==negation-removal== 48128 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87097: <==uncertain_firing== 53520 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #88621: <==negation-removal== 74966 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10215: <==commonly_known== 25830 (pos)
                    (Bd_checked_p7)

                    ; #22659: <==commonly_known== 54862 (neg)
                    (Pc_checked_p7)

                    ; #25830: origin
                    (checked_p7)

                    ; #28226: <==commonly_known== 54862 (neg)
                    (Pa_checked_p7)

                    ; #49802: <==commonly_known== 54862 (neg)
                    (Pd_checked_p7)

                    ; #51792: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #53210: <==commonly_known== 25830 (pos)
                    (Bc_checked_p7)

                    ; #53803: <==commonly_known== 25830 (pos)
                    (Ba_checked_p7)

                    ; #57113: <==commonly_known== 54862 (neg)
                    (Pb_checked_p7)

                    ; #57471: <==closure== 96539 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #88516: <==commonly_known== 25830 (pos)
                    (Bb_checked_p7)

                    ; #88566: <==closure== 51792 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #96539: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #13293: <==negation-removal== 96539 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #15297: <==negation-removal== 49802 (pos)
                    (not (Bd_not_checked_p7))

                    ; #27488: <==negation-removal== 88516 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27900: <==negation-removal== 22659 (pos)
                    (not (Bc_not_checked_p7))

                    ; #40193: <==negation-removal== 10215 (pos)
                    (not (Pd_not_checked_p7))

                    ; #41346: <==uncertain_firing== 88566 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43118: <==uncertain_firing== 51792 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #43614: <==uncertain_firing== 96539 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #52265: <==negation-removal== 53210 (pos)
                    (not (Pc_not_checked_p7))

                    ; #54862: <==negation-removal== 25830 (pos)
                    (not (not_checked_p7))

                    ; #62985: <==negation-removal== 57113 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67648: <==negation-removal== 51792 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75810: <==uncertain_firing== 57471 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81662: <==negation-removal== 28226 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82868: <==negation-removal== 88566 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #88142: <==negation-removal== 53803 (pos)
                    (not (Pa_not_checked_p7))

                    ; #94696: <==negation-removal== 57471 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #18991: origin
                    (checked_p8)

                    ; #26197: <==closure== 57744 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #27437: <==commonly_known== 29016 (neg)
                    (Pd_checked_p8)

                    ; #28750: <==commonly_known== 18991 (pos)
                    (Bc_checked_p8)

                    ; #38409: <==commonly_known== 29016 (neg)
                    (Pa_checked_p8)

                    ; #39457: <==commonly_known== 18991 (pos)
                    (Ba_checked_p8)

                    ; #40630: <==closure== 66597 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #56287: <==commonly_known== 18991 (pos)
                    (Bd_checked_p8)

                    ; #57744: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #61780: <==commonly_known== 29016 (neg)
                    (Pb_checked_p8)

                    ; #62549: <==commonly_known== 29016 (neg)
                    (Pc_checked_p8)

                    ; #66597: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #89721: <==commonly_known== 18991 (pos)
                    (Bb_checked_p8)

                    ; #10622: <==negation-removal== 28750 (pos)
                    (not (Pc_not_checked_p8))

                    ; #12968: <==negation-removal== 66597 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #18961: <==uncertain_firing== 66597 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #23507: <==negation-removal== 39457 (pos)
                    (not (Pa_not_checked_p8))

                    ; #29016: <==negation-removal== 18991 (pos)
                    (not (not_checked_p8))

                    ; #31373: <==negation-removal== 40630 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #32037: <==uncertain_firing== 57744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #33694: <==negation-removal== 38409 (pos)
                    (not (Ba_not_checked_p8))

                    ; #38725: <==negation-removal== 89721 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44473: <==negation-removal== 61780 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45046: <==negation-removal== 62549 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53272: <==negation-removal== 27437 (pos)
                    (not (Bd_not_checked_p8))

                    ; #57901: <==uncertain_firing== 40630 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #79933: <==uncertain_firing== 26197 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #85921: <==negation-removal== 57744 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #88626: <==negation-removal== 26197 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #98372: <==negation-removal== 56287 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #11281: <==commonly_known== 81518 (pos)
                    (Bc_checked_p9)

                    ; #15673: <==closure== 37447 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #23329: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #27571: <==commonly_known== 69773 (neg)
                    (Pd_checked_p9)

                    ; #33438: <==closure== 23329 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #37447: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #42334: <==commonly_known== 81518 (pos)
                    (Bb_checked_p9)

                    ; #48481: <==commonly_known== 81518 (pos)
                    (Ba_checked_p9)

                    ; #69604: <==commonly_known== 69773 (neg)
                    (Pb_checked_p9)

                    ; #75504: <==commonly_known== 69773 (neg)
                    (Pc_checked_p9)

                    ; #81518: origin
                    (checked_p9)

                    ; #84743: <==commonly_known== 81518 (pos)
                    (Bd_checked_p9)

                    ; #85923: <==commonly_known== 69773 (neg)
                    (Pa_checked_p9)

                    ; #13766: <==negation-removal== 48481 (pos)
                    (not (Pa_not_checked_p9))

                    ; #18266: <==uncertain_firing== 23329 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #35400: <==negation-removal== 23329 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #38534: <==uncertain_firing== 37447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #39389: <==negation-removal== 85923 (pos)
                    (not (Ba_not_checked_p9))

                    ; #48084: <==uncertain_firing== 15673 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #49660: <==negation-removal== 42334 (pos)
                    (not (Pb_not_checked_p9))

                    ; #50655: <==negation-removal== 27571 (pos)
                    (not (Bd_not_checked_p9))

                    ; #53897: <==negation-removal== 15673 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #54362: <==negation-removal== 84743 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54710: <==negation-removal== 69604 (pos)
                    (not (Bb_not_checked_p9))

                    ; #55759: <==negation-removal== 33438 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #57238: <==uncertain_firing== 33438 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #69773: <==negation-removal== 81518 (pos)
                    (not (not_checked_p9))

                    ; #75303: <==negation-removal== 75504 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78251: <==negation-removal== 11281 (pos)
                    (not (Pc_not_checked_p9))

                    ; #85958: <==negation-removal== 37447 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

    (:action observe_d_p10_s
        :precondition (and (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #15477: <==commonly_known== 87084 (pos)
                    (Ba_checked_p10)

                    ; #16470: <==commonly_known== 71205 (neg)
                    (Pa_checked_p10)

                    ; #19479: <==commonly_known== 71205 (neg)
                    (Pb_checked_p10)

                    ; #35546: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #36874: <==commonly_known== 71205 (neg)
                    (Pc_checked_p10)

                    ; #60988: <==closure== 73183 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #68454: <==commonly_known== 87084 (pos)
                    (Bd_checked_p10)

                    ; #68458: <==commonly_known== 87084 (pos)
                    (Bc_checked_p10)

                    ; #69030: <==closure== 35546 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #73183: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #84531: <==commonly_known== 71205 (neg)
                    (Pd_checked_p10)

                    ; #85091: <==commonly_known== 87084 (pos)
                    (Bb_checked_p10)

                    ; #87084: origin
                    (checked_p10)

                    ; #17205: <==negation-removal== 60988 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #19675: <==negation-removal== 73183 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #21216: <==negation-removal== 16470 (pos)
                    (not (Ba_not_checked_p10))

                    ; #25702: <==uncertain_firing== 73183 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #28038: <==uncertain_firing== 35546 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #30790: <==negation-removal== 85091 (pos)
                    (not (Pb_not_checked_p10))

                    ; #35990: <==negation-removal== 15477 (pos)
                    (not (Pa_not_checked_p10))

                    ; #38008: <==negation-removal== 68454 (pos)
                    (not (Pd_not_checked_p10))

                    ; #41652: <==negation-removal== 68458 (pos)
                    (not (Pc_not_checked_p10))

                    ; #42296: <==negation-removal== 84531 (pos)
                    (not (Bd_not_checked_p10))

                    ; #50883: <==negation-removal== 35546 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #52971: <==negation-removal== 69030 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #53920: <==uncertain_firing== 69030 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #57731: <==negation-removal== 19479 (pos)
                    (not (Bb_not_checked_p10))

                    ; #60955: <==uncertain_firing== 60988 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #66005: <==negation-removal== 36874 (pos)
                    (not (Bc_not_checked_p10))

                    ; #71205: <==negation-removal== 87084 (pos)
                    (not (not_checked_p10))))

    (:action observe_d_p11_s
        :precondition (and (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #10847: <==closure== 65913 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #22363: <==commonly_known== 54854 (pos)
                    (Bb_checked_p11)

                    ; #31848: <==commonly_known== 26810 (neg)
                    (Pa_checked_p11)

                    ; #44631: <==commonly_known== 54854 (pos)
                    (Bd_checked_p11)

                    ; #50015: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #51684: <==commonly_known== 54854 (pos)
                    (Ba_checked_p11)

                    ; #52691: <==commonly_known== 26810 (neg)
                    (Pd_checked_p11)

                    ; #54854: origin
                    (checked_p11)

                    ; #65913: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #72655: <==closure== 50015 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #82068: <==commonly_known== 26810 (neg)
                    (Pc_checked_p11)

                    ; #88423: <==commonly_known== 26810 (neg)
                    (Pb_checked_p11)

                    ; #91461: <==commonly_known== 54854 (pos)
                    (Bc_checked_p11)

                    ; #11046: <==negation-removal== 10847 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #12048: <==uncertain_firing== 50015 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #12990: <==negation-removal== 82068 (pos)
                    (not (Bc_not_checked_p11))

                    ; #14700: <==uncertain_firing== 65913 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #20637: <==negation-removal== 65913 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #21609: <==negation-removal== 51684 (pos)
                    (not (Pa_not_checked_p11))

                    ; #23792: <==uncertain_firing== 10847 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #26810: <==negation-removal== 54854 (pos)
                    (not (not_checked_p11))

                    ; #31124: <==negation-removal== 72655 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #43729: <==negation-removal== 88423 (pos)
                    (not (Bb_not_checked_p11))

                    ; #47026: <==uncertain_firing== 72655 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #52265: <==negation-removal== 91461 (pos)
                    (not (Pc_not_checked_p11))

                    ; #57782: <==negation-removal== 31848 (pos)
                    (not (Ba_not_checked_p11))

                    ; #67102: <==negation-removal== 44631 (pos)
                    (not (Pd_not_checked_p11))

                    ; #68101: <==negation-removal== 52691 (pos)
                    (not (Bd_not_checked_p11))

                    ; #69508: <==negation-removal== 22363 (pos)
                    (not (Pb_not_checked_p11))

                    ; #92176: <==negation-removal== 50015 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))))

    (:action observe_d_p12_s
        :precondition (and (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #14706: <==commonly_known== 70807 (pos)
                    (Bb_checked_p12)

                    ; #17857: <==closure== 81164 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #19077: <==commonly_known== 70807 (pos)
                    (Bc_checked_p12)

                    ; #19750: <==commonly_known== 50954 (neg)
                    (Pc_checked_p12)

                    ; #23866: <==commonly_known== 50954 (neg)
                    (Pd_checked_p12)

                    ; #32548: <==commonly_known== 50954 (neg)
                    (Pb_checked_p12)

                    ; #41420: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #70807: origin
                    (checked_p12)

                    ; #71260: <==closure== 41420 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #76232: <==commonly_known== 50954 (neg)
                    (Pa_checked_p12)

                    ; #78705: <==commonly_known== 70807 (pos)
                    (Bd_checked_p12)

                    ; #81164: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #83018: <==commonly_known== 70807 (pos)
                    (Ba_checked_p12)

                    ; #11518: <==negation-removal== 81164 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #15638: <==negation-removal== 14706 (pos)
                    (not (Pb_not_checked_p12))

                    ; #18466: <==negation-removal== 41420 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #34764: <==uncertain_firing== 71260 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #38910: <==negation-removal== 76232 (pos)
                    (not (Ba_not_checked_p12))

                    ; #39787: <==uncertain_firing== 17857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #40848: <==negation-removal== 78705 (pos)
                    (not (Pd_not_checked_p12))

                    ; #46877: <==negation-removal== 19750 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50134: <==uncertain_firing== 41420 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #50954: <==negation-removal== 70807 (pos)
                    (not (not_checked_p12))

                    ; #54696: <==negation-removal== 32548 (pos)
                    (not (Bb_not_checked_p12))

                    ; #59688: <==negation-removal== 19077 (pos)
                    (not (Pc_not_checked_p12))

                    ; #60379: <==negation-removal== 71260 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #72463: <==negation-removal== 23866 (pos)
                    (not (Bd_not_checked_p12))

                    ; #81040: <==negation-removal== 17857 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #82768: <==uncertain_firing== 81164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #82934: <==negation-removal== 83018 (pos)
                    (not (Pa_not_checked_p12))))

    (:action observe_d_p1_s
        :precondition (and (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #19639: <==commonly_known== 73423 (neg)
                    (Pa_checked_p1)

                    ; #22806: origin
                    (checked_p1)

                    ; #23073: <==commonly_known== 73423 (neg)
                    (Pb_checked_p1)

                    ; #34135: <==closure== 65421 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #41902: <==commonly_known== 22806 (pos)
                    (Bc_checked_p1)

                    ; #43463: <==commonly_known== 22806 (pos)
                    (Bb_checked_p1)

                    ; #45391: <==closure== 86772 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #61187: <==commonly_known== 22806 (pos)
                    (Bd_checked_p1)

                    ; #65421: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #67924: <==commonly_known== 73423 (neg)
                    (Pd_checked_p1)

                    ; #86125: <==commonly_known== 73423 (neg)
                    (Pc_checked_p1)

                    ; #86772: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #90357: <==commonly_known== 22806 (pos)
                    (Ba_checked_p1)

                    ; #10985: <==uncertain_firing== 65421 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #16643: <==uncertain_firing== 86772 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #25938: <==negation-removal== 34135 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #26575: <==uncertain_firing== 34135 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #32483: <==negation-removal== 67924 (pos)
                    (not (Bd_not_checked_p1))

                    ; #33359: <==negation-removal== 86125 (pos)
                    (not (Bc_not_checked_p1))

                    ; #54083: <==negation-removal== 90357 (pos)
                    (not (Pa_not_checked_p1))

                    ; #55622: <==negation-removal== 65421 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #67195: <==negation-removal== 19639 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70799: <==uncertain_firing== 45391 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #73311: <==negation-removal== 41902 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73423: <==negation-removal== 22806 (pos)
                    (not (not_checked_p1))

                    ; #75010: <==negation-removal== 86772 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #77637: <==negation-removal== 43463 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83405: <==negation-removal== 61187 (pos)
                    (not (Pd_not_checked_p1))

                    ; #89937: <==negation-removal== 23073 (pos)
                    (not (Bb_not_checked_p1))

                    ; #90542: <==negation-removal== 45391 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))))

    (:action observe_d_p2_s
        :precondition (and (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #10675: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #11631: <==commonly_known== 87650 (neg)
                    (Pc_checked_p2)

                    ; #13485: <==commonly_known== 36820 (pos)
                    (Ba_checked_p2)

                    ; #19323: <==commonly_known== 87650 (neg)
                    (Pd_checked_p2)

                    ; #25119: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #25344: <==closure== 25119 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #33132: <==commonly_known== 36820 (pos)
                    (Bc_checked_p2)

                    ; #36820: origin
                    (checked_p2)

                    ; #42342: <==commonly_known== 87650 (neg)
                    (Pb_checked_p2)

                    ; #47157: <==commonly_known== 87650 (neg)
                    (Pa_checked_p2)

                    ; #60761: <==commonly_known== 36820 (pos)
                    (Bb_checked_p2)

                    ; #74673: <==commonly_known== 36820 (pos)
                    (Bd_checked_p2)

                    ; #88874: <==closure== 10675 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #19816: <==negation-removal== 88874 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #21049: <==negation-removal== 42342 (pos)
                    (not (Bb_not_checked_p2))

                    ; #23567: <==negation-removal== 60761 (pos)
                    (not (Pb_not_checked_p2))

                    ; #43472: <==negation-removal== 11631 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44620: <==negation-removal== 47157 (pos)
                    (not (Ba_not_checked_p2))

                    ; #48393: <==negation-removal== 19323 (pos)
                    (not (Bd_not_checked_p2))

                    ; #49715: <==negation-removal== 10675 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #51452: <==uncertain_firing== 25344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #56333: <==negation-removal== 25119 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #59470: <==negation-removal== 25344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #62434: <==negation-removal== 13485 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64670: <==negation-removal== 33132 (pos)
                    (not (Pc_not_checked_p2))

                    ; #71492: <==uncertain_firing== 88874 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #75541: <==uncertain_firing== 10675 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #80841: <==uncertain_firing== 25119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #87650: <==negation-removal== 36820 (pos)
                    (not (not_checked_p2))

                    ; #90278: <==negation-removal== 74673 (pos)
                    (not (Pd_not_checked_p2))))

    (:action observe_d_p3_s
        :precondition (and (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11102: <==commonly_known== 68720 (pos)
                    (Ba_checked_p3)

                    ; #12114: <==commonly_known== 11335 (neg)
                    (Pa_checked_p3)

                    ; #24135: <==commonly_known== 11335 (neg)
                    (Pd_checked_p3)

                    ; #24616: <==commonly_known== 68720 (pos)
                    (Bc_checked_p3)

                    ; #31407: <==commonly_known== 68720 (pos)
                    (Bb_checked_p3)

                    ; #42741: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #44196: <==commonly_known== 11335 (neg)
                    (Pb_checked_p3)

                    ; #67556: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #68720: origin
                    (checked_p3)

                    ; #71055: <==closure== 67556 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #75264: <==closure== 42741 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #75319: <==commonly_known== 11335 (neg)
                    (Pc_checked_p3)

                    ; #84578: <==commonly_known== 68720 (pos)
                    (Bd_checked_p3)

                    ; #11335: <==negation-removal== 68720 (pos)
                    (not (not_checked_p3))

                    ; #13930: <==negation-removal== 84578 (pos)
                    (not (Pd_not_checked_p3))

                    ; #20160: <==uncertain_firing== 42741 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #36486: <==negation-removal== 12114 (pos)
                    (not (Ba_not_checked_p3))

                    ; #37783: <==negation-removal== 75319 (pos)
                    (not (Bc_not_checked_p3))

                    ; #42618: <==negation-removal== 42741 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #42872: <==uncertain_firing== 75264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #49186: <==negation-removal== 11102 (pos)
                    (not (Pa_not_checked_p3))

                    ; #59179: <==negation-removal== 24616 (pos)
                    (not (Pc_not_checked_p3))

                    ; #64523: <==negation-removal== 31407 (pos)
                    (not (Pb_not_checked_p3))

                    ; #68211: <==uncertain_firing== 71055 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #70292: <==negation-removal== 67556 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #71322: <==negation-removal== 75264 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #77070: <==negation-removal== 71055 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #86522: <==negation-removal== 44196 (pos)
                    (not (Bb_not_checked_p3))

                    ; #86749: <==uncertain_firing== 67556 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #87727: <==negation-removal== 24135 (pos)
                    (not (Bd_not_checked_p3))))

    (:action observe_d_p4_s
        :precondition (and (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #24605: <==commonly_known== 28068 (neg)
                    (Pd_checked_p4)

                    ; #34427: <==commonly_known== 28068 (neg)
                    (Pb_checked_p4)

                    ; #36033: <==commonly_known== 28068 (neg)
                    (Pc_checked_p4)

                    ; #49460: <==commonly_known== 63507 (pos)
                    (Ba_checked_p4)

                    ; #52889: <==commonly_known== 63507 (pos)
                    (Bc_checked_p4)

                    ; #53949: <==commonly_known== 63507 (pos)
                    (Bb_checked_p4)

                    ; #60405: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #63507: origin
                    (checked_p4)

                    ; #64199: <==commonly_known== 28068 (neg)
                    (Pa_checked_p4)

                    ; #66636: <==closure== 72150 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #69629: <==closure== 60405 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #71495: <==commonly_known== 63507 (pos)
                    (Bd_checked_p4)

                    ; #72150: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #14380: <==negation-removal== 24605 (pos)
                    (not (Bd_not_checked_p4))

                    ; #20373: <==negation-removal== 66636 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #25971: <==negation-removal== 34427 (pos)
                    (not (Bb_not_checked_p4))

                    ; #27422: <==uncertain_firing== 66636 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #28068: <==negation-removal== 63507 (pos)
                    (not (not_checked_p4))

                    ; #30614: <==uncertain_firing== 69629 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #32959: <==uncertain_firing== 60405 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #33288: <==negation-removal== 36033 (pos)
                    (not (Bc_not_checked_p4))

                    ; #37293: <==negation-removal== 52889 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38026: <==negation-removal== 72150 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #51541: <==negation-removal== 60405 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #52097: <==negation-removal== 69629 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #68751: <==uncertain_firing== 72150 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #81449: <==negation-removal== 71495 (pos)
                    (not (Pd_not_checked_p4))

                    ; #84542: <==negation-removal== 53949 (pos)
                    (not (Pb_not_checked_p4))

                    ; #85147: <==negation-removal== 64199 (pos)
                    (not (Ba_not_checked_p4))

                    ; #86180: <==negation-removal== 49460 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observe_d_p5_s
        :precondition (and (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #10026: <==commonly_known== 51238 (pos)
                    (Ba_checked_p5)

                    ; #15607: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #36221: <==closure== 15607 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #38253: <==commonly_known== 15034 (neg)
                    (Pa_checked_p5)

                    ; #38305: <==closure== 83068 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #40479: <==commonly_known== 51238 (pos)
                    (Bb_checked_p5)

                    ; #43814: <==commonly_known== 15034 (neg)
                    (Pd_checked_p5)

                    ; #46688: <==commonly_known== 15034 (neg)
                    (Pc_checked_p5)

                    ; #50423: <==commonly_known== 51238 (pos)
                    (Bd_checked_p5)

                    ; #51238: origin
                    (checked_p5)

                    ; #78945: <==commonly_known== 15034 (neg)
                    (Pb_checked_p5)

                    ; #83068: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #88180: <==commonly_known== 51238 (pos)
                    (Bc_checked_p5)

                    ; #11363: <==uncertain_firing== 83068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #15034: <==negation-removal== 51238 (pos)
                    (not (not_checked_p5))

                    ; #22832: <==negation-removal== 40479 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28114: <==uncertain_firing== 15607 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #35795: <==negation-removal== 38253 (pos)
                    (not (Ba_not_checked_p5))

                    ; #42860: <==negation-removal== 36221 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #51975: <==negation-removal== 43814 (pos)
                    (not (Bd_not_checked_p5))

                    ; #52605: <==uncertain_firing== 36221 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #56631: <==negation-removal== 46688 (pos)
                    (not (Bc_not_checked_p5))

                    ; #58174: <==uncertain_firing== 38305 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #58328: <==negation-removal== 38305 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #59711: <==negation-removal== 88180 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61061: <==negation-removal== 10026 (pos)
                    (not (Pa_not_checked_p5))

                    ; #66670: <==negation-removal== 83068 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #67728: <==negation-removal== 15607 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #82586: <==negation-removal== 50423 (pos)
                    (not (Pd_not_checked_p5))

                    ; #85412: <==negation-removal== 78945 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observe_d_p6_s
        :precondition (and (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #14330: <==commonly_known== 21035 (pos)
                    (Bd_checked_p6)

                    ; #15578: <==commonly_known== 32828 (neg)
                    (Pd_checked_p6)

                    ; #21035: origin
                    (checked_p6)

                    ; #23586: <==commonly_known== 32828 (neg)
                    (Pc_checked_p6)

                    ; #38937: <==commonly_known== 21035 (pos)
                    (Bc_checked_p6)

                    ; #44463: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #48128: <==commonly_known== 21035 (pos)
                    (Bb_checked_p6)

                    ; #52651: <==commonly_known== 32828 (neg)
                    (Pb_checked_p6)

                    ; #60194: <==closure== 83398 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #61591: <==closure== 44463 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #71976: <==commonly_known== 32828 (neg)
                    (Pa_checked_p6)

                    ; #74966: <==commonly_known== 21035 (pos)
                    (Ba_checked_p6)

                    ; #83398: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11712: <==uncertain_firing== 83398 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #26469: <==negation-removal== 83398 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #32828: <==negation-removal== 21035 (pos)
                    (not (not_checked_p6))

                    ; #33291: <==negation-removal== 23586 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36649: <==uncertain_firing== 44463 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #44234: <==negation-removal== 15578 (pos)
                    (not (Bd_not_checked_p6))

                    ; #47934: <==negation-removal== 38937 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51650: <==negation-removal== 52651 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54352: <==negation-removal== 14330 (pos)
                    (not (Pd_not_checked_p6))

                    ; #57088: <==negation-removal== 60194 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #59352: <==uncertain_firing== 61591 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #59576: <==negation-removal== 71976 (pos)
                    (not (Ba_not_checked_p6))

                    ; #59846: <==negation-removal== 61591 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #70125: <==uncertain_firing== 60194 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #79841: <==negation-removal== 44463 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #82823: <==negation-removal== 48128 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88621: <==negation-removal== 74966 (pos)
                    (not (Pa_not_checked_p6))))

    (:action observe_d_p7_s
        :precondition (and (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #10215: <==commonly_known== 25830 (pos)
                    (Bd_checked_p7)

                    ; #17102: <==closure== 45352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #22659: <==commonly_known== 54862 (neg)
                    (Pc_checked_p7)

                    ; #25830: origin
                    (checked_p7)

                    ; #28226: <==commonly_known== 54862 (neg)
                    (Pa_checked_p7)

                    ; #38882: <==closure== 75297 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #45352: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #49802: <==commonly_known== 54862 (neg)
                    (Pd_checked_p7)

                    ; #53210: <==commonly_known== 25830 (pos)
                    (Bc_checked_p7)

                    ; #53803: <==commonly_known== 25830 (pos)
                    (Ba_checked_p7)

                    ; #57113: <==commonly_known== 54862 (neg)
                    (Pb_checked_p7)

                    ; #75297: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #88516: <==commonly_known== 25830 (pos)
                    (Bb_checked_p7)

                    ; #13005: <==uncertain_firing== 75297 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #15297: <==negation-removal== 49802 (pos)
                    (not (Bd_not_checked_p7))

                    ; #27488: <==negation-removal== 88516 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27900: <==negation-removal== 22659 (pos)
                    (not (Bc_not_checked_p7))

                    ; #37973: <==negation-removal== 75297 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #40193: <==negation-removal== 10215 (pos)
                    (not (Pd_not_checked_p7))

                    ; #45809: <==uncertain_firing== 38882 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #47800: <==negation-removal== 17102 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #52265: <==negation-removal== 53210 (pos)
                    (not (Pc_not_checked_p7))

                    ; #53889: <==uncertain_firing== 17102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #54862: <==negation-removal== 25830 (pos)
                    (not (not_checked_p7))

                    ; #56684: <==negation-removal== 38882 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #62985: <==negation-removal== 57113 (pos)
                    (not (Bb_not_checked_p7))

                    ; #77464: <==negation-removal== 45352 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #81662: <==negation-removal== 28226 (pos)
                    (not (Ba_not_checked_p7))

                    ; #88142: <==negation-removal== 53803 (pos)
                    (not (Pa_not_checked_p7))

                    ; #91265: <==uncertain_firing== 45352 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))))

    (:action observe_d_p8_s
        :precondition (and (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #18991: origin
                    (checked_p8)

                    ; #27437: <==commonly_known== 29016 (neg)
                    (Pd_checked_p8)

                    ; #28750: <==commonly_known== 18991 (pos)
                    (Bc_checked_p8)

                    ; #38409: <==commonly_known== 29016 (neg)
                    (Pa_checked_p8)

                    ; #39457: <==commonly_known== 18991 (pos)
                    (Ba_checked_p8)

                    ; #49560: <==closure== 57287 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #53303: <==closure== 82799 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #56287: <==commonly_known== 18991 (pos)
                    (Bd_checked_p8)

                    ; #57287: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #61780: <==commonly_known== 29016 (neg)
                    (Pb_checked_p8)

                    ; #62549: <==commonly_known== 29016 (neg)
                    (Pc_checked_p8)

                    ; #82799: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #89721: <==commonly_known== 18991 (pos)
                    (Bb_checked_p8)

                    ; #10622: <==negation-removal== 28750 (pos)
                    (not (Pc_not_checked_p8))

                    ; #23507: <==negation-removal== 39457 (pos)
                    (not (Pa_not_checked_p8))

                    ; #29016: <==negation-removal== 18991 (pos)
                    (not (not_checked_p8))

                    ; #33694: <==negation-removal== 38409 (pos)
                    (not (Ba_not_checked_p8))

                    ; #35728: <==negation-removal== 49560 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #38725: <==negation-removal== 89721 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41949: <==negation-removal== 57287 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #44473: <==negation-removal== 61780 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45046: <==negation-removal== 62549 (pos)
                    (not (Bc_not_checked_p8))

                    ; #51866: <==uncertain_firing== 53303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53174: <==negation-removal== 53303 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #53272: <==negation-removal== 27437 (pos)
                    (not (Bd_not_checked_p8))

                    ; #54930: <==negation-removal== 82799 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #60134: <==uncertain_firing== 49560 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #80751: <==uncertain_firing== 57287 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #82693: <==uncertain_firing== 82799 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #98372: <==negation-removal== 56287 (pos)
                    (not (Pd_not_checked_p8))))

    (:action observe_d_p9_s
        :precondition (and (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #11281: <==commonly_known== 81518 (pos)
                    (Bc_checked_p9)

                    ; #27571: <==commonly_known== 69773 (neg)
                    (Pd_checked_p9)

                    ; #27673: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #42334: <==commonly_known== 81518 (pos)
                    (Bb_checked_p9)

                    ; #48481: <==commonly_known== 81518 (pos)
                    (Ba_checked_p9)

                    ; #61828: <==closure== 27673 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #69604: <==commonly_known== 69773 (neg)
                    (Pb_checked_p9)

                    ; #74073: <==closure== 85646 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #75504: <==commonly_known== 69773 (neg)
                    (Pc_checked_p9)

                    ; #81518: origin
                    (checked_p9)

                    ; #84743: <==commonly_known== 81518 (pos)
                    (Bd_checked_p9)

                    ; #85646: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #85923: <==commonly_known== 69773 (neg)
                    (Pa_checked_p9)

                    ; #13766: <==negation-removal== 48481 (pos)
                    (not (Pa_not_checked_p9))

                    ; #17290: <==negation-removal== 85646 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #23220: <==uncertain_firing== 85646 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #31414: <==negation-removal== 61828 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #36289: <==negation-removal== 74073 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #39389: <==negation-removal== 85923 (pos)
                    (not (Ba_not_checked_p9))

                    ; #49660: <==negation-removal== 42334 (pos)
                    (not (Pb_not_checked_p9))

                    ; #50655: <==negation-removal== 27571 (pos)
                    (not (Bd_not_checked_p9))

                    ; #54362: <==negation-removal== 84743 (pos)
                    (not (Pd_not_checked_p9))

                    ; #54710: <==negation-removal== 69604 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68898: <==uncertain_firing== 74073 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #69773: <==negation-removal== 81518 (pos)
                    (not (not_checked_p9))

                    ; #72575: <==uncertain_firing== 27673 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #73750: <==uncertain_firing== 61828 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #75303: <==negation-removal== 75504 (pos)
                    (not (Bc_not_checked_p9))

                    ; #78251: <==negation-removal== 11281 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91007: <==negation-removal== 27673 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))))

)