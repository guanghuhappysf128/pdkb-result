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
                           (leader_a)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #20481: <==closure== 91061 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #91061: origin
                    (Ba_not_survivorat_s_p10)

                    ; #10462: <==negation-removal== 91061 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #64260: <==negation-removal== 20481 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #59579: origin
                    (Bb_not_survivorat_s_p10)

                    ; #73544: <==closure== 59579 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #58883: <==negation-removal== 73544 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #69820: <==negation-removal== 59579 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #20556: <==closure== 36671 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36671: origin
                    (Bc_not_survivorat_s_p10)

                    ; #38757: <==negation-removal== 36671 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #80383: <==negation-removal== 20556 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #48853: <==closure== 68036 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #68036: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18191: <==negation-removal== 68036 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #50533: <==negation-removal== 48853 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #20481: <==closure== 91061 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #91061: origin
                    (Ba_not_survivorat_s_p10)

                    ; #10462: <==negation-removal== 91061 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #64260: <==negation-removal== 20481 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #59579: origin
                    (Bb_not_survivorat_s_p10)

                    ; #73544: <==closure== 59579 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #58883: <==negation-removal== 73544 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #69820: <==negation-removal== 59579 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #20556: <==closure== 36671 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36671: origin
                    (Bc_not_survivorat_s_p10)

                    ; #38757: <==negation-removal== 36671 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #80383: <==negation-removal== 20556 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #48853: <==closure== 68036 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #68036: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18191: <==negation-removal== 68036 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #50533: <==negation-removal== 48853 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #20481: <==closure== 91061 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #91061: origin
                    (Ba_not_survivorat_s_p10)

                    ; #10462: <==negation-removal== 91061 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #64260: <==negation-removal== 20481 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #59579: origin
                    (Bb_not_survivorat_s_p10)

                    ; #73544: <==closure== 59579 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #58883: <==negation-removal== 73544 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #69820: <==negation-removal== 59579 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #20556: <==closure== 36671 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36671: origin
                    (Bc_not_survivorat_s_p10)

                    ; #38757: <==negation-removal== 36671 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #80383: <==negation-removal== 20556 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #48853: <==closure== 68036 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #68036: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18191: <==negation-removal== 68036 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #50533: <==negation-removal== 48853 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p10_d_a_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_a)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #20481: <==closure== 91061 (pos)
                    (Pa_not_survivorat_s_p10)

                    ; #91061: origin
                    (Ba_not_survivorat_s_p10)

                    ; #10462: <==negation-removal== 91061 (pos)
                    (not (Pa_survivorat_s_p10))

                    ; #64260: <==negation-removal== 20481 (pos)
                    (not (Ba_survivorat_s_p10))))

    (:action badcomm_p10_d_b_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_b)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #59579: origin
                    (Bb_not_survivorat_s_p10)

                    ; #73544: <==closure== 59579 (pos)
                    (Pb_not_survivorat_s_p10)

                    ; #58883: <==negation-removal== 73544 (pos)
                    (not (Bb_survivorat_s_p10))

                    ; #69820: <==negation-removal== 59579 (pos)
                    (not (Pb_survivorat_s_p10))))

    (:action badcomm_p10_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #20556: <==closure== 36671 (pos)
                    (Pc_not_survivorat_s_p10)

                    ; #36671: origin
                    (Bc_not_survivorat_s_p10)

                    ; #38757: <==negation-removal== 36671 (pos)
                    (not (Pc_survivorat_s_p10))

                    ; #80383: <==negation-removal== 20556 (pos)
                    (not (Bc_survivorat_s_p10))))

    (:action badcomm_p10_d_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_d)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #48853: <==closure== 68036 (pos)
                    (Pd_not_survivorat_s_p10)

                    ; #68036: origin
                    (Bd_not_survivorat_s_p10)

                    ; #18191: <==negation-removal== 68036 (pos)
                    (not (Pd_survivorat_s_p10))

                    ; #50533: <==negation-removal== 48853 (pos)
                    (not (Bd_survivorat_s_p10))))

    (:action badcomm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #32001: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39116: <==closure== 32001 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #48383: <==negation-removal== 39116 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #64424: <==negation-removal== 32001 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #18051: <==closure== 50770 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #50770: origin
                    (Bb_not_survivorat_s_p11)

                    ; #53568: <==negation-removal== 50770 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #88588: <==negation-removal== 18051 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #85848: <==closure== 91091 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #91091: origin
                    (Bc_not_survivorat_s_p11)

                    ; #46540: <==negation-removal== 85848 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #90738: <==negation-removal== 91091 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #12039: origin
                    (Bd_not_survivorat_s_p11)

                    ; #26297: <==closure== 12039 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #32501: <==negation-removal== 26297 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #78346: <==negation-removal== 12039 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #32001: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39116: <==closure== 32001 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #48383: <==negation-removal== 39116 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #64424: <==negation-removal== 32001 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #18051: <==closure== 50770 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #50770: origin
                    (Bb_not_survivorat_s_p11)

                    ; #53568: <==negation-removal== 50770 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #88588: <==negation-removal== 18051 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #85848: <==closure== 91091 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #91091: origin
                    (Bc_not_survivorat_s_p11)

                    ; #46540: <==negation-removal== 85848 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #90738: <==negation-removal== 91091 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_b_d_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_d)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #12039: origin
                    (Bd_not_survivorat_s_p11)

                    ; #26297: <==closure== 12039 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #32501: <==negation-removal== 26297 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #78346: <==negation-removal== 12039 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_c_a_s
        :precondition (and (at_c_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #32001: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39116: <==closure== 32001 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #48383: <==negation-removal== 39116 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #64424: <==negation-removal== 32001 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (leader_b)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #18051: <==closure== 50770 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #50770: origin
                    (Bb_not_survivorat_s_p11)

                    ; #53568: <==negation-removal== 50770 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #88588: <==negation-removal== 18051 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_c_c_s
        :precondition (and (leader_c)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #85848: <==closure== 91091 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #91091: origin
                    (Bc_not_survivorat_s_p11)

                    ; #46540: <==negation-removal== 85848 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #90738: <==negation-removal== 91091 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_c_d_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_d)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #12039: origin
                    (Bd_not_survivorat_s_p11)

                    ; #26297: <==closure== 12039 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #32501: <==negation-removal== 26297 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #78346: <==negation-removal== 12039 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p11_d_a_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #32001: origin
                    (Ba_not_survivorat_s_p11)

                    ; #39116: <==closure== 32001 (pos)
                    (Pa_not_survivorat_s_p11)

                    ; #48383: <==negation-removal== 39116 (pos)
                    (not (Ba_survivorat_s_p11))

                    ; #64424: <==negation-removal== 32001 (pos)
                    (not (Pa_survivorat_s_p11))))

    (:action badcomm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #18051: <==closure== 50770 (pos)
                    (Pb_not_survivorat_s_p11)

                    ; #50770: origin
                    (Bb_not_survivorat_s_p11)

                    ; #53568: <==negation-removal== 50770 (pos)
                    (not (Pb_survivorat_s_p11))

                    ; #88588: <==negation-removal== 18051 (pos)
                    (not (Bb_survivorat_s_p11))))

    (:action badcomm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #85848: <==closure== 91091 (pos)
                    (Pc_not_survivorat_s_p11)

                    ; #91091: origin
                    (Bc_not_survivorat_s_p11)

                    ; #46540: <==negation-removal== 85848 (pos)
                    (not (Bc_survivorat_s_p11))

                    ; #90738: <==negation-removal== 91091 (pos)
                    (not (Pc_survivorat_s_p11))))

    (:action badcomm_p11_d_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #12039: origin
                    (Bd_not_survivorat_s_p11)

                    ; #26297: <==closure== 12039 (pos)
                    (Pd_not_survivorat_s_p11)

                    ; #32501: <==negation-removal== 26297 (pos)
                    (not (Bd_survivorat_s_p11))

                    ; #78346: <==negation-removal== 12039 (pos)
                    (not (Pd_survivorat_s_p11))))

    (:action badcomm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #12612: <==closure== 69518 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #69518: origin
                    (Ba_not_survivorat_s_p12)

                    ; #69943: <==negation-removal== 12612 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #86640: <==negation-removal== 69518 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #14147: <==closure== 44929 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #44929: origin
                    (Bb_not_survivorat_s_p12)

                    ; #73035: <==negation-removal== 44929 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78376: <==negation-removal== 14147 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #62167: origin
                    (Bc_not_survivorat_s_p12)

                    ; #83130: <==closure== 62167 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #46683: <==negation-removal== 62167 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #85058: <==negation-removal== 83130 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #18357: <==closure== 91930 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #91930: origin
                    (Bd_not_survivorat_s_p12)

                    ; #19610: <==negation-removal== 18357 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82813: <==negation-removal== 91930 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_b_a_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #12612: <==closure== 69518 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #69518: origin
                    (Ba_not_survivorat_s_p12)

                    ; #69943: <==negation-removal== 12612 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #86640: <==negation-removal== 69518 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_b_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #14147: <==closure== 44929 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #44929: origin
                    (Bb_not_survivorat_s_p12)

                    ; #73035: <==negation-removal== 44929 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78376: <==negation-removal== 14147 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_b_c_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #62167: origin
                    (Bc_not_survivorat_s_p12)

                    ; #83130: <==closure== 62167 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #46683: <==negation-removal== 62167 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #85058: <==negation-removal== 83130 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_b_d_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #18357: <==closure== 91930 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #91930: origin
                    (Bd_not_survivorat_s_p12)

                    ; #19610: <==negation-removal== 18357 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82813: <==negation-removal== 91930 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #12612: <==closure== 69518 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #69518: origin
                    (Ba_not_survivorat_s_p12)

                    ; #69943: <==negation-removal== 12612 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #86640: <==negation-removal== 69518 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #14147: <==closure== 44929 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #44929: origin
                    (Bb_not_survivorat_s_p12)

                    ; #73035: <==negation-removal== 44929 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78376: <==negation-removal== 14147 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_c_c_s
        :precondition (and (leader_c)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #62167: origin
                    (Bc_not_survivorat_s_p12)

                    ; #83130: <==closure== 62167 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #46683: <==negation-removal== 62167 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #85058: <==negation-removal== 83130 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_d)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #18357: <==closure== 91930 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #91930: origin
                    (Bd_not_survivorat_s_p12)

                    ; #19610: <==negation-removal== 18357 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82813: <==negation-removal== 91930 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p12_d_a_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #12612: <==closure== 69518 (pos)
                    (Pa_not_survivorat_s_p12)

                    ; #69518: origin
                    (Ba_not_survivorat_s_p12)

                    ; #69943: <==negation-removal== 12612 (pos)
                    (not (Ba_survivorat_s_p12))

                    ; #86640: <==negation-removal== 69518 (pos)
                    (not (Pa_survivorat_s_p12))))

    (:action badcomm_p12_d_b_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_b)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #14147: <==closure== 44929 (pos)
                    (Pb_not_survivorat_s_p12)

                    ; #44929: origin
                    (Bb_not_survivorat_s_p12)

                    ; #73035: <==negation-removal== 44929 (pos)
                    (not (Pb_survivorat_s_p12))

                    ; #78376: <==negation-removal== 14147 (pos)
                    (not (Bb_survivorat_s_p12))))

    (:action badcomm_p12_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #62167: origin
                    (Bc_not_survivorat_s_p12)

                    ; #83130: <==closure== 62167 (pos)
                    (Pc_not_survivorat_s_p12)

                    ; #46683: <==negation-removal== 62167 (pos)
                    (not (Pc_survivorat_s_p12))

                    ; #85058: <==negation-removal== 83130 (pos)
                    (not (Bc_survivorat_s_p12))))

    (:action badcomm_p12_d_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (leader_d)
                           (at_d_p12))
        :effect (and
                    ; #18357: <==closure== 91930 (pos)
                    (Pd_not_survivorat_s_p12)

                    ; #91930: origin
                    (Bd_not_survivorat_s_p12)

                    ; #19610: <==negation-removal== 18357 (pos)
                    (not (Bd_survivorat_s_p12))

                    ; #82813: <==negation-removal== 91930 (pos)
                    (not (Pd_survivorat_s_p12))))

    (:action badcomm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #23876: <==closure== 39158 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #39158: origin
                    (Ba_not_survivorat_s_p1)

                    ; #20494: <==negation-removal== 39158 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86303: <==negation-removal== 23876 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #30691: origin
                    (Bb_not_survivorat_s_p1)

                    ; #76194: <==closure== 30691 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #17977: <==negation-removal== 76194 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #64532: <==negation-removal== 30691 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #34887: <==closure== 42625 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #42625: origin
                    (Bc_not_survivorat_s_p1)

                    ; #22515: <==negation-removal== 34887 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #34775: <==negation-removal== 42625 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_a_d_s
        :precondition (and (at_a_p1)
                           (leader_d)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #43217: <==closure== 71601 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #71601: origin
                    (Bd_not_survivorat_s_p1)

                    ; #28441: <==negation-removal== 71601 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76477: <==negation-removal== 43217 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #23876: <==closure== 39158 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #39158: origin
                    (Ba_not_survivorat_s_p1)

                    ; #20494: <==negation-removal== 39158 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86303: <==negation-removal== 23876 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #30691: origin
                    (Bb_not_survivorat_s_p1)

                    ; #76194: <==closure== 30691 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #17977: <==negation-removal== 76194 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #64532: <==negation-removal== 30691 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #34887: <==closure== 42625 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #42625: origin
                    (Bc_not_survivorat_s_p1)

                    ; #22515: <==negation-removal== 34887 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #34775: <==negation-removal== 42625 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_b_d_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_d)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #43217: <==closure== 71601 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #71601: origin
                    (Bd_not_survivorat_s_p1)

                    ; #28441: <==negation-removal== 71601 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76477: <==negation-removal== 43217 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #23876: <==closure== 39158 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #39158: origin
                    (Ba_not_survivorat_s_p1)

                    ; #20494: <==negation-removal== 39158 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86303: <==negation-removal== 23876 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #30691: origin
                    (Bb_not_survivorat_s_p1)

                    ; #76194: <==closure== 30691 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #17977: <==negation-removal== 76194 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #64532: <==negation-removal== 30691 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #34887: <==closure== 42625 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #42625: origin
                    (Bc_not_survivorat_s_p1)

                    ; #22515: <==negation-removal== 34887 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #34775: <==negation-removal== 42625 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #43217: <==closure== 71601 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #71601: origin
                    (Bd_not_survivorat_s_p1)

                    ; #28441: <==negation-removal== 71601 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76477: <==negation-removal== 43217 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p1_d_a_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_a)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #23876: <==closure== 39158 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #39158: origin
                    (Ba_not_survivorat_s_p1)

                    ; #20494: <==negation-removal== 39158 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86303: <==negation-removal== 23876 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_d_b_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_b)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #30691: origin
                    (Bb_not_survivorat_s_p1)

                    ; #76194: <==closure== 30691 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #17977: <==negation-removal== 76194 (pos)
                    (not (Bb_survivorat_s_p1))

                    ; #64532: <==negation-removal== 30691 (pos)
                    (not (Pb_survivorat_s_p1))))

    (:action badcomm_p1_d_c_s
        :precondition (and (leader_c)
                           (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #34887: <==closure== 42625 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #42625: origin
                    (Bc_not_survivorat_s_p1)

                    ; #22515: <==negation-removal== 34887 (pos)
                    (not (Bc_survivorat_s_p1))

                    ; #34775: <==negation-removal== 42625 (pos)
                    (not (Pc_survivorat_s_p1))))

    (:action badcomm_p1_d_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_d)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #43217: <==closure== 71601 (pos)
                    (Pd_not_survivorat_s_p1)

                    ; #71601: origin
                    (Bd_not_survivorat_s_p1)

                    ; #28441: <==negation-removal== 71601 (pos)
                    (not (Pd_survivorat_s_p1))

                    ; #76477: <==negation-removal== 43217 (pos)
                    (not (Bd_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2))
        :effect (and
                    ; #72359: origin
                    (Ba_not_survivorat_s_p2)

                    ; #89452: <==closure== 72359 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #15441: <==negation-removal== 72359 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45548: <==negation-removal== 89452 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2))
        :effect (and
                    ; #18756: origin
                    (Bb_not_survivorat_s_p2)

                    ; #27517: <==closure== 18756 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #49826: <==negation-removal== 27517 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #55795: <==negation-removal== 18756 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c))
        :effect (and
                    ; #42538: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62734: <==closure== 42538 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #29340: <==negation-removal== 42538 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #72468: <==negation-removal== 62734 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_d)
                           (at_a_p2))
        :effect (and
                    ; #24690: origin
                    (Bd_not_survivorat_s_p2)

                    ; #29045: <==closure== 24690 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #30989: <==negation-removal== 24690 (pos)
                    (not (Pd_survivorat_s_p2))

                    ; #87565: <==negation-removal== 29045 (pos)
                    (not (Bd_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_a))
        :effect (and
                    ; #72359: origin
                    (Ba_not_survivorat_s_p2)

                    ; #89452: <==closure== 72359 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #15441: <==negation-removal== 72359 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45548: <==negation-removal== 89452 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #18756: origin
                    (Bb_not_survivorat_s_p2)

                    ; #27517: <==closure== 18756 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #49826: <==negation-removal== 27517 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #55795: <==negation-removal== 18756 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #42538: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62734: <==closure== 42538 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #29340: <==negation-removal== 42538 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #72468: <==negation-removal== 62734 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_d))
        :effect (and
                    ; #24690: origin
                    (Bd_not_survivorat_s_p2)

                    ; #29045: <==closure== 24690 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #30989: <==negation-removal== 24690 (pos)
                    (not (Pd_survivorat_s_p2))

                    ; #87565: <==negation-removal== 29045 (pos)
                    (not (Bd_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #72359: origin
                    (Ba_not_survivorat_s_p2)

                    ; #89452: <==closure== 72359 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #15441: <==negation-removal== 72359 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45548: <==negation-removal== 89452 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #18756: origin
                    (Bb_not_survivorat_s_p2)

                    ; #27517: <==closure== 18756 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #49826: <==negation-removal== 27517 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #55795: <==negation-removal== 18756 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #42538: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62734: <==closure== 42538 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #29340: <==negation-removal== 42538 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #72468: <==negation-removal== 62734 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_d_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #24690: origin
                    (Bd_not_survivorat_s_p2)

                    ; #29045: <==closure== 24690 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #30989: <==negation-removal== 24690 (pos)
                    (not (Pd_survivorat_s_p2))

                    ; #87565: <==negation-removal== 29045 (pos)
                    (not (Bd_survivorat_s_p2))))

    (:action badcomm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #72359: origin
                    (Ba_not_survivorat_s_p2)

                    ; #89452: <==closure== 72359 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #15441: <==negation-removal== 72359 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45548: <==negation-removal== 89452 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_d_b_s
        :precondition (and (leader_b)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #18756: origin
                    (Bb_not_survivorat_s_p2)

                    ; #27517: <==closure== 18756 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #49826: <==negation-removal== 27517 (pos)
                    (not (Bb_survivorat_s_p2))

                    ; #55795: <==negation-removal== 18756 (pos)
                    (not (Pb_survivorat_s_p2))))

    (:action badcomm_p2_d_c_s
        :precondition (and (leader_c)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #42538: origin
                    (Bc_not_survivorat_s_p2)

                    ; #62734: <==closure== 42538 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #29340: <==negation-removal== 42538 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #72468: <==negation-removal== 62734 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (leader_d)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #24690: origin
                    (Bd_not_survivorat_s_p2)

                    ; #29045: <==closure== 24690 (pos)
                    (Pd_not_survivorat_s_p2)

                    ; #30989: <==negation-removal== 24690 (pos)
                    (not (Pd_survivorat_s_p2))

                    ; #87565: <==negation-removal== 29045 (pos)
                    (not (Bd_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #11148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #82482: <==closure== 11148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #78130: <==negation-removal== 11148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #87094: <==negation-removal== 82482 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_b)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #46372: <==closure== 60897 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #60897: origin
                    (Bb_not_survivorat_s_p3)

                    ; #31792: <==negation-removal== 46372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #78998: <==negation-removal== 60897 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #11226: <==closure== 43883 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #43883: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16384: <==negation-removal== 11226 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #16720: <==negation-removal== 43883 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_a_d_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #71986: origin
                    (Bd_not_survivorat_s_p3)

                    ; #80343: <==closure== 71986 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #43091: <==negation-removal== 80343 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #68369: <==negation-removal== 71986 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #11148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #82482: <==closure== 11148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #78130: <==negation-removal== 11148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #87094: <==negation-removal== 82482 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #46372: <==closure== 60897 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #60897: origin
                    (Bb_not_survivorat_s_p3)

                    ; #31792: <==negation-removal== 46372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #78998: <==negation-removal== 60897 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #11226: <==closure== 43883 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #43883: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16384: <==negation-removal== 11226 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #16720: <==negation-removal== 43883 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_b_d_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_d)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #71986: origin
                    (Bd_not_survivorat_s_p3)

                    ; #80343: <==closure== 71986 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #43091: <==negation-removal== 80343 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #68369: <==negation-removal== 71986 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #11148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #82482: <==closure== 11148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #78130: <==negation-removal== 11148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #87094: <==negation-removal== 82482 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #46372: <==closure== 60897 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #60897: origin
                    (Bb_not_survivorat_s_p3)

                    ; #31792: <==negation-removal== 46372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #78998: <==negation-removal== 60897 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #11226: <==closure== 43883 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #43883: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16384: <==negation-removal== 11226 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #16720: <==negation-removal== 43883 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_c_d_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_d)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #71986: origin
                    (Bd_not_survivorat_s_p3)

                    ; #80343: <==closure== 71986 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #43091: <==negation-removal== 80343 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #68369: <==negation-removal== 71986 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p3_d_a_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_a)
                           (at_d_p3))
        :effect (and
                    ; #11148: origin
                    (Ba_not_survivorat_s_p3)

                    ; #82482: <==closure== 11148 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #78130: <==negation-removal== 11148 (pos)
                    (not (Pa_survivorat_s_p3))

                    ; #87094: <==negation-removal== 82482 (pos)
                    (not (Ba_survivorat_s_p3))))

    (:action badcomm_p3_d_b_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_b)
                           (at_d_p3))
        :effect (and
                    ; #46372: <==closure== 60897 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #60897: origin
                    (Bb_not_survivorat_s_p3)

                    ; #31792: <==negation-removal== 46372 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #78998: <==negation-removal== 60897 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_d_c_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3))
        :effect (and
                    ; #11226: <==closure== 43883 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #43883: origin
                    (Bc_not_survivorat_s_p3)

                    ; #16384: <==negation-removal== 11226 (pos)
                    (not (Bc_survivorat_s_p3))

                    ; #16720: <==negation-removal== 43883 (pos)
                    (not (Pc_survivorat_s_p3))))

    (:action badcomm_p3_d_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_d)
                           (at_d_p3))
        :effect (and
                    ; #71986: origin
                    (Bd_not_survivorat_s_p3)

                    ; #80343: <==closure== 71986 (pos)
                    (Pd_not_survivorat_s_p3)

                    ; #43091: <==negation-removal== 80343 (pos)
                    (not (Bd_survivorat_s_p3))

                    ; #68369: <==negation-removal== 71986 (pos)
                    (not (Pd_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #41996: origin
                    (Ba_not_survivorat_s_p4)

                    ; #45853: <==closure== 41996 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64897: <==negation-removal== 41996 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #73373: <==negation-removal== 45853 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #74728: <==closure== 81111 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #81111: origin
                    (Bb_not_survivorat_s_p4)

                    ; #70849: <==negation-removal== 81111 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #74284: <==negation-removal== 74728 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #67506: <==closure== 99550 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #99550: origin
                    (Bc_not_survivorat_s_p4)

                    ; #79902: <==negation-removal== 99550 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #89123: <==negation-removal== 67506 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_a_d_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_d)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #11079: origin
                    (Bd_not_survivorat_s_p4)

                    ; #37642: <==closure== 11079 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #26971: <==negation-removal== 37642 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #80873: <==negation-removal== 11079 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #41996: origin
                    (Ba_not_survivorat_s_p4)

                    ; #45853: <==closure== 41996 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64897: <==negation-removal== 41996 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #73373: <==negation-removal== 45853 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #74728: <==closure== 81111 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #81111: origin
                    (Bb_not_survivorat_s_p4)

                    ; #70849: <==negation-removal== 81111 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #74284: <==negation-removal== 74728 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #67506: <==closure== 99550 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #99550: origin
                    (Bc_not_survivorat_s_p4)

                    ; #79902: <==negation-removal== 99550 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #89123: <==negation-removal== 67506 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #11079: origin
                    (Bd_not_survivorat_s_p4)

                    ; #37642: <==closure== 11079 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #26971: <==negation-removal== 37642 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #80873: <==negation-removal== 11079 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #41996: origin
                    (Ba_not_survivorat_s_p4)

                    ; #45853: <==closure== 41996 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64897: <==negation-removal== 41996 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #73373: <==negation-removal== 45853 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4))
        :effect (and
                    ; #74728: <==closure== 81111 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #81111: origin
                    (Bb_not_survivorat_s_p4)

                    ; #70849: <==negation-removal== 81111 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #74284: <==negation-removal== 74728 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #67506: <==closure== 99550 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #99550: origin
                    (Bc_not_survivorat_s_p4)

                    ; #79902: <==negation-removal== 99550 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #89123: <==negation-removal== 67506 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_c_d_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_d)
                           (at_c_p4))
        :effect (and
                    ; #11079: origin
                    (Bd_not_survivorat_s_p4)

                    ; #37642: <==closure== 11079 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #26971: <==negation-removal== 37642 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #80873: <==negation-removal== 11079 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p4_d_a_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_a)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #41996: origin
                    (Ba_not_survivorat_s_p4)

                    ; #45853: <==closure== 41996 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #64897: <==negation-removal== 41996 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #73373: <==negation-removal== 45853 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_d_b_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_b)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #74728: <==closure== 81111 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #81111: origin
                    (Bb_not_survivorat_s_p4)

                    ; #70849: <==negation-removal== 81111 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #74284: <==negation-removal== 74728 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #67506: <==closure== 99550 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #99550: origin
                    (Bc_not_survivorat_s_p4)

                    ; #79902: <==negation-removal== 99550 (pos)
                    (not (Pc_survivorat_s_p4))

                    ; #89123: <==negation-removal== 67506 (pos)
                    (not (Bc_survivorat_s_p4))))

    (:action badcomm_p4_d_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_d)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #11079: origin
                    (Bd_not_survivorat_s_p4)

                    ; #37642: <==closure== 11079 (pos)
                    (Pd_not_survivorat_s_p4)

                    ; #26971: <==negation-removal== 37642 (pos)
                    (not (Bd_survivorat_s_p4))

                    ; #80873: <==negation-removal== 11079 (pos)
                    (not (Pd_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #67371: origin
                    (Ba_not_survivorat_s_p5)

                    ; #82259: <==closure== 67371 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #14199: <==negation-removal== 67371 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #67000: <==negation-removal== 82259 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #43147: origin
                    (Bb_not_survivorat_s_p5)

                    ; #85117: <==closure== 43147 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11152: <==negation-removal== 43147 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #77848: <==negation-removal== 85117 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #37704: <==closure== 79552 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #79552: origin
                    (Bc_not_survivorat_s_p5)

                    ; #61101: <==negation-removal== 37704 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90783: <==negation-removal== 79552 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_a_d_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #14484: <==closure== 40298 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #40298: origin
                    (Bd_not_survivorat_s_p5)

                    ; #65806: <==negation-removal== 14484 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #84636: <==negation-removal== 40298 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #67371: origin
                    (Ba_not_survivorat_s_p5)

                    ; #82259: <==closure== 67371 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #14199: <==negation-removal== 67371 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #67000: <==negation-removal== 82259 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #43147: origin
                    (Bb_not_survivorat_s_p5)

                    ; #85117: <==closure== 43147 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11152: <==negation-removal== 43147 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #77848: <==negation-removal== 85117 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #37704: <==closure== 79552 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #79552: origin
                    (Bc_not_survivorat_s_p5)

                    ; #61101: <==negation-removal== 37704 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90783: <==negation-removal== 79552 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_b_d_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_d)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14484: <==closure== 40298 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #40298: origin
                    (Bd_not_survivorat_s_p5)

                    ; #65806: <==negation-removal== 14484 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #84636: <==negation-removal== 40298 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #67371: origin
                    (Ba_not_survivorat_s_p5)

                    ; #82259: <==closure== 67371 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #14199: <==negation-removal== 67371 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #67000: <==negation-removal== 82259 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_b)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #43147: origin
                    (Bb_not_survivorat_s_p5)

                    ; #85117: <==closure== 43147 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11152: <==negation-removal== 43147 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #77848: <==negation-removal== 85117 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #37704: <==closure== 79552 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #79552: origin
                    (Bc_not_survivorat_s_p5)

                    ; #61101: <==negation-removal== 37704 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90783: <==negation-removal== 79552 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_c_d_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_d)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #14484: <==closure== 40298 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #40298: origin
                    (Bd_not_survivorat_s_p5)

                    ; #65806: <==negation-removal== 14484 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #84636: <==negation-removal== 40298 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p5_d_a_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_a)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #67371: origin
                    (Ba_not_survivorat_s_p5)

                    ; #82259: <==closure== 67371 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #14199: <==negation-removal== 67371 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #67000: <==negation-removal== 82259 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_d_b_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #43147: origin
                    (Bb_not_survivorat_s_p5)

                    ; #85117: <==closure== 43147 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11152: <==negation-removal== 43147 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #77848: <==negation-removal== 85117 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #37704: <==closure== 79552 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #79552: origin
                    (Bc_not_survivorat_s_p5)

                    ; #61101: <==negation-removal== 37704 (pos)
                    (not (Bc_survivorat_s_p5))

                    ; #90783: <==negation-removal== 79552 (pos)
                    (not (Pc_survivorat_s_p5))))

    (:action badcomm_p5_d_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_d)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #14484: <==closure== 40298 (pos)
                    (Pd_not_survivorat_s_p5)

                    ; #40298: origin
                    (Bd_not_survivorat_s_p5)

                    ; #65806: <==negation-removal== 14484 (pos)
                    (not (Bd_survivorat_s_p5))

                    ; #84636: <==negation-removal== 40298 (pos)
                    (not (Pd_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #25583: <==closure== 75162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #75162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23218: <==negation-removal== 75162 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #60221: <==negation-removal== 25583 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #20957: <==closure== 36065 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #36065: origin
                    (Bb_not_survivorat_s_p6)

                    ; #42049: <==negation-removal== 36065 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #86693: <==negation-removal== 20957 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (leader_c)
                           (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #10805: <==closure== 65227 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65227: origin
                    (Bc_not_survivorat_s_p6)

                    ; #27140: <==negation-removal== 10805 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #78702: <==negation-removal== 65227 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_a_d_s
        :precondition (and (at_a_p6)
                           (leader_d)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #12138: origin
                    (Bd_not_survivorat_s_p6)

                    ; #71055: <==closure== 12138 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #13758: <==negation-removal== 71055 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #64072: <==negation-removal== 12138 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #25583: <==closure== 75162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #75162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23218: <==negation-removal== 75162 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #60221: <==negation-removal== 25583 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #20957: <==closure== 36065 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #36065: origin
                    (Bb_not_survivorat_s_p6)

                    ; #42049: <==negation-removal== 36065 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #86693: <==negation-removal== 20957 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #10805: <==closure== 65227 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65227: origin
                    (Bc_not_survivorat_s_p6)

                    ; #27140: <==negation-removal== 10805 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #78702: <==negation-removal== 65227 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_d)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12138: origin
                    (Bd_not_survivorat_s_p6)

                    ; #71055: <==closure== 12138 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #13758: <==negation-removal== 71055 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #64072: <==negation-removal== 12138 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #25583: <==closure== 75162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #75162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23218: <==negation-removal== 75162 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #60221: <==negation-removal== 25583 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (leader_b)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #20957: <==closure== 36065 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #36065: origin
                    (Bb_not_survivorat_s_p6)

                    ; #42049: <==negation-removal== 36065 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #86693: <==negation-removal== 20957 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #10805: <==closure== 65227 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65227: origin
                    (Bc_not_survivorat_s_p6)

                    ; #27140: <==negation-removal== 10805 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #78702: <==negation-removal== 65227 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_d_s
        :precondition (and (at_c_p6)
                           (leader_d)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #12138: origin
                    (Bd_not_survivorat_s_p6)

                    ; #71055: <==closure== 12138 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #13758: <==negation-removal== 71055 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #64072: <==negation-removal== 12138 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p6_d_a_s
        :precondition (and (Bd_survivorat_s_p6)
                           (leader_a)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #25583: <==closure== 75162 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #75162: origin
                    (Ba_not_survivorat_s_p6)

                    ; #23218: <==negation-removal== 75162 (pos)
                    (not (Pa_survivorat_s_p6))

                    ; #60221: <==negation-removal== 25583 (pos)
                    (not (Ba_survivorat_s_p6))))

    (:action badcomm_p6_d_b_s
        :precondition (and (Bd_survivorat_s_p6)
                           (leader_b)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #20957: <==closure== 36065 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #36065: origin
                    (Bb_not_survivorat_s_p6)

                    ; #42049: <==negation-removal== 36065 (pos)
                    (not (Pb_survivorat_s_p6))

                    ; #86693: <==negation-removal== 20957 (pos)
                    (not (Bb_survivorat_s_p6))))

    (:action badcomm_p6_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #10805: <==closure== 65227 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #65227: origin
                    (Bc_not_survivorat_s_p6)

                    ; #27140: <==negation-removal== 10805 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #78702: <==negation-removal== 65227 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_d_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (leader_d)
                           (at_d_p6))
        :effect (and
                    ; #12138: origin
                    (Bd_not_survivorat_s_p6)

                    ; #71055: <==closure== 12138 (pos)
                    (Pd_not_survivorat_s_p6)

                    ; #13758: <==negation-removal== 71055 (pos)
                    (not (Bd_survivorat_s_p6))

                    ; #64072: <==negation-removal== 12138 (pos)
                    (not (Pd_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #19128: origin
                    (Ba_not_survivorat_s_p7)

                    ; #39885: <==closure== 19128 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #69927: <==negation-removal== 39885 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #74281: <==negation-removal== 19128 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #53167: origin
                    (Bb_not_survivorat_s_p7)

                    ; #63439: <==closure== 53167 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46394: <==negation-removal== 53167 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65517: <==negation-removal== 63439 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #35333: <==closure== 68601 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68601: origin
                    (Bc_not_survivorat_s_p7)

                    ; #26738: <==negation-removal== 68601 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #28033: <==negation-removal== 35333 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_a_d_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #24744: origin
                    (Bd_not_survivorat_s_p7)

                    ; #86896: <==closure== 24744 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #44287: <==negation-removal== 86896 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #56368: <==negation-removal== 24744 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_a)
                           (at_b_p7))
        :effect (and
                    ; #19128: origin
                    (Ba_not_survivorat_s_p7)

                    ; #39885: <==closure== 19128 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #69927: <==negation-removal== 39885 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #74281: <==negation-removal== 19128 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #53167: origin
                    (Bb_not_survivorat_s_p7)

                    ; #63439: <==closure== 53167 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46394: <==negation-removal== 53167 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65517: <==negation-removal== 63439 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #35333: <==closure== 68601 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68601: origin
                    (Bc_not_survivorat_s_p7)

                    ; #26738: <==negation-removal== 68601 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #28033: <==negation-removal== 35333 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_d_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d))
        :effect (and
                    ; #24744: origin
                    (Bd_not_survivorat_s_p7)

                    ; #86896: <==closure== 24744 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #44287: <==negation-removal== 86896 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #56368: <==negation-removal== 24744 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #19128: origin
                    (Ba_not_survivorat_s_p7)

                    ; #39885: <==closure== 19128 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #69927: <==negation-removal== 39885 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #74281: <==negation-removal== 19128 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #53167: origin
                    (Bb_not_survivorat_s_p7)

                    ; #63439: <==closure== 53167 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46394: <==negation-removal== 53167 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65517: <==negation-removal== 63439 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c))
        :effect (and
                    ; #35333: <==closure== 68601 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68601: origin
                    (Bc_not_survivorat_s_p7)

                    ; #26738: <==negation-removal== 68601 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #28033: <==negation-removal== 35333 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #24744: origin
                    (Bd_not_survivorat_s_p7)

                    ; #86896: <==closure== 24744 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #44287: <==negation-removal== 86896 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #56368: <==negation-removal== 24744 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p7_d_a_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #19128: origin
                    (Ba_not_survivorat_s_p7)

                    ; #39885: <==closure== 19128 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #69927: <==negation-removal== 39885 (pos)
                    (not (Ba_survivorat_s_p7))

                    ; #74281: <==negation-removal== 19128 (pos)
                    (not (Pa_survivorat_s_p7))))

    (:action badcomm_p7_d_b_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #53167: origin
                    (Bb_not_survivorat_s_p7)

                    ; #63439: <==closure== 53167 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46394: <==negation-removal== 53167 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #65517: <==negation-removal== 63439 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_d_c_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #35333: <==closure== 68601 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #68601: origin
                    (Bc_not_survivorat_s_p7)

                    ; #26738: <==negation-removal== 68601 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #28033: <==negation-removal== 35333 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_d_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #24744: origin
                    (Bd_not_survivorat_s_p7)

                    ; #86896: <==closure== 24744 (pos)
                    (Pd_not_survivorat_s_p7)

                    ; #44287: <==negation-removal== 86896 (pos)
                    (not (Bd_survivorat_s_p7))

                    ; #56368: <==negation-removal== 24744 (pos)
                    (not (Pd_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #33318: <==closure== 34971 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #34971: origin
                    (Ba_not_survivorat_s_p8)

                    ; #33097: <==negation-removal== 33318 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #50872: <==negation-removal== 34971 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (leader_b)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #37933: <==closure== 70090 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #70090: origin
                    (Bb_not_survivorat_s_p8)

                    ; #49534: <==negation-removal== 37933 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #91570: <==negation-removal== 70090 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #64391: <==closure== 86325 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #86325: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15461: <==negation-removal== 64391 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #85573: <==negation-removal== 86325 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_a_d_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_d)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #42775: <==closure== 56321 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #56321: origin
                    (Bd_not_survivorat_s_p8)

                    ; #66640: <==negation-removal== 42775 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #81109: <==negation-removal== 56321 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #33318: <==closure== 34971 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #34971: origin
                    (Ba_not_survivorat_s_p8)

                    ; #33097: <==negation-removal== 33318 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #50872: <==negation-removal== 34971 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #37933: <==closure== 70090 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #70090: origin
                    (Bb_not_survivorat_s_p8)

                    ; #49534: <==negation-removal== 37933 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #91570: <==negation-removal== 70090 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #64391: <==closure== 86325 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #86325: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15461: <==negation-removal== 64391 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #85573: <==negation-removal== 86325 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #42775: <==closure== 56321 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #56321: origin
                    (Bd_not_survivorat_s_p8)

                    ; #66640: <==negation-removal== 42775 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #81109: <==negation-removal== 56321 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #33318: <==closure== 34971 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #34971: origin
                    (Ba_not_survivorat_s_p8)

                    ; #33097: <==negation-removal== 33318 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #50872: <==negation-removal== 34971 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #37933: <==closure== 70090 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #70090: origin
                    (Bb_not_survivorat_s_p8)

                    ; #49534: <==negation-removal== 37933 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #91570: <==negation-removal== 70090 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #64391: <==closure== 86325 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #86325: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15461: <==negation-removal== 64391 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #85573: <==negation-removal== 86325 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_d_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_d)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #42775: <==closure== 56321 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #56321: origin
                    (Bd_not_survivorat_s_p8)

                    ; #66640: <==negation-removal== 42775 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #81109: <==negation-removal== 56321 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p8_d_a_s
        :precondition (and (at_d_p8)
                           (leader_a)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #33318: <==closure== 34971 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #34971: origin
                    (Ba_not_survivorat_s_p8)

                    ; #33097: <==negation-removal== 33318 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #50872: <==negation-removal== 34971 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_d_b_s
        :precondition (and (at_d_p8)
                           (leader_b)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #37933: <==closure== 70090 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #70090: origin
                    (Bb_not_survivorat_s_p8)

                    ; #49534: <==negation-removal== 37933 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #91570: <==negation-removal== 70090 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (leader_c)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #64391: <==closure== 86325 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #86325: origin
                    (Bc_not_survivorat_s_p8)

                    ; #15461: <==negation-removal== 64391 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #85573: <==negation-removal== 86325 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (leader_d)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #42775: <==closure== 56321 (pos)
                    (Pd_not_survivorat_s_p8)

                    ; #56321: origin
                    (Bd_not_survivorat_s_p8)

                    ; #66640: <==negation-removal== 42775 (pos)
                    (not (Bd_survivorat_s_p8))

                    ; #81109: <==negation-removal== 56321 (pos)
                    (not (Pd_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_a))
        :effect (and
                    ; #43760: <==closure== 64469 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64469: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33952: <==negation-removal== 64469 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #41321: <==negation-removal== 43760 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_b))
        :effect (and
                    ; #39236: <==closure== 77057 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #77057: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44567: <==negation-removal== 77057 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #56493: <==negation-removal== 39236 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_c))
        :effect (and
                    ; #25908: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82233: <==closure== 25908 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #70479: <==negation-removal== 25908 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70896: <==negation-removal== 82233 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_a_d_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_d))
        :effect (and
                    ; #39657: <==closure== 88219 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #88219: origin
                    (Bd_not_survivorat_s_p9)

                    ; #17034: <==negation-removal== 88219 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #84770: <==negation-removal== 39657 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #43760: <==closure== 64469 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64469: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33952: <==negation-removal== 64469 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #41321: <==negation-removal== 43760 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #39236: <==closure== 77057 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #77057: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44567: <==negation-removal== 77057 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #56493: <==negation-removal== 39236 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #25908: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82233: <==closure== 25908 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #70479: <==negation-removal== 25908 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70896: <==negation-removal== 82233 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_b_d_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #39657: <==closure== 88219 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #88219: origin
                    (Bd_not_survivorat_s_p9)

                    ; #17034: <==negation-removal== 88219 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #84770: <==negation-removal== 39657 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #43760: <==closure== 64469 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64469: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33952: <==negation-removal== 64469 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #41321: <==negation-removal== 43760 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #39236: <==closure== 77057 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #77057: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44567: <==negation-removal== 77057 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #56493: <==negation-removal== 39236 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #25908: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82233: <==closure== 25908 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #70479: <==negation-removal== 25908 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70896: <==negation-removal== 82233 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_c_d_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #39657: <==closure== 88219 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #88219: origin
                    (Bd_not_survivorat_s_p9)

                    ; #17034: <==negation-removal== 88219 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #84770: <==negation-removal== 39657 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action badcomm_p9_d_a_s
        :precondition (and (at_d_p9)
                           (leader_a)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #43760: <==closure== 64469 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #64469: origin
                    (Ba_not_survivorat_s_p9)

                    ; #33952: <==negation-removal== 64469 (pos)
                    (not (Pa_survivorat_s_p9))

                    ; #41321: <==negation-removal== 43760 (pos)
                    (not (Ba_survivorat_s_p9))))

    (:action badcomm_p9_d_b_s
        :precondition (and (at_d_p9)
                           (leader_b)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #39236: <==closure== 77057 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #77057: origin
                    (Bb_not_survivorat_s_p9)

                    ; #44567: <==negation-removal== 77057 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #56493: <==negation-removal== 39236 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #25908: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82233: <==closure== 25908 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #70479: <==negation-removal== 25908 (pos)
                    (not (Pc_survivorat_s_p9))

                    ; #70896: <==negation-removal== 82233 (pos)
                    (not (Bc_survivorat_s_p9))))

    (:action badcomm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #39657: <==closure== 88219 (pos)
                    (Pd_not_survivorat_s_p9)

                    ; #88219: origin
                    (Bd_not_survivorat_s_p9)

                    ; #17034: <==negation-removal== 88219 (pos)
                    (not (Pd_survivorat_s_p9))

                    ; #84770: <==negation-removal== 39657 (pos)
                    (not (Bd_survivorat_s_p9))))

    (:action comm_p10_a_a_s
        :precondition (and (at_a_p10)
                           (leader_a)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #10462: <==closure== 64260 (pos)
                    (Pa_survivorat_s_p10)

                    ; #64260: origin
                    (Ba_survivorat_s_p10)

                    ; #20481: <==negation-removal== 64260 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91061: <==negation-removal== 10462 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_a_b_s
        :precondition (and (at_a_p10)
                           (leader_b)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #58883: origin
                    (Bb_survivorat_s_p10)

                    ; #69820: <==closure== 58883 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59579: <==negation-removal== 69820 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73544: <==negation-removal== 58883 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_a_c_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #38757: <==closure== 80383 (pos)
                    (Pc_survivorat_s_p10)

                    ; #80383: origin
                    (Bc_survivorat_s_p10)

                    ; #20556: <==negation-removal== 80383 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36671: <==negation-removal== 38757 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_a_d_s
        :precondition (and (at_a_p10)
                           (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #18191: <==closure== 50533 (pos)
                    (Pd_survivorat_s_p10)

                    ; #50533: origin
                    (Bd_survivorat_s_p10)

                    ; #48853: <==negation-removal== 50533 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #68036: <==negation-removal== 18191 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_b_a_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_a)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #10462: <==closure== 64260 (pos)
                    (Pa_survivorat_s_p10)

                    ; #64260: origin
                    (Ba_survivorat_s_p10)

                    ; #20481: <==negation-removal== 64260 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91061: <==negation-removal== 10462 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_b_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (leader_b)
                           (Pb_survivorat_s_p10))
        :effect (and
                    ; #58883: origin
                    (Bb_survivorat_s_p10)

                    ; #69820: <==closure== 58883 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59579: <==negation-removal== 69820 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73544: <==negation-removal== 58883 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_b_c_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #38757: <==closure== 80383 (pos)
                    (Pc_survivorat_s_p10)

                    ; #80383: origin
                    (Bc_survivorat_s_p10)

                    ; #20556: <==negation-removal== 80383 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36671: <==negation-removal== 38757 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_d_s
        :precondition (and (Bb_survivorat_s_p10)
                           (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #18191: <==closure== 50533 (pos)
                    (Pd_survivorat_s_p10)

                    ; #50533: origin
                    (Bd_survivorat_s_p10)

                    ; #48853: <==negation-removal== 50533 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #68036: <==negation-removal== 18191 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_c_a_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_a))
        :effect (and
                    ; #10462: <==closure== 64260 (pos)
                    (Pa_survivorat_s_p10)

                    ; #64260: origin
                    (Ba_survivorat_s_p10)

                    ; #20481: <==negation-removal== 64260 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91061: <==negation-removal== 10462 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_c_b_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_b))
        :effect (and
                    ; #58883: origin
                    (Bb_survivorat_s_p10)

                    ; #69820: <==closure== 58883 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59579: <==negation-removal== 69820 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73544: <==negation-removal== 58883 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_c_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_c))
        :effect (and
                    ; #38757: <==closure== 80383 (pos)
                    (Pc_survivorat_s_p10)

                    ; #80383: origin
                    (Bc_survivorat_s_p10)

                    ; #20556: <==negation-removal== 80383 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36671: <==negation-removal== 38757 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_d_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (leader_d))
        :effect (and
                    ; #18191: <==closure== 50533 (pos)
                    (Pd_survivorat_s_p10)

                    ; #50533: origin
                    (Bd_survivorat_s_p10)

                    ; #48853: <==negation-removal== 50533 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #68036: <==negation-removal== 18191 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p10_d_a_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_a)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #10462: <==closure== 64260 (pos)
                    (Pa_survivorat_s_p10)

                    ; #64260: origin
                    (Ba_survivorat_s_p10)

                    ; #20481: <==negation-removal== 64260 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91061: <==negation-removal== 10462 (pos)
                    (not (Ba_not_survivorat_s_p10))))

    (:action comm_p10_d_b_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_b)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #58883: origin
                    (Bb_survivorat_s_p10)

                    ; #69820: <==closure== 58883 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59579: <==negation-removal== 69820 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #73544: <==negation-removal== 58883 (pos)
                    (not (Pb_not_survivorat_s_p10))))

    (:action comm_p10_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #38757: <==closure== 80383 (pos)
                    (Pc_survivorat_s_p10)

                    ; #80383: origin
                    (Bc_survivorat_s_p10)

                    ; #20556: <==negation-removal== 80383 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #36671: <==negation-removal== 38757 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_d_d_s
        :precondition (and (Bd_survivorat_s_p10)
                           (at_d_p10)
                           (leader_d)
                           (Pd_survivorat_s_p10))
        :effect (and
                    ; #18191: <==closure== 50533 (pos)
                    (Pd_survivorat_s_p10)

                    ; #50533: origin
                    (Bd_survivorat_s_p10)

                    ; #48853: <==negation-removal== 50533 (pos)
                    (not (Pd_not_survivorat_s_p10))

                    ; #68036: <==negation-removal== 18191 (pos)
                    (not (Bd_not_survivorat_s_p10))))

    (:action comm_p11_a_a_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #48383: origin
                    (Ba_survivorat_s_p11)

                    ; #64424: <==closure== 48383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #32001: <==negation-removal== 64424 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #39116: <==negation-removal== 48383 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_a_b_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #53568: <==closure== 88588 (pos)
                    (Pb_survivorat_s_p11)

                    ; #88588: origin
                    (Bb_survivorat_s_p11)

                    ; #18051: <==negation-removal== 88588 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50770: <==negation-removal== 53568 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_a_c_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #46540: origin
                    (Bc_survivorat_s_p11)

                    ; #90738: <==closure== 46540 (pos)
                    (Pc_survivorat_s_p11)

                    ; #85848: <==negation-removal== 46540 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #91091: <==negation-removal== 90738 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_a_d_s
        :precondition (and (at_a_p11)
                           (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #32501: origin
                    (Bd_survivorat_s_p11)

                    ; #78346: <==closure== 32501 (pos)
                    (Pd_survivorat_s_p11)

                    ; #12039: <==negation-removal== 78346 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #26297: <==negation-removal== 32501 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #48383: origin
                    (Ba_survivorat_s_p11)

                    ; #64424: <==closure== 48383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #32001: <==negation-removal== 64424 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #39116: <==negation-removal== 48383 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #53568: <==closure== 88588 (pos)
                    (Pb_survivorat_s_p11)

                    ; #88588: origin
                    (Bb_survivorat_s_p11)

                    ; #18051: <==negation-removal== 88588 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50770: <==negation-removal== 53568 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #46540: origin
                    (Bc_survivorat_s_p11)

                    ; #90738: <==closure== 46540 (pos)
                    (Pc_survivorat_s_p11)

                    ; #85848: <==negation-removal== 46540 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #91091: <==negation-removal== 90738 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_d_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (leader_d)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #32501: origin
                    (Bd_survivorat_s_p11)

                    ; #78346: <==closure== 32501 (pos)
                    (Pd_survivorat_s_p11)

                    ; #12039: <==negation-removal== 78346 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #26297: <==negation-removal== 32501 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_c_a_s
        :precondition (and (at_c_p11)
                           (leader_a)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #48383: origin
                    (Ba_survivorat_s_p11)

                    ; #64424: <==closure== 48383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #32001: <==negation-removal== 64424 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #39116: <==negation-removal== 48383 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_c_b_s
        :precondition (and (at_c_p11)
                           (leader_b)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #53568: <==closure== 88588 (pos)
                    (Pb_survivorat_s_p11)

                    ; #88588: origin
                    (Bb_survivorat_s_p11)

                    ; #18051: <==negation-removal== 88588 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50770: <==negation-removal== 53568 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_c_s
        :precondition (and (leader_c)
                           (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #46540: origin
                    (Bc_survivorat_s_p11)

                    ; #90738: <==closure== 46540 (pos)
                    (Pc_survivorat_s_p11)

                    ; #85848: <==negation-removal== 46540 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #91091: <==negation-removal== 90738 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_d_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (leader_d)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #32501: origin
                    (Bd_survivorat_s_p11)

                    ; #78346: <==closure== 32501 (pos)
                    (Pd_survivorat_s_p11)

                    ; #12039: <==negation-removal== 78346 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #26297: <==negation-removal== 32501 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p11_d_a_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_a))
        :effect (and
                    ; #48383: origin
                    (Ba_survivorat_s_p11)

                    ; #64424: <==closure== 48383 (pos)
                    (Pa_survivorat_s_p11)

                    ; #32001: <==negation-removal== 64424 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #39116: <==negation-removal== 48383 (pos)
                    (not (Pa_not_survivorat_s_p11))))

    (:action comm_p11_d_b_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_b))
        :effect (and
                    ; #53568: <==closure== 88588 (pos)
                    (Pb_survivorat_s_p11)

                    ; #88588: origin
                    (Bb_survivorat_s_p11)

                    ; #18051: <==negation-removal== 88588 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #50770: <==negation-removal== 53568 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_d_c_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_c))
        :effect (and
                    ; #46540: origin
                    (Bc_survivorat_s_p11)

                    ; #90738: <==closure== 46540 (pos)
                    (Pc_survivorat_s_p11)

                    ; #85848: <==negation-removal== 46540 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #91091: <==negation-removal== 90738 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_d_d_s
        :precondition (and (Bd_survivorat_s_p11)
                           (at_d_p11)
                           (Pd_survivorat_s_p11)
                           (leader_d))
        :effect (and
                    ; #32501: origin
                    (Bd_survivorat_s_p11)

                    ; #78346: <==closure== 32501 (pos)
                    (Pd_survivorat_s_p11)

                    ; #12039: <==negation-removal== 78346 (pos)
                    (not (Bd_not_survivorat_s_p11))

                    ; #26297: <==negation-removal== 32501 (pos)
                    (not (Pd_not_survivorat_s_p11))))

    (:action comm_p12_a_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #69943: origin
                    (Ba_survivorat_s_p12)

                    ; #86640: <==closure== 69943 (pos)
                    (Pa_survivorat_s_p12)

                    ; #12612: <==negation-removal== 69943 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69518: <==negation-removal== 86640 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_a_b_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #73035: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78376: origin
                    (Bb_survivorat_s_p12)

                    ; #14147: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44929: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_a_c_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #46683: <==closure== 85058 (pos)
                    (Pc_survivorat_s_p12)

                    ; #85058: origin
                    (Bc_survivorat_s_p12)

                    ; #62167: <==negation-removal== 46683 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83130: <==negation-removal== 85058 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_a_d_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #19610: origin
                    (Bd_survivorat_s_p12)

                    ; #82813: <==closure== 19610 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18357: <==negation-removal== 19610 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #91930: <==negation-removal== 82813 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_b_a_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_a))
        :effect (and
                    ; #69943: origin
                    (Ba_survivorat_s_p12)

                    ; #86640: <==closure== 69943 (pos)
                    (Pa_survivorat_s_p12)

                    ; #12612: <==negation-removal== 69943 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69518: <==negation-removal== 86640 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_b_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_b))
        :effect (and
                    ; #73035: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78376: origin
                    (Bb_survivorat_s_p12)

                    ; #14147: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44929: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_c_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_c))
        :effect (and
                    ; #46683: <==closure== 85058 (pos)
                    (Pc_survivorat_s_p12)

                    ; #85058: origin
                    (Bc_survivorat_s_p12)

                    ; #62167: <==negation-removal== 46683 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83130: <==negation-removal== 85058 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_b_d_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12)
                           (leader_d))
        :effect (and
                    ; #19610: origin
                    (Bd_survivorat_s_p12)

                    ; #82813: <==closure== 19610 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18357: <==negation-removal== 19610 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #91930: <==negation-removal== 82813 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_c_a_s
        :precondition (and (at_c_p12)
                           (leader_a)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #69943: origin
                    (Ba_survivorat_s_p12)

                    ; #86640: <==closure== 69943 (pos)
                    (Pa_survivorat_s_p12)

                    ; #12612: <==negation-removal== 69943 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69518: <==negation-removal== 86640 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_c_b_s
        :precondition (and (at_c_p12)
                           (leader_b)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #73035: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78376: origin
                    (Bb_survivorat_s_p12)

                    ; #14147: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44929: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_c_s
        :precondition (and (leader_c)
                           (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #46683: <==closure== 85058 (pos)
                    (Pc_survivorat_s_p12)

                    ; #85058: origin
                    (Bc_survivorat_s_p12)

                    ; #62167: <==negation-removal== 46683 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83130: <==negation-removal== 85058 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_c_d_s
        :precondition (and (at_c_p12)
                           (Bc_survivorat_s_p12)
                           (leader_d)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #19610: origin
                    (Bd_survivorat_s_p12)

                    ; #82813: <==closure== 19610 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18357: <==negation-removal== 19610 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #91930: <==negation-removal== 82813 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p12_d_a_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_a)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #69943: origin
                    (Ba_survivorat_s_p12)

                    ; #86640: <==closure== 69943 (pos)
                    (Pa_survivorat_s_p12)

                    ; #12612: <==negation-removal== 69943 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #69518: <==negation-removal== 86640 (pos)
                    (not (Ba_not_survivorat_s_p12))))

    (:action comm_p12_d_b_s
        :precondition (and (Bd_survivorat_s_p12)
                           (leader_b)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #73035: <==closure== 78376 (pos)
                    (Pb_survivorat_s_p12)

                    ; #78376: origin
                    (Bb_survivorat_s_p12)

                    ; #14147: <==negation-removal== 78376 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44929: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (at_d_p12))
        :effect (and
                    ; #46683: <==closure== 85058 (pos)
                    (Pc_survivorat_s_p12)

                    ; #85058: origin
                    (Bc_survivorat_s_p12)

                    ; #62167: <==negation-removal== 46683 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #83130: <==negation-removal== 85058 (pos)
                    (not (Pc_not_survivorat_s_p12))))

    (:action comm_p12_d_d_s
        :precondition (and (Bd_survivorat_s_p12)
                           (Pd_survivorat_s_p12)
                           (leader_d)
                           (at_d_p12))
        :effect (and
                    ; #19610: origin
                    (Bd_survivorat_s_p12)

                    ; #82813: <==closure== 19610 (pos)
                    (Pd_survivorat_s_p12)

                    ; #18357: <==negation-removal== 19610 (pos)
                    (not (Pd_not_survivorat_s_p12))

                    ; #91930: <==negation-removal== 82813 (pos)
                    (not (Bd_not_survivorat_s_p12))))

    (:action comm_p1_a_a_s
        :precondition (and (at_a_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #20494: <==closure== 86303 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86303: origin
                    (Ba_survivorat_s_p1)

                    ; #23876: <==negation-removal== 86303 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39158: <==negation-removal== 20494 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (at_a_p1)
                           (leader_b)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #17977: origin
                    (Bb_survivorat_s_p1)

                    ; #64532: <==closure== 17977 (pos)
                    (Pb_survivorat_s_p1)

                    ; #30691: <==negation-removal== 64532 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76194: <==negation-removal== 17977 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (at_a_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #22515: origin
                    (Bc_survivorat_s_p1)

                    ; #34775: <==closure== 22515 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34887: <==negation-removal== 22515 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #42625: <==negation-removal== 34775 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_a_d_s
        :precondition (and (at_a_p1)
                           (leader_d)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #28441: <==closure== 76477 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76477: origin
                    (Bd_survivorat_s_p1)

                    ; #43217: <==negation-removal== 76477 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71601: <==negation-removal== 28441 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #20494: <==closure== 86303 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86303: origin
                    (Ba_survivorat_s_p1)

                    ; #23876: <==negation-removal== 86303 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39158: <==negation-removal== 20494 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #17977: origin
                    (Bb_survivorat_s_p1)

                    ; #64532: <==closure== 17977 (pos)
                    (Pb_survivorat_s_p1)

                    ; #30691: <==negation-removal== 64532 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76194: <==negation-removal== 17977 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #22515: origin
                    (Bc_survivorat_s_p1)

                    ; #34775: <==closure== 22515 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34887: <==negation-removal== 22515 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #42625: <==negation-removal== 34775 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_d_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (leader_d)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #28441: <==closure== 76477 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76477: origin
                    (Bd_survivorat_s_p1)

                    ; #43217: <==negation-removal== 76477 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71601: <==negation-removal== 28441 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20494: <==closure== 86303 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86303: origin
                    (Ba_survivorat_s_p1)

                    ; #23876: <==negation-removal== 86303 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39158: <==negation-removal== 20494 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #17977: origin
                    (Bb_survivorat_s_p1)

                    ; #64532: <==closure== 17977 (pos)
                    (Pb_survivorat_s_p1)

                    ; #30691: <==negation-removal== 64532 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76194: <==negation-removal== 17977 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #22515: origin
                    (Bc_survivorat_s_p1)

                    ; #34775: <==closure== 22515 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34887: <==negation-removal== 22515 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #42625: <==negation-removal== 34775 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_d_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (leader_d)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #28441: <==closure== 76477 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76477: origin
                    (Bd_survivorat_s_p1)

                    ; #43217: <==negation-removal== 76477 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71601: <==negation-removal== 28441 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p1_d_a_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_a)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #20494: <==closure== 86303 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86303: origin
                    (Ba_survivorat_s_p1)

                    ; #23876: <==negation-removal== 86303 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #39158: <==negation-removal== 20494 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_d_b_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_b)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #17977: origin
                    (Bb_survivorat_s_p1)

                    ; #64532: <==closure== 17977 (pos)
                    (Pb_survivorat_s_p1)

                    ; #30691: <==negation-removal== 64532 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #76194: <==negation-removal== 17977 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_d_c_s
        :precondition (and (leader_c)
                           (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #22515: origin
                    (Bc_survivorat_s_p1)

                    ; #34775: <==closure== 22515 (pos)
                    (Pc_survivorat_s_p1)

                    ; #34887: <==negation-removal== 22515 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #42625: <==negation-removal== 34775 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_d_d_s
        :precondition (and (at_d_p1)
                           (Pd_survivorat_s_p1)
                           (leader_d)
                           (Bd_survivorat_s_p1))
        :effect (and
                    ; #28441: <==closure== 76477 (pos)
                    (Pd_survivorat_s_p1)

                    ; #76477: origin
                    (Bd_survivorat_s_p1)

                    ; #43217: <==negation-removal== 76477 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #71601: <==negation-removal== 28441 (pos)
                    (not (Bd_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2))
        :effect (and
                    ; #15441: <==closure== 45548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45548: origin
                    (Ba_survivorat_s_p2)

                    ; #72359: <==negation-removal== 15441 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89452: <==negation-removal== 45548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2))
        :effect (and
                    ; #49826: origin
                    (Bb_survivorat_s_p2)

                    ; #55795: <==closure== 49826 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18756: <==negation-removal== 55795 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27517: <==negation-removal== 49826 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (leader_c))
        :effect (and
                    ; #29340: <==closure== 72468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72468: origin
                    (Bc_survivorat_s_p2)

                    ; #42538: <==negation-removal== 29340 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62734: <==negation-removal== 72468 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_a_d_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_d)
                           (at_a_p2))
        :effect (and
                    ; #30989: <==closure== 87565 (pos)
                    (Pd_survivorat_s_p2)

                    ; #87565: origin
                    (Bd_survivorat_s_p2)

                    ; #24690: <==negation-removal== 30989 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29045: <==negation-removal== 87565 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_a))
        :effect (and
                    ; #15441: <==closure== 45548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45548: origin
                    (Ba_survivorat_s_p2)

                    ; #72359: <==negation-removal== 15441 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89452: <==negation-removal== 45548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_b))
        :effect (and
                    ; #49826: origin
                    (Bb_survivorat_s_p2)

                    ; #55795: <==closure== 49826 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18756: <==negation-removal== 55795 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27517: <==negation-removal== 49826 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_c))
        :effect (and
                    ; #29340: <==closure== 72468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72468: origin
                    (Bc_survivorat_s_p2)

                    ; #42538: <==negation-removal== 29340 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62734: <==negation-removal== 72468 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_d_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (leader_d))
        :effect (and
                    ; #30989: <==closure== 87565 (pos)
                    (Pd_survivorat_s_p2)

                    ; #87565: origin
                    (Bd_survivorat_s_p2)

                    ; #24690: <==negation-removal== 30989 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29045: <==negation-removal== 87565 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (at_c_p2)
                           (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #15441: <==closure== 45548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45548: origin
                    (Ba_survivorat_s_p2)

                    ; #72359: <==negation-removal== 15441 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89452: <==negation-removal== 45548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (at_c_p2)
                           (leader_b)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #49826: origin
                    (Bb_survivorat_s_p2)

                    ; #55795: <==closure== 49826 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18756: <==negation-removal== 55795 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27517: <==negation-removal== 49826 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_c))
        :effect (and
                    ; #29340: <==closure== 72468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72468: origin
                    (Bc_survivorat_s_p2)

                    ; #42538: <==negation-removal== 29340 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62734: <==negation-removal== 72468 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_d_s
        :precondition (and (at_c_p2)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (leader_d))
        :effect (and
                    ; #30989: <==closure== 87565 (pos)
                    (Pd_survivorat_s_p2)

                    ; #87565: origin
                    (Bd_survivorat_s_p2)

                    ; #24690: <==negation-removal== 30989 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29045: <==negation-removal== 87565 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p2_d_a_s
        :precondition (and (leader_a)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #15441: <==closure== 45548 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45548: origin
                    (Ba_survivorat_s_p2)

                    ; #72359: <==negation-removal== 15441 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89452: <==negation-removal== 45548 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_d_b_s
        :precondition (and (leader_b)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #49826: origin
                    (Bb_survivorat_s_p2)

                    ; #55795: <==closure== 49826 (pos)
                    (Pb_survivorat_s_p2)

                    ; #18756: <==negation-removal== 55795 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #27517: <==negation-removal== 49826 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_d_c_s
        :precondition (and (leader_c)
                           (at_d_p2)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #29340: <==closure== 72468 (pos)
                    (Pc_survivorat_s_p2)

                    ; #72468: origin
                    (Bc_survivorat_s_p2)

                    ; #42538: <==negation-removal== 29340 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #62734: <==negation-removal== 72468 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_d_d_s
        :precondition (and (at_d_p2)
                           (leader_d)
                           (Bd_survivorat_s_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #30989: <==closure== 87565 (pos)
                    (Pd_survivorat_s_p2)

                    ; #87565: origin
                    (Bd_survivorat_s_p2)

                    ; #24690: <==negation-removal== 30989 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #29045: <==negation-removal== 87565 (pos)
                    (not (Pd_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_a)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #78130: <==closure== 87094 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87094: origin
                    (Ba_survivorat_s_p3)

                    ; #11148: <==negation-removal== 78130 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82482: <==negation-removal== 87094 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_b)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #31792: origin
                    (Bb_survivorat_s_p3)

                    ; #78998: <==closure== 31792 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46372: <==negation-removal== 31792 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60897: <==negation-removal== 78998 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #16384: origin
                    (Bc_survivorat_s_p3)

                    ; #16720: <==closure== 16384 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11226: <==negation-removal== 16384 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #43883: <==negation-removal== 16720 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_a_d_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (leader_d)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #43091: origin
                    (Bd_survivorat_s_p3)

                    ; #68369: <==closure== 43091 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71986: <==negation-removal== 68369 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #80343: <==negation-removal== 43091 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #78130: <==closure== 87094 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87094: origin
                    (Ba_survivorat_s_p3)

                    ; #11148: <==negation-removal== 78130 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82482: <==negation-removal== 87094 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #31792: origin
                    (Bb_survivorat_s_p3)

                    ; #78998: <==closure== 31792 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46372: <==negation-removal== 31792 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60897: <==negation-removal== 78998 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #16384: origin
                    (Bc_survivorat_s_p3)

                    ; #16720: <==closure== 16384 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11226: <==negation-removal== 16384 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #43883: <==negation-removal== 16720 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_d_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (leader_d)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #43091: origin
                    (Bd_survivorat_s_p3)

                    ; #68369: <==closure== 43091 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71986: <==negation-removal== 68369 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #80343: <==negation-removal== 43091 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #78130: <==closure== 87094 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87094: origin
                    (Ba_survivorat_s_p3)

                    ; #11148: <==negation-removal== 78130 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82482: <==negation-removal== 87094 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #31792: origin
                    (Bb_survivorat_s_p3)

                    ; #78998: <==closure== 31792 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46372: <==negation-removal== 31792 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60897: <==negation-removal== 78998 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #16384: origin
                    (Bc_survivorat_s_p3)

                    ; #16720: <==closure== 16384 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11226: <==negation-removal== 16384 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #43883: <==negation-removal== 16720 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_d_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_d)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #43091: origin
                    (Bd_survivorat_s_p3)

                    ; #68369: <==closure== 43091 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71986: <==negation-removal== 68369 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #80343: <==negation-removal== 43091 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p3_d_a_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_a)
                           (at_d_p3))
        :effect (and
                    ; #78130: <==closure== 87094 (pos)
                    (Pa_survivorat_s_p3)

                    ; #87094: origin
                    (Ba_survivorat_s_p3)

                    ; #11148: <==negation-removal== 78130 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #82482: <==negation-removal== 87094 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_d_b_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_b)
                           (at_d_p3))
        :effect (and
                    ; #31792: origin
                    (Bb_survivorat_s_p3)

                    ; #78998: <==closure== 31792 (pos)
                    (Pb_survivorat_s_p3)

                    ; #46372: <==negation-removal== 31792 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60897: <==negation-removal== 78998 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_d_c_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_c)
                           (at_d_p3))
        :effect (and
                    ; #16384: origin
                    (Bc_survivorat_s_p3)

                    ; #16720: <==closure== 16384 (pos)
                    (Pc_survivorat_s_p3)

                    ; #11226: <==negation-removal== 16384 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #43883: <==negation-removal== 16720 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_d_d_s
        :precondition (and (Pd_survivorat_s_p3)
                           (Bd_survivorat_s_p3)
                           (leader_d)
                           (at_d_p3))
        :effect (and
                    ; #43091: origin
                    (Bd_survivorat_s_p3)

                    ; #68369: <==closure== 43091 (pos)
                    (Pd_survivorat_s_p3)

                    ; #71986: <==negation-removal== 68369 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #80343: <==negation-removal== 43091 (pos)
                    (not (Pd_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_a)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #64897: <==closure== 73373 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73373: origin
                    (Ba_survivorat_s_p4)

                    ; #41996: <==negation-removal== 64897 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45853: <==negation-removal== 73373 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #70849: <==closure== 74284 (pos)
                    (Pb_survivorat_s_p4)

                    ; #74284: origin
                    (Bb_survivorat_s_p4)

                    ; #74728: <==negation-removal== 74284 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81111: <==negation-removal== 70849 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_c)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #79902: <==closure== 89123 (pos)
                    (Pc_survivorat_s_p4)

                    ; #89123: origin
                    (Bc_survivorat_s_p4)

                    ; #67506: <==negation-removal== 89123 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #99550: <==negation-removal== 79902 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_a_d_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (leader_d)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #26971: origin
                    (Bd_survivorat_s_p4)

                    ; #80873: <==closure== 26971 (pos)
                    (Pd_survivorat_s_p4)

                    ; #11079: <==negation-removal== 80873 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37642: <==negation-removal== 26971 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_a)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #64897: <==closure== 73373 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73373: origin
                    (Ba_survivorat_s_p4)

                    ; #41996: <==negation-removal== 64897 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45853: <==negation-removal== 73373 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #70849: <==closure== 74284 (pos)
                    (Pb_survivorat_s_p4)

                    ; #74284: origin
                    (Bb_survivorat_s_p4)

                    ; #74728: <==negation-removal== 74284 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81111: <==negation-removal== 70849 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #79902: <==closure== 89123 (pos)
                    (Pc_survivorat_s_p4)

                    ; #89123: origin
                    (Bc_survivorat_s_p4)

                    ; #67506: <==negation-removal== 89123 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #99550: <==negation-removal== 79902 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_d_s
        :precondition (and (Bb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_d)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #26971: origin
                    (Bd_survivorat_s_p4)

                    ; #80873: <==closure== 26971 (pos)
                    (Pd_survivorat_s_p4)

                    ; #11079: <==negation-removal== 80873 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37642: <==negation-removal== 26971 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_a)
                           (at_c_p4))
        :effect (and
                    ; #64897: <==closure== 73373 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73373: origin
                    (Ba_survivorat_s_p4)

                    ; #41996: <==negation-removal== 64897 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45853: <==negation-removal== 73373 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_b)
                           (at_c_p4))
        :effect (and
                    ; #70849: <==closure== 74284 (pos)
                    (Pb_survivorat_s_p4)

                    ; #74284: origin
                    (Bb_survivorat_s_p4)

                    ; #74728: <==negation-removal== 74284 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81111: <==negation-removal== 70849 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c))
        :effect (and
                    ; #79902: <==closure== 89123 (pos)
                    (Pc_survivorat_s_p4)

                    ; #89123: origin
                    (Bc_survivorat_s_p4)

                    ; #67506: <==negation-removal== 89123 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #99550: <==negation-removal== 79902 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_d_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (leader_d)
                           (at_c_p4))
        :effect (and
                    ; #26971: origin
                    (Bd_survivorat_s_p4)

                    ; #80873: <==closure== 26971 (pos)
                    (Pd_survivorat_s_p4)

                    ; #11079: <==negation-removal== 80873 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37642: <==negation-removal== 26971 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_a_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_a)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #64897: <==closure== 73373 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73373: origin
                    (Ba_survivorat_s_p4)

                    ; #41996: <==negation-removal== 64897 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #45853: <==negation-removal== 73373 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_d_b_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_b)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #70849: <==closure== 74284 (pos)
                    (Pb_survivorat_s_p4)

                    ; #74284: origin
                    (Bb_survivorat_s_p4)

                    ; #74728: <==negation-removal== 74284 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #81111: <==negation-removal== 70849 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_d_c_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (Bd_survivorat_s_p4)
                           (leader_c))
        :effect (and
                    ; #79902: <==closure== 89123 (pos)
                    (Pc_survivorat_s_p4)

                    ; #89123: origin
                    (Bc_survivorat_s_p4)

                    ; #67506: <==negation-removal== 89123 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #99550: <==negation-removal== 79902 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_d_d_s
        :precondition (and (at_d_p4)
                           (Pd_survivorat_s_p4)
                           (leader_d)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #26971: origin
                    (Bd_survivorat_s_p4)

                    ; #80873: <==closure== 26971 (pos)
                    (Pd_survivorat_s_p4)

                    ; #11079: <==negation-removal== 80873 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #37642: <==negation-removal== 26971 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_a)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #14199: <==closure== 67000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #67000: origin
                    (Ba_survivorat_s_p5)

                    ; #67371: <==negation-removal== 14199 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82259: <==negation-removal== 67000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (leader_b)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #11152: <==closure== 77848 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77848: origin
                    (Bb_survivorat_s_p5)

                    ; #43147: <==negation-removal== 11152 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #85117: <==negation-removal== 77848 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #61101: origin
                    (Bc_survivorat_s_p5)

                    ; #90783: <==closure== 61101 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37704: <==negation-removal== 61101 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #79552: <==negation-removal== 90783 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_a_d_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (leader_d))
        :effect (and
                    ; #65806: origin
                    (Bd_survivorat_s_p5)

                    ; #84636: <==closure== 65806 (pos)
                    (Pd_survivorat_s_p5)

                    ; #14484: <==negation-removal== 65806 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #40298: <==negation-removal== 84636 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #14199: <==closure== 67000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #67000: origin
                    (Ba_survivorat_s_p5)

                    ; #67371: <==negation-removal== 14199 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82259: <==negation-removal== 67000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11152: <==closure== 77848 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77848: origin
                    (Bb_survivorat_s_p5)

                    ; #43147: <==negation-removal== 11152 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #85117: <==negation-removal== 77848 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #61101: origin
                    (Bc_survivorat_s_p5)

                    ; #90783: <==closure== 61101 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37704: <==negation-removal== 61101 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #79552: <==negation-removal== 90783 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_d_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (leader_d)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #65806: origin
                    (Bd_survivorat_s_p5)

                    ; #84636: <==closure== 65806 (pos)
                    (Pd_survivorat_s_p5)

                    ; #14484: <==negation-removal== 65806 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #40298: <==negation-removal== 84636 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #14199: <==closure== 67000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #67000: origin
                    (Ba_survivorat_s_p5)

                    ; #67371: <==negation-removal== 14199 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82259: <==negation-removal== 67000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_b)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #11152: <==closure== 77848 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77848: origin
                    (Bb_survivorat_s_p5)

                    ; #43147: <==negation-removal== 11152 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #85117: <==negation-removal== 77848 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #61101: origin
                    (Bc_survivorat_s_p5)

                    ; #90783: <==closure== 61101 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37704: <==negation-removal== 61101 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #79552: <==negation-removal== 90783 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_d_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (leader_d)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #65806: origin
                    (Bd_survivorat_s_p5)

                    ; #84636: <==closure== 65806 (pos)
                    (Pd_survivorat_s_p5)

                    ; #14484: <==negation-removal== 65806 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #40298: <==negation-removal== 84636 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p5_d_a_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_a)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #14199: <==closure== 67000 (pos)
                    (Pa_survivorat_s_p5)

                    ; #67000: origin
                    (Ba_survivorat_s_p5)

                    ; #67371: <==negation-removal== 14199 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82259: <==negation-removal== 67000 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_d_b_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_b)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #11152: <==closure== 77848 (pos)
                    (Pb_survivorat_s_p5)

                    ; #77848: origin
                    (Bb_survivorat_s_p5)

                    ; #43147: <==negation-removal== 11152 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #85117: <==negation-removal== 77848 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_d_c_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (Bd_survivorat_s_p5)
                           (leader_c))
        :effect (and
                    ; #61101: origin
                    (Bc_survivorat_s_p5)

                    ; #90783: <==closure== 61101 (pos)
                    (Pc_survivorat_s_p5)

                    ; #37704: <==negation-removal== 61101 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #79552: <==negation-removal== 90783 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_d_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (at_d_p5)
                           (leader_d)
                           (Bd_survivorat_s_p5))
        :effect (and
                    ; #65806: origin
                    (Bd_survivorat_s_p5)

                    ; #84636: <==closure== 65806 (pos)
                    (Pd_survivorat_s_p5)

                    ; #14484: <==negation-removal== 65806 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #40298: <==negation-removal== 84636 (pos)
                    (not (Bd_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (at_a_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #23218: <==closure== 60221 (pos)
                    (Pa_survivorat_s_p6)

                    ; #60221: origin
                    (Ba_survivorat_s_p6)

                    ; #25583: <==negation-removal== 60221 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #75162: <==negation-removal== 23218 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (at_a_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #42049: <==closure== 86693 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86693: origin
                    (Bb_survivorat_s_p6)

                    ; #20957: <==negation-removal== 86693 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #36065: <==negation-removal== 42049 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (leader_c)
                           (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #27140: origin
                    (Bc_survivorat_s_p6)

                    ; #78702: <==closure== 27140 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10805: <==negation-removal== 27140 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #65227: <==negation-removal== 78702 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_a_d_s
        :precondition (and (at_a_p6)
                           (leader_d)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #13758: origin
                    (Bd_survivorat_s_p6)

                    ; #64072: <==closure== 13758 (pos)
                    (Pd_survivorat_s_p6)

                    ; #12138: <==negation-removal== 64072 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71055: <==negation-removal== 13758 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_a)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #23218: <==closure== 60221 (pos)
                    (Pa_survivorat_s_p6)

                    ; #60221: origin
                    (Ba_survivorat_s_p6)

                    ; #25583: <==negation-removal== 60221 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #75162: <==negation-removal== 23218 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (leader_b)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #42049: <==closure== 86693 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86693: origin
                    (Bb_survivorat_s_p6)

                    ; #20957: <==negation-removal== 86693 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #36065: <==negation-removal== 42049 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #27140: origin
                    (Bc_survivorat_s_p6)

                    ; #78702: <==closure== 27140 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10805: <==negation-removal== 27140 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #65227: <==negation-removal== 78702 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_d_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_d)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #13758: origin
                    (Bd_survivorat_s_p6)

                    ; #64072: <==closure== 13758 (pos)
                    (Pd_survivorat_s_p6)

                    ; #12138: <==negation-removal== 64072 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71055: <==negation-removal== 13758 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #23218: <==closure== 60221 (pos)
                    (Pa_survivorat_s_p6)

                    ; #60221: origin
                    (Ba_survivorat_s_p6)

                    ; #25583: <==negation-removal== 60221 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #75162: <==negation-removal== 23218 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (leader_b)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #42049: <==closure== 86693 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86693: origin
                    (Bb_survivorat_s_p6)

                    ; #20957: <==negation-removal== 86693 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #36065: <==negation-removal== 42049 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #27140: origin
                    (Bc_survivorat_s_p6)

                    ; #78702: <==closure== 27140 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10805: <==negation-removal== 27140 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #65227: <==negation-removal== 78702 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_d_s
        :precondition (and (at_c_p6)
                           (leader_d)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #13758: origin
                    (Bd_survivorat_s_p6)

                    ; #64072: <==closure== 13758 (pos)
                    (Pd_survivorat_s_p6)

                    ; #12138: <==negation-removal== 64072 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71055: <==negation-removal== 13758 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p6_d_a_s
        :precondition (and (Bd_survivorat_s_p6)
                           (leader_a)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #23218: <==closure== 60221 (pos)
                    (Pa_survivorat_s_p6)

                    ; #60221: origin
                    (Ba_survivorat_s_p6)

                    ; #25583: <==negation-removal== 60221 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #75162: <==negation-removal== 23218 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_b_s
        :precondition (and (Bd_survivorat_s_p6)
                           (leader_b)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #42049: <==closure== 86693 (pos)
                    (Pb_survivorat_s_p6)

                    ; #86693: origin
                    (Bb_survivorat_s_p6)

                    ; #20957: <==negation-removal== 86693 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #36065: <==negation-removal== 42049 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_d_c_s
        :precondition (and (leader_c)
                           (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #27140: origin
                    (Bc_survivorat_s_p6)

                    ; #78702: <==closure== 27140 (pos)
                    (Pc_survivorat_s_p6)

                    ; #10805: <==negation-removal== 27140 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #65227: <==negation-removal== 78702 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_d_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (leader_d)
                           (at_d_p6))
        :effect (and
                    ; #13758: origin
                    (Bd_survivorat_s_p6)

                    ; #64072: <==closure== 13758 (pos)
                    (Pd_survivorat_s_p6)

                    ; #12138: <==negation-removal== 64072 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #71055: <==negation-removal== 13758 (pos)
                    (not (Pd_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #69927: origin
                    (Ba_survivorat_s_p7)

                    ; #74281: <==closure== 69927 (pos)
                    (Pa_survivorat_s_p7)

                    ; #19128: <==negation-removal== 74281 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #39885: <==negation-removal== 69927 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #46394: <==closure== 65517 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65517: origin
                    (Bb_survivorat_s_p7)

                    ; #53167: <==negation-removal== 46394 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #63439: <==negation-removal== 65517 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #26738: <==closure== 28033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28033: origin
                    (Bc_survivorat_s_p7)

                    ; #35333: <==negation-removal== 28033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68601: <==negation-removal== 26738 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_a_d_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (leader_d)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #44287: origin
                    (Bd_survivorat_s_p7)

                    ; #56368: <==closure== 44287 (pos)
                    (Pd_survivorat_s_p7)

                    ; #24744: <==negation-removal== 56368 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #86896: <==negation-removal== 44287 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_a)
                           (at_b_p7))
        :effect (and
                    ; #69927: origin
                    (Ba_survivorat_s_p7)

                    ; #74281: <==closure== 69927 (pos)
                    (Pa_survivorat_s_p7)

                    ; #19128: <==negation-removal== 74281 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #39885: <==negation-removal== 69927 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (leader_b)
                           (at_b_p7))
        :effect (and
                    ; #46394: <==closure== 65517 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65517: origin
                    (Bb_survivorat_s_p7)

                    ; #53167: <==negation-removal== 46394 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #63439: <==negation-removal== 65517 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_c))
        :effect (and
                    ; #26738: <==closure== 28033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28033: origin
                    (Bc_survivorat_s_p7)

                    ; #35333: <==negation-removal== 28033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68601: <==negation-removal== 26738 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_d_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_d))
        :effect (and
                    ; #44287: origin
                    (Bd_survivorat_s_p7)

                    ; #56368: <==closure== 44287 (pos)
                    (Pd_survivorat_s_p7)

                    ; #24744: <==negation-removal== 56368 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #86896: <==negation-removal== 44287 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_a)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #69927: origin
                    (Ba_survivorat_s_p7)

                    ; #74281: <==closure== 69927 (pos)
                    (Pa_survivorat_s_p7)

                    ; #19128: <==negation-removal== 74281 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #39885: <==negation-removal== 69927 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Bc_survivorat_s_p7)
                           (leader_b)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #46394: <==closure== 65517 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65517: origin
                    (Bb_survivorat_s_p7)

                    ; #53167: <==negation-removal== 46394 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #63439: <==negation-removal== 65517 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c))
        :effect (and
                    ; #26738: <==closure== 28033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28033: origin
                    (Bc_survivorat_s_p7)

                    ; #35333: <==negation-removal== 28033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68601: <==negation-removal== 26738 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_d_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (leader_d)
                           (at_c_p7))
        :effect (and
                    ; #44287: origin
                    (Bd_survivorat_s_p7)

                    ; #56368: <==closure== 44287 (pos)
                    (Pd_survivorat_s_p7)

                    ; #24744: <==negation-removal== 56368 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #86896: <==negation-removal== 44287 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p7_d_a_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #69927: origin
                    (Ba_survivorat_s_p7)

                    ; #74281: <==closure== 69927 (pos)
                    (Pa_survivorat_s_p7)

                    ; #19128: <==negation-removal== 74281 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #39885: <==negation-removal== 69927 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_d_b_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #46394: <==closure== 65517 (pos)
                    (Pb_survivorat_s_p7)

                    ; #65517: origin
                    (Bb_survivorat_s_p7)

                    ; #53167: <==negation-removal== 46394 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #63439: <==negation-removal== 65517 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_d_c_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #26738: <==closure== 28033 (pos)
                    (Pc_survivorat_s_p7)

                    ; #28033: origin
                    (Bc_survivorat_s_p7)

                    ; #35333: <==negation-removal== 28033 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #68601: <==negation-removal== 26738 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_d_d_s
        :precondition (and (at_d_p7)
                           (Pd_survivorat_s_p7)
                           (Bd_survivorat_s_p7)
                           (leader_d))
        :effect (and
                    ; #44287: origin
                    (Bd_survivorat_s_p7)

                    ; #56368: <==closure== 44287 (pos)
                    (Pd_survivorat_s_p7)

                    ; #24744: <==negation-removal== 56368 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #86896: <==negation-removal== 44287 (pos)
                    (not (Pd_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #33097: origin
                    (Ba_survivorat_s_p8)

                    ; #50872: <==closure== 33097 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33318: <==negation-removal== 33097 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #34971: <==negation-removal== 50872 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #49534: origin
                    (Bb_survivorat_s_p8)

                    ; #91570: <==closure== 49534 (pos)
                    (Pb_survivorat_s_p8)

                    ; #37933: <==negation-removal== 49534 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #70090: <==negation-removal== 91570 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #15461: origin
                    (Bc_survivorat_s_p8)

                    ; #85573: <==closure== 15461 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64391: <==negation-removal== 15461 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86325: <==negation-removal== 85573 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_a_d_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (leader_d)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #66640: origin
                    (Bd_survivorat_s_p8)

                    ; #81109: <==closure== 66640 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42775: <==negation-removal== 66640 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56321: <==negation-removal== 81109 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #33097: origin
                    (Ba_survivorat_s_p8)

                    ; #50872: <==closure== 33097 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33318: <==negation-removal== 33097 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #34971: <==negation-removal== 50872 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #49534: origin
                    (Bb_survivorat_s_p8)

                    ; #91570: <==closure== 49534 (pos)
                    (Pb_survivorat_s_p8)

                    ; #37933: <==negation-removal== 49534 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #70090: <==negation-removal== 91570 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #15461: origin
                    (Bc_survivorat_s_p8)

                    ; #85573: <==closure== 15461 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64391: <==negation-removal== 15461 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86325: <==negation-removal== 85573 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_d_s
        :precondition (and (Pb_survivorat_s_p8)
                           (at_b_p8)
                           (leader_d)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #66640: origin
                    (Bd_survivorat_s_p8)

                    ; #81109: <==closure== 66640 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42775: <==negation-removal== 66640 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56321: <==negation-removal== 81109 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #33097: origin
                    (Ba_survivorat_s_p8)

                    ; #50872: <==closure== 33097 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33318: <==negation-removal== 33097 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #34971: <==negation-removal== 50872 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (leader_b)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #49534: origin
                    (Bb_survivorat_s_p8)

                    ; #91570: <==closure== 49534 (pos)
                    (Pb_survivorat_s_p8)

                    ; #37933: <==negation-removal== 49534 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #70090: <==negation-removal== 91570 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #15461: origin
                    (Bc_survivorat_s_p8)

                    ; #85573: <==closure== 15461 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64391: <==negation-removal== 15461 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86325: <==negation-removal== 85573 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_d_s
        :precondition (and (Pc_survivorat_s_p8)
                           (leader_d)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #66640: origin
                    (Bd_survivorat_s_p8)

                    ; #81109: <==closure== 66640 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42775: <==negation-removal== 66640 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56321: <==negation-removal== 81109 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p8_d_a_s
        :precondition (and (at_d_p8)
                           (leader_a)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #33097: origin
                    (Ba_survivorat_s_p8)

                    ; #50872: <==closure== 33097 (pos)
                    (Pa_survivorat_s_p8)

                    ; #33318: <==negation-removal== 33097 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #34971: <==negation-removal== 50872 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_d_b_s
        :precondition (and (at_d_p8)
                           (leader_b)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #49534: origin
                    (Bb_survivorat_s_p8)

                    ; #91570: <==closure== 49534 (pos)
                    (Pb_survivorat_s_p8)

                    ; #37933: <==negation-removal== 49534 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #70090: <==negation-removal== 91570 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_d_c_s
        :precondition (and (at_d_p8)
                           (leader_c)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #15461: origin
                    (Bc_survivorat_s_p8)

                    ; #85573: <==closure== 15461 (pos)
                    (Pc_survivorat_s_p8)

                    ; #64391: <==negation-removal== 15461 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #86325: <==negation-removal== 85573 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_d_s
        :precondition (and (at_d_p8)
                           (leader_d)
                           (Pd_survivorat_s_p8)
                           (Bd_survivorat_s_p8))
        :effect (and
                    ; #66640: origin
                    (Bd_survivorat_s_p8)

                    ; #81109: <==closure== 66640 (pos)
                    (Pd_survivorat_s_p8)

                    ; #42775: <==negation-removal== 66640 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #56321: <==negation-removal== 81109 (pos)
                    (not (Bd_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_a))
        :effect (and
                    ; #33952: <==closure== 41321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41321: origin
                    (Ba_survivorat_s_p9)

                    ; #43760: <==negation-removal== 41321 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64469: <==negation-removal== 33952 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_b))
        :effect (and
                    ; #44567: <==closure== 56493 (pos)
                    (Pb_survivorat_s_p9)

                    ; #56493: origin
                    (Bb_survivorat_s_p9)

                    ; #39236: <==negation-removal== 56493 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77057: <==negation-removal== 44567 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_c))
        :effect (and
                    ; #70479: <==closure== 70896 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70896: origin
                    (Bc_survivorat_s_p9)

                    ; #25908: <==negation-removal== 70479 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82233: <==negation-removal== 70896 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_a_d_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (leader_d))
        :effect (and
                    ; #17034: <==closure== 84770 (pos)
                    (Pd_survivorat_s_p9)

                    ; #84770: origin
                    (Bd_survivorat_s_p9)

                    ; #39657: <==negation-removal== 84770 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88219: <==negation-removal== 17034 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #33952: <==closure== 41321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41321: origin
                    (Ba_survivorat_s_p9)

                    ; #43760: <==negation-removal== 41321 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64469: <==negation-removal== 33952 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #44567: <==closure== 56493 (pos)
                    (Pb_survivorat_s_p9)

                    ; #56493: origin
                    (Bb_survivorat_s_p9)

                    ; #39236: <==negation-removal== 56493 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77057: <==negation-removal== 44567 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #70479: <==closure== 70896 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70896: origin
                    (Bc_survivorat_s_p9)

                    ; #25908: <==negation-removal== 70479 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82233: <==negation-removal== 70896 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_d_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #17034: <==closure== 84770 (pos)
                    (Pd_survivorat_s_p9)

                    ; #84770: origin
                    (Bd_survivorat_s_p9)

                    ; #39657: <==negation-removal== 84770 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88219: <==negation-removal== 17034 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #33952: <==closure== 41321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41321: origin
                    (Ba_survivorat_s_p9)

                    ; #43760: <==negation-removal== 41321 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64469: <==negation-removal== 33952 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #44567: <==closure== 56493 (pos)
                    (Pb_survivorat_s_p9)

                    ; #56493: origin
                    (Bb_survivorat_s_p9)

                    ; #39236: <==negation-removal== 56493 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77057: <==negation-removal== 44567 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #70479: <==closure== 70896 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70896: origin
                    (Bc_survivorat_s_p9)

                    ; #25908: <==negation-removal== 70479 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82233: <==negation-removal== 70896 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_d_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #17034: <==closure== 84770 (pos)
                    (Pd_survivorat_s_p9)

                    ; #84770: origin
                    (Bd_survivorat_s_p9)

                    ; #39657: <==negation-removal== 84770 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88219: <==negation-removal== 17034 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action comm_p9_d_a_s
        :precondition (and (at_d_p9)
                           (leader_a)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #33952: <==closure== 41321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #41321: origin
                    (Ba_survivorat_s_p9)

                    ; #43760: <==negation-removal== 41321 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #64469: <==negation-removal== 33952 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_b_s
        :precondition (and (at_d_p9)
                           (leader_b)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #44567: <==closure== 56493 (pos)
                    (Pb_survivorat_s_p9)

                    ; #56493: origin
                    (Bb_survivorat_s_p9)

                    ; #39236: <==negation-removal== 56493 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77057: <==negation-removal== 44567 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_d_c_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #70479: <==closure== 70896 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70896: origin
                    (Bc_survivorat_s_p9)

                    ; #25908: <==negation-removal== 70479 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #82233: <==negation-removal== 70896 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_d_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9)
                           (leader_d))
        :effect (and
                    ; #17034: <==closure== 84770 (pos)
                    (Pd_survivorat_s_p9)

                    ; #84770: origin
                    (Bd_survivorat_s_p9)

                    ; #39657: <==negation-removal== 84770 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88219: <==negation-removal== 17034 (pos)
                    (not (Bd_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #88980: origin
                    (at_a_p1)

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #51964: origin
                    (not_at_a_p10)

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #51964: origin
                    (not_at_a_p10)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #65299: origin
                    (at_a_p6)

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #51964: origin
                    (not_at_a_p10)

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #80655: origin
                    (at_a_p8)

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51964: origin
                    (not_at_a_p10)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #65779: <==negation-removal== 51964 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1)
                           (not (leader_a)))
        :effect (and
                    ; #81952: origin
                    (not_at_a_p11)

                    ; #88980: origin
                    (at_a_p1)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10)
                           (not (leader_a)))
        :effect (and
                    ; #65779: origin
                    (at_a_p10)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12)
                           (not (leader_a)))
        :effect (and
                    ; #63100: origin
                    (at_a_p12)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2)
                           (not (leader_a)))
        :effect (and
                    ; #81952: origin
                    (not_at_a_p11)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3)
                           (not (leader_a)))
        :effect (and
                    ; #81952: origin
                    (not_at_a_p11)

                    ; #89847: origin
                    (at_a_p3)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #66215: origin
                    (at_a_p5)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6)
                           (not (leader_a)))
        :effect (and
                    ; #65299: origin
                    (at_a_p6)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8)
                           (not (leader_a)))
        :effect (and
                    ; #80655: origin
                    (at_a_p8)

                    ; #81952: origin
                    (not_at_a_p11)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9)
                           (not (leader_a)))
        :effect (and
                    ; #81952: origin
                    (not_at_a_p11)

                    ; #85637: origin
                    (at_a_p9)

                    ; #20959: <==negation-removal== 81952 (pos)
                    (not (at_a_p11))

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #88980: origin
                    (at_a_p1)

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #57136: origin
                    (not_at_a_p12)

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #57136: origin
                    (not_at_a_p12)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #65299: origin
                    (at_a_p6)

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #57136: origin
                    (not_at_a_p12)

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #80655: origin
                    (at_a_p8)

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #57136: origin
                    (not_at_a_p12)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #63100: <==negation-removal== 57136 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #73635: origin
                    (not_at_a_p1)

                    ; #88980: origin
                    (at_a_p1)

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10)
                           (not (leader_a)))
        :effect (and
                    ; #65779: origin
                    (at_a_p10)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12)
                           (not (leader_a)))
        :effect (and
                    ; #63100: origin
                    (at_a_p12)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #73635: origin
                    (not_at_a_p1)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3)
                           (not (leader_a)))
        :effect (and
                    ; #73635: origin
                    (not_at_a_p1)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #66215: origin
                    (at_a_p5)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #65299: origin
                    (at_a_p6)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #73635: origin
                    (not_at_a_p1)

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #73635: origin
                    (not_at_a_p1)

                    ; #80655: origin
                    (at_a_p8)

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9)
                           (not (leader_a)))
        :effect (and
                    ; #73635: origin
                    (not_at_a_p1)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #88980: <==negation-removal== 73635 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #88980: origin
                    (at_a_p1)

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #20959: origin
                    (at_a_p11)

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #37868: origin
                    (at_a_p4)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #65299: origin
                    (at_a_p6)

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #12812: origin
                    (not_at_a_p2)

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #80655: origin
                    (at_a_p8)

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #12812: origin
                    (not_at_a_p2)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #91509: <==negation-removal== 12812 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #88980: origin
                    (at_a_p1)

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #59043: origin
                    (not_at_a_p3)

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #59043: origin
                    (not_at_a_p3)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #65299: origin
                    (at_a_p6)

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #59043: origin
                    (not_at_a_p3)

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #80655: origin
                    (at_a_p8)

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59043: origin
                    (not_at_a_p3)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #89847: <==negation-removal== 59043 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #88980: origin
                    (at_a_p1)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #65779: origin
                    (at_a_p10)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #61113: origin
                    (not_at_a_p4)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #63100: origin
                    (at_a_p12)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #89847: origin
                    (at_a_p3)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #61113: origin
                    (not_at_a_p4)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #65299: origin
                    (at_a_p6)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #61113: origin
                    (not_at_a_p4)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #80655: origin
                    (at_a_p8)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9)
                           (not (leader_a)))
        :effect (and
                    ; #61113: origin
                    (not_at_a_p4)

                    ; #85637: origin
                    (at_a_p9)

                    ; #37868: <==negation-removal== 61113 (pos)
                    (not (at_a_p4))

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #88980: origin
                    (at_a_p1)

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #28227: origin
                    (not_at_a_p5)

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #37868: origin
                    (at_a_p4)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #65299: origin
                    (at_a_p6)

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #28227: origin
                    (not_at_a_p5)

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #80655: origin
                    (at_a_p8)

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #28227: origin
                    (not_at_a_p5)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #66215: <==negation-removal== 28227 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #84913: origin
                    (not_at_a_p6)

                    ; #88980: origin
                    (at_a_p1)

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10)
                           (not (leader_a)))
        :effect (and
                    ; #65779: origin
                    (at_a_p10)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12)
                           (not (leader_a)))
        :effect (and
                    ; #63100: origin
                    (at_a_p12)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2)
                           (not (leader_a)))
        :effect (and
                    ; #84913: origin
                    (not_at_a_p6)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3)
                           (not (leader_a)))
        :effect (and
                    ; #84913: origin
                    (not_at_a_p6)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #66215: origin
                    (at_a_p5)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6)
                           (not (leader_a)))
        :effect (and
                    ; #65299: origin
                    (at_a_p6)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #80655: origin
                    (at_a_p8)

                    ; #84913: origin
                    (not_at_a_p6)

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9)
                           (not (leader_a)))
        :effect (and
                    ; #84913: origin
                    (not_at_a_p6)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #65299: <==negation-removal== 84913 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #85980: origin
                    (not_at_a_p7)

                    ; #88980: origin
                    (at_a_p1)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10)
                           (not (leader_a)))
        :effect (and
                    ; #65779: origin
                    (at_a_p10)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12)
                           (not (leader_a)))
        :effect (and
                    ; #63100: origin
                    (at_a_p12)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #85980: origin
                    (not_at_a_p7)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #85980: origin
                    (not_at_a_p7)

                    ; #89847: origin
                    (at_a_p3)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #66215: origin
                    (at_a_p5)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #65299: origin
                    (at_a_p6)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #80655: origin
                    (at_a_p8)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #85637: origin
                    (at_a_p9)

                    ; #85980: origin
                    (not_at_a_p7)

                    ; #12357: <==negation-removal== 85980 (pos)
                    (not (at_a_p7))

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75622: origin
                    (not_at_a_p8)

                    ; #88980: origin
                    (at_a_p1)

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #65779: origin
                    (at_a_p10)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12)
                           (not (leader_a)))
        :effect (and
                    ; #63100: origin
                    (at_a_p12)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75622: origin
                    (not_at_a_p8)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75622: origin
                    (not_at_a_p8)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #66215: origin
                    (at_a_p5)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6)
                           (not (leader_a)))
        :effect (and
                    ; #65299: origin
                    (at_a_p6)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #75622: origin
                    (not_at_a_p8)

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75622: origin
                    (not_at_a_p8)

                    ; #80655: origin
                    (at_a_p8)

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #75622: origin
                    (not_at_a_p8)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #80655: <==negation-removal== 75622 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #88980: origin
                    (at_a_p1)

                    ; #73635: <==negation-removal== 88980 (pos)
                    (not (not_at_a_p1))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #65779: origin
                    (at_a_p10)

                    ; #51964: <==negation-removal== 65779 (pos)
                    (not (not_at_a_p10))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11)
                           (not (leader_a)))
        :effect (and
                    ; #20959: origin
                    (at_a_p11)

                    ; #59901: origin
                    (not_at_a_p9)

                    ; #81952: <==negation-removal== 20959 (pos)
                    (not (not_at_a_p11))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #63100: origin
                    (at_a_p12)

                    ; #57136: <==negation-removal== 63100 (pos)
                    (not (not_at_a_p12))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #91509: origin
                    (at_a_p2)

                    ; #12812: <==negation-removal== 91509 (pos)
                    (not (not_at_a_p2))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #89847: origin
                    (at_a_p3)

                    ; #59043: <==negation-removal== 89847 (pos)
                    (not (not_at_a_p3))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37868: origin
                    (at_a_p4)

                    ; #59901: origin
                    (not_at_a_p9)

                    ; #61113: <==negation-removal== 37868 (pos)
                    (not (not_at_a_p4))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #66215: origin
                    (at_a_p5)

                    ; #28227: <==negation-removal== 66215 (pos)
                    (not (not_at_a_p5))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #65299: origin
                    (at_a_p6)

                    ; #84913: <==negation-removal== 65299 (pos)
                    (not (not_at_a_p6))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #12357: origin
                    (at_a_p7)

                    ; #59901: origin
                    (not_at_a_p9)

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))

                    ; #85980: <==negation-removal== 12357 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #80655: origin
                    (at_a_p8)

                    ; #75622: <==negation-removal== 80655 (pos)
                    (not (not_at_a_p8))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #59901: origin
                    (not_at_a_p9)

                    ; #85637: origin
                    (at_a_p9)

                    ; #59901: <==negation-removal== 85637 (pos)
                    (not (not_at_a_p9))

                    ; #85637: <==negation-removal== 59901 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #35218: origin
                    (at_b_p1)

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #34276: origin
                    (not_at_b_p10)

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #87648: origin
                    (at_b_p12)

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #82764: origin
                    (at_b_p2)

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #34276: origin
                    (not_at_b_p10)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #34276: origin
                    (not_at_b_p10)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9)
                           (not (leader_b)))
        :effect (and
                    ; #34276: origin
                    (not_at_b_p10)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #82968: <==negation-removal== 34276 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #79988: origin
                    (not_at_b_p11)

                    ; #82968: origin
                    (at_b_p10)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #79988: origin
                    (not_at_b_p11)

                    ; #87648: origin
                    (at_b_p12)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #79988: origin
                    (not_at_b_p11)

                    ; #82764: origin
                    (at_b_p2)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4)
                           (not (leader_b)))
        :effect (and
                    ; #79988: origin
                    (not_at_b_p11)

                    ; #97277: origin
                    (at_b_p4)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #63919: origin
                    (at_b_p5)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73888: origin
                    (at_b_p6)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69395: origin
                    (at_b_p7)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #79988: origin
                    (not_at_b_p11)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9)
                           (not (leader_b)))
        :effect (and
                    ; #79988: origin
                    (not_at_b_p11)

                    ; #88204: origin
                    (at_b_p9)

                    ; #23562: <==negation-removal== 79988 (pos)
                    (not (at_b_p11))

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10)
                           (not (leader_b)))
        :effect (and
                    ; #82968: origin
                    (at_b_p10)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12)
                           (not (leader_b)))
        :effect (and
                    ; #87648: origin
                    (at_b_p12)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #82764: origin
                    (at_b_p2)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4)
                           (not (leader_b)))
        :effect (and
                    ; #95381: origin
                    (not_at_b_p12)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #63919: origin
                    (at_b_p5)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73888: origin
                    (at_b_p6)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69395: origin
                    (at_b_p7)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9)
                           (not (leader_b)))
        :effect (and
                    ; #88204: origin
                    (at_b_p9)

                    ; #95381: origin
                    (not_at_b_p12)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #87648: <==negation-removal== 95381 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10)
                           (not (leader_b)))
        :effect (and
                    ; #82968: origin
                    (at_b_p10)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12)
                           (not (leader_b)))
        :effect (and
                    ; #85943: origin
                    (not_at_b_p1)

                    ; #87648: origin
                    (at_b_p12)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #82764: origin
                    (at_b_p2)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4)
                           (not (leader_b)))
        :effect (and
                    ; #85943: origin
                    (not_at_b_p1)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #63919: origin
                    (at_b_p5)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #73888: origin
                    (at_b_p6)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69395: origin
                    (at_b_p7)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #85943: origin
                    (not_at_b_p1)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9)
                           (not (leader_b)))
        :effect (and
                    ; #85943: origin
                    (not_at_b_p1)

                    ; #88204: origin
                    (at_b_p9)

                    ; #35218: <==negation-removal== 85943 (pos)
                    (not (at_b_p1))

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10)
                           (not (leader_b)))
        :effect (and
                    ; #82968: origin
                    (at_b_p10)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (at_b_p2)
                           (succ_p2_p12)
                           (not (leader_b)))
        :effect (and
                    ; #87648: origin
                    (at_b_p12)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #82764: origin
                    (at_b_p2)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #89389: origin
                    (not_at_b_p2)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #63919: origin
                    (at_b_p5)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #73888: origin
                    (at_b_p6)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #69395: origin
                    (at_b_p7)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #88204: origin
                    (at_b_p9)

                    ; #89389: origin
                    (not_at_b_p2)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #82764: <==negation-removal== 89389 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #42008: origin
                    (not_at_b_p3)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #82968: origin
                    (at_b_p10)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #42008: origin
                    (not_at_b_p3)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #87648: origin
                    (at_b_p12)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #82764: origin
                    (at_b_p2)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #42008: origin
                    (not_at_b_p3)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #97277: origin
                    (at_b_p4)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #63919: origin
                    (at_b_p5)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #73888: origin
                    (at_b_p6)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #69395: origin
                    (at_b_p7)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #42008: origin
                    (not_at_b_p3)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #42008: origin
                    (not_at_b_p3)

                    ; #88204: origin
                    (at_b_p9)

                    ; #31221: <==negation-removal== 42008 (pos)
                    (not (at_b_p3))

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #35464: origin
                    (not_at_b_p4)

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #35464: origin
                    (not_at_b_p4)

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #87648: origin
                    (at_b_p12)

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #82764: origin
                    (at_b_p2)

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #35464: origin
                    (not_at_b_p4)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #35464: origin
                    (not_at_b_p4)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35464: origin
                    (not_at_b_p4)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #97277: <==negation-removal== 35464 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #46094: origin
                    (not_at_b_p5)

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #46094: origin
                    (not_at_b_p5)

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #87648: origin
                    (at_b_p12)

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #82764: origin
                    (at_b_p2)

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #46094: origin
                    (not_at_b_p5)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #46094: origin
                    (not_at_b_p5)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #46094: origin
                    (not_at_b_p5)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #63919: <==negation-removal== 46094 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #35218: origin
                    (at_b_p1)

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #35118: origin
                    (not_at_b_p6)

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #87648: origin
                    (at_b_p12)

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #82764: origin
                    (at_b_p2)

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #35118: origin
                    (not_at_b_p6)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #35118: origin
                    (not_at_b_p6)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #35118: origin
                    (not_at_b_p6)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #73888: <==negation-removal== 35118 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #35991: origin
                    (not_at_b_p7)

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #35991: origin
                    (not_at_b_p7)

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #87648: origin
                    (at_b_p12)

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #82764: origin
                    (at_b_p2)

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #35991: origin
                    (not_at_b_p7)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #35991: origin
                    (not_at_b_p7)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #35991: origin
                    (not_at_b_p7)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #69395: <==negation-removal== 35991 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #35218: origin
                    (at_b_p1)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #82968: origin
                    (at_b_p10)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #26747: origin
                    (not_at_b_p8)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #87648: origin
                    (at_b_p12)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #82764: origin
                    (at_b_p2)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #31221: origin
                    (at_b_p3)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #97277: origin
                    (at_b_p4)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #63919: origin
                    (at_b_p5)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #73888: origin
                    (at_b_p6)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #69395: origin
                    (at_b_p7)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #26747: origin
                    (not_at_b_p8)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #26747: origin
                    (not_at_b_p8)

                    ; #88204: origin
                    (at_b_p9)

                    ; #14564: <==negation-removal== 26747 (pos)
                    (not (at_b_p8))

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #35218: origin
                    (at_b_p1)

                    ; #36844: origin
                    (not_at_b_p9)

                    ; #85943: <==negation-removal== 35218 (pos)
                    (not (not_at_b_p1))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #82968: origin
                    (at_b_p10)

                    ; #34276: <==negation-removal== 82968 (pos)
                    (not (not_at_b_p10))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #23562: origin
                    (at_b_p11)

                    ; #36844: origin
                    (not_at_b_p9)

                    ; #79988: <==negation-removal== 23562 (pos)
                    (not (not_at_b_p11))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #87648: origin
                    (at_b_p12)

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))

                    ; #95381: <==negation-removal== 87648 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #82764: origin
                    (at_b_p2)

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))

                    ; #89389: <==negation-removal== 82764 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31221: origin
                    (at_b_p3)

                    ; #36844: origin
                    (not_at_b_p9)

                    ; #42008: <==negation-removal== 31221 (pos)
                    (not (not_at_b_p3))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #97277: origin
                    (at_b_p4)

                    ; #35464: <==negation-removal== 97277 (pos)
                    (not (not_at_b_p4))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #63919: origin
                    (at_b_p5)

                    ; #46094: <==negation-removal== 63919 (pos)
                    (not (not_at_b_p5))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #73888: origin
                    (at_b_p6)

                    ; #35118: <==negation-removal== 73888 (pos)
                    (not (not_at_b_p6))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #69395: origin
                    (at_b_p7)

                    ; #35991: <==negation-removal== 69395 (pos)
                    (not (not_at_b_p7))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14564: origin
                    (at_b_p8)

                    ; #36844: origin
                    (not_at_b_p9)

                    ; #26747: <==negation-removal== 14564 (pos)
                    (not (not_at_b_p8))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #36844: origin
                    (not_at_b_p9)

                    ; #88204: origin
                    (at_b_p9)

                    ; #36844: <==negation-removal== 88204 (pos)
                    (not (not_at_b_p9))

                    ; #88204: <==negation-removal== 36844 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #73274: origin
                    (at_c_p1)

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #36779: origin
                    (not_at_c_p10)

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #49756: origin
                    (at_c_p12)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #53637: origin
                    (at_c_p4)

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #87968: origin
                    (at_c_p6)

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #37144: origin
                    (at_c_p7)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #36779: origin
                    (not_at_c_p10)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9)
                           (not (leader_c)))
        :effect (and
                    ; #36779: origin
                    (not_at_c_p10)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #78351: <==negation-removal== 36779 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1)
                           (not (leader_c)))
        :effect (and
                    ; #54124: origin
                    (not_at_c_p11)

                    ; #73274: origin
                    (at_c_p1)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10)
                           (not (leader_c)))
        :effect (and
                    ; #54124: origin
                    (not_at_c_p11)

                    ; #78351: origin
                    (at_c_p10)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49756: origin
                    (at_c_p12)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53010: origin
                    (at_c_p2)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3)
                           (not (leader_c)))
        :effect (and
                    ; #53714: origin
                    (at_c_p3)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53637: origin
                    (at_c_p4)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5)
                           (not (leader_c)))
        :effect (and
                    ; #54124: origin
                    (not_at_c_p11)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6)
                           (not (leader_c)))
        :effect (and
                    ; #54124: origin
                    (not_at_c_p11)

                    ; #87968: origin
                    (at_c_p6)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50165: origin
                    (at_c_p9)

                    ; #54124: origin
                    (not_at_c_p11)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #26721: <==negation-removal== 54124 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #73274: origin
                    (at_c_p1)

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #50462: origin
                    (not_at_c_p12)

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49756: origin
                    (at_c_p12)

                    ; #50462: origin
                    (not_at_c_p12)

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #53637: origin
                    (at_c_p4)

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6)
                           (not (leader_c)))
        :effect (and
                    ; #50462: origin
                    (not_at_c_p12)

                    ; #87968: origin
                    (at_c_p6)

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #50462: origin
                    (not_at_c_p12)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #50462: origin
                    (not_at_c_p12)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #50165: origin
                    (at_c_p9)

                    ; #50462: origin
                    (not_at_c_p12)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #49756: <==negation-removal== 50462 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #59703: origin
                    (not_at_c_p1)

                    ; #73274: origin
                    (at_c_p1)

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10)
                           (not (leader_c)))
        :effect (and
                    ; #59703: origin
                    (not_at_c_p1)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49756: origin
                    (at_c_p12)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53010: origin
                    (at_c_p2)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #53714: origin
                    (at_c_p3)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53637: origin
                    (at_c_p4)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #59703: origin
                    (not_at_c_p1)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #59703: origin
                    (not_at_c_p1)

                    ; #87968: origin
                    (at_c_p6)

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50165: origin
                    (at_c_p9)

                    ; #59703: origin
                    (not_at_c_p1)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #73274: <==negation-removal== 59703 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #73274: origin
                    (at_c_p1)

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #34027: origin
                    (not_at_c_p2)

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #49756: origin
                    (at_c_p12)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #53637: origin
                    (at_c_p4)

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #87968: origin
                    (at_c_p6)

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #37144: origin
                    (at_c_p7)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #36091: origin
                    (at_c_p8)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #34027: origin
                    (not_at_c_p2)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #53010: <==negation-removal== 34027 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #73274: origin
                    (at_c_p1)

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #47913: origin
                    (not_at_c_p3)

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #49756: origin
                    (at_c_p12)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #53637: origin
                    (at_c_p4)

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #87968: origin
                    (at_c_p6)

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #47913: origin
                    (not_at_c_p3)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #47913: origin
                    (not_at_c_p3)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #47913: origin
                    (not_at_c_p3)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #53714: <==negation-removal== 47913 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #54393: origin
                    (not_at_c_p4)

                    ; #73274: origin
                    (at_c_p1)

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #54393: origin
                    (not_at_c_p4)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #49756: origin
                    (at_c_p12)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53010: origin
                    (at_c_p2)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53714: origin
                    (at_c_p3)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53637: origin
                    (at_c_p4)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #54393: origin
                    (not_at_c_p4)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #54393: origin
                    (not_at_c_p4)

                    ; #87968: origin
                    (at_c_p6)

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #50165: origin
                    (at_c_p9)

                    ; #54393: origin
                    (not_at_c_p4)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #53637: <==negation-removal== 54393 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #73274: origin
                    (at_c_p1)

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #26721: origin
                    (at_c_p11)

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #49756: origin
                    (at_c_p12)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #53637: origin
                    (at_c_p4)

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #87968: origin
                    (at_c_p6)

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #37144: origin
                    (at_c_p7)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #36091: origin
                    (at_c_p8)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9)
                           (not (leader_c)))
        :effect (and
                    ; #24822: origin
                    (not_at_c_p5)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #81007: <==negation-removal== 24822 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #72769: origin
                    (not_at_c_p6)

                    ; #73274: origin
                    (at_c_p1)

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10)
                           (not (leader_c)))
        :effect (and
                    ; #72769: origin
                    (not_at_c_p6)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12)
                           (not (leader_c)))
        :effect (and
                    ; #49756: origin
                    (at_c_p12)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2)
                           (not (leader_c)))
        :effect (and
                    ; #53010: origin
                    (at_c_p2)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #53714: origin
                    (at_c_p3)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #53637: origin
                    (at_c_p4)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #72769: origin
                    (not_at_c_p6)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #72769: origin
                    (not_at_c_p6)

                    ; #87968: origin
                    (at_c_p6)

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #50165: origin
                    (at_c_p9)

                    ; #72769: origin
                    (not_at_c_p6)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #87968: <==negation-removal== 72769 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #73274: origin
                    (at_c_p1)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #26721: origin
                    (at_c_p11)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #49756: origin
                    (at_c_p12)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #53714: origin
                    (at_c_p3)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #53637: origin
                    (at_c_p4)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #87968: origin
                    (at_c_p6)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #37144: origin
                    (at_c_p7)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #36091: origin
                    (at_c_p8)

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25641: origin
                    (not_at_c_p7)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #37144: <==negation-removal== 25641 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #73274: origin
                    (at_c_p1)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11)
                           (not (leader_c)))
        :effect (and
                    ; #26721: origin
                    (at_c_p11)

                    ; #43099: origin
                    (not_at_c_p8)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #49756: origin
                    (at_c_p12)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #53714: origin
                    (at_c_p3)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #53637: origin
                    (at_c_p4)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #87968: origin
                    (at_c_p6)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #37144: origin
                    (at_c_p7)

                    ; #43099: origin
                    (not_at_c_p8)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #36091: origin
                    (at_c_p8)

                    ; #43099: origin
                    (not_at_c_p8)

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #43099: origin
                    (not_at_c_p8)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #36091: <==negation-removal== 43099 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #73274: origin
                    (at_c_p1)

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))

                    ; #59703: <==negation-removal== 73274 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #78351: origin
                    (at_c_p10)

                    ; #36779: <==negation-removal== 78351 (pos)
                    (not (not_at_c_p10))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (at_c_p9)
                           (succ_p9_p11)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #26721: origin
                    (at_c_p11)

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))

                    ; #54124: <==negation-removal== 26721 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #49756: origin
                    (at_c_p12)

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))

                    ; #50462: <==negation-removal== 49756 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #53010: origin
                    (at_c_p2)

                    ; #34027: <==negation-removal== 53010 (pos)
                    (not (not_at_c_p2))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #53714: origin
                    (at_c_p3)

                    ; #47913: <==negation-removal== 53714 (pos)
                    (not (not_at_c_p3))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #53637: origin
                    (at_c_p4)

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))

                    ; #54393: <==negation-removal== 53637 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #81007: origin
                    (at_c_p5)

                    ; #24822: <==negation-removal== 81007 (pos)
                    (not (not_at_c_p5))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #87968: origin
                    (at_c_p6)

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))

                    ; #72769: <==negation-removal== 87968 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #37144: origin
                    (at_c_p7)

                    ; #25641: <==negation-removal== 37144 (pos)
                    (not (not_at_c_p7))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #36091: origin
                    (at_c_p8)

                    ; #43099: <==negation-removal== 36091 (pos)
                    (not (not_at_c_p8))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13407: origin
                    (not_at_c_p9)

                    ; #50165: origin
                    (at_c_p9)

                    ; #13407: <==negation-removal== 50165 (pos)
                    (not (not_at_c_p9))

                    ; #50165: <==negation-removal== 13407 (pos)
                    (not (at_c_p9))))

    (:action move_d_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #78125: origin
                    (at_d_p10)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #79217: origin
                    (at_d_p11)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p2
        :precondition (and (at_d_p10)
                           (succ_p10_p2)
                           (not (leader_d)))
        :effect (and
                    ; #75718: origin
                    (at_d_p2)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p4
        :precondition (and (at_d_p10)
                           (succ_p10_p4)
                           (not (leader_d)))
        :effect (and
                    ; #70385: origin
                    (at_d_p4)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p5
        :precondition (and (at_d_p10)
                           (succ_p10_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #81034: origin
                    (not_at_d_p10)

                    ; #86069: origin
                    (at_d_p6)

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p10_p7
        :precondition (and (at_d_p10)
                           (succ_p10_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p8
        :precondition (and (at_d_p10)
                           (succ_p10_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))))

    (:action move_d_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #81034: origin
                    (not_at_d_p10)

                    ; #78125: <==negation-removal== 81034 (pos)
                    (not (at_d_p10))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p11_p1
        :precondition (and (at_d_p11)
                           (succ_p11_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p10
        :precondition (and (at_d_p11)
                           (succ_p11_p10)
                           (not (leader_d)))
        :effect (and
                    ; #64305: origin
                    (not_at_d_p11)

                    ; #78125: origin
                    (at_d_p10)

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p11_p11
        :precondition (and (at_d_p11)
                           (succ_p11_p11)
                           (not (leader_d)))
        :effect (and
                    ; #64305: origin
                    (not_at_d_p11)

                    ; #79217: origin
                    (at_d_p11)

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p12
        :precondition (and (at_d_p11)
                           (succ_p11_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p2
        :precondition (and (at_d_p11)
                           (succ_p11_p2)
                           (not (leader_d)))
        :effect (and
                    ; #64305: origin
                    (not_at_d_p11)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p3
        :precondition (and (at_d_p11)
                           (succ_p11_p3)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p4
        :precondition (and (at_d_p11)
                           (succ_p11_p4)
                           (not (leader_d)))
        :effect (and
                    ; #64305: origin
                    (not_at_d_p11)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p5
        :precondition (and (at_d_p11)
                           (succ_p11_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p6
        :precondition (and (at_d_p11)
                           (succ_p11_p6)
                           (not (leader_d)))
        :effect (and
                    ; #64305: origin
                    (not_at_d_p11)

                    ; #86069: origin
                    (at_d_p6)

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p11_p7
        :precondition (and (at_d_p11)
                           (succ_p11_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p8
        :precondition (and (at_d_p11)
                           (succ_p11_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))))

    (:action move_d_p11_p9
        :precondition (and (at_d_p11)
                           (succ_p11_p9)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #64305: origin
                    (not_at_d_p11)

                    ; #79217: <==negation-removal== 64305 (pos)
                    (not (at_d_p11))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #36537: origin
                    (not_at_d_p12)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #78125: origin
                    (at_d_p10)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #79217: origin
                    (at_d_p11)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #36537: origin
                    (not_at_d_p12)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #75718: origin
                    (at_d_p2)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #51425: origin
                    (at_d_p3)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #70385: origin
                    (at_d_p4)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #86069: origin
                    (at_d_p6)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #36537: origin
                    (not_at_d_p12)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))))

    (:action move_d_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #36537: origin
                    (not_at_d_p12)

                    ; #57680: origin
                    (at_d_p8)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #36537: origin
                    (not_at_d_p12)

                    ; #33720: <==negation-removal== 36537 (pos)
                    (not (at_d_p12))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p10
        :precondition (and (at_d_p1)
                           (succ_p1_p10)
                           (not (leader_d)))
        :effect (and
                    ; #71182: origin
                    (not_at_d_p1)

                    ; #78125: origin
                    (at_d_p10)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p1_p11
        :precondition (and (at_d_p1)
                           (succ_p1_p11)
                           (not (leader_d)))
        :effect (and
                    ; #71182: origin
                    (not_at_d_p1)

                    ; #79217: origin
                    (at_d_p11)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p1_p12
        :precondition (and (at_d_p1)
                           (succ_p1_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2)
                           (not (leader_d)))
        :effect (and
                    ; #71182: origin
                    (not_at_d_p1)

                    ; #75718: origin
                    (at_d_p2)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (at_d_p1)
                           (succ_p1_p3)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4)
                           (not (leader_d)))
        :effect (and
                    ; #70385: origin
                    (at_d_p4)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (at_d_p1)
                           (succ_p1_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6)
                           (not (leader_d)))
        :effect (and
                    ; #71182: origin
                    (not_at_d_p1)

                    ; #86069: origin
                    (at_d_p6)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (at_d_p1)
                           (succ_p1_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (at_d_p1)
                           (succ_p1_p9)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #71182: origin
                    (not_at_d_p1)

                    ; #21686: <==negation-removal== 71182 (pos)
                    (not (at_d_p1))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #36556: origin
                    (not_at_d_p2)

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p10
        :precondition (and (at_d_p2)
                           (succ_p2_p10)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #78125: origin
                    (at_d_p10)

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #79217: origin
                    (at_d_p11)

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p12
        :precondition (and (at_d_p2)
                           (succ_p2_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #36556: origin
                    (not_at_d_p2)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #51425: origin
                    (at_d_p3)

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #86069: origin
                    (at_d_p6)

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #36556: origin
                    (not_at_d_p2)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p8
        :precondition (and (at_d_p2)
                           (succ_p2_p8)
                           (not (leader_d)))
        :effect (and
                    ; #36556: origin
                    (not_at_d_p2)

                    ; #57680: origin
                    (at_d_p8)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #36556: origin
                    (not_at_d_p2)

                    ; #75718: <==negation-removal== 36556 (pos)
                    (not (at_d_p2))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #60200: origin
                    (not_at_d_p3)

                    ; #78125: origin
                    (at_d_p10)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #60200: origin
                    (not_at_d_p3)

                    ; #79217: origin
                    (at_d_p11)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #60200: origin
                    (not_at_d_p3)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #60200: origin
                    (not_at_d_p3)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #60200: origin
                    (not_at_d_p3)

                    ; #86069: origin
                    (at_d_p6)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #60200: origin
                    (not_at_d_p3)

                    ; #51425: <==negation-removal== 60200 (pos)
                    (not (at_d_p3))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #42893: origin
                    (not_at_d_p4)

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p4_p10
        :precondition (and (at_d_p4)
                           (succ_p4_p10)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #78125: origin
                    (at_d_p10)

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p4_p11
        :precondition (and (at_d_p4)
                           (succ_p4_p11)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #79217: origin
                    (at_d_p11)

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p12
        :precondition (and (at_d_p4)
                           (succ_p4_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #42893: origin
                    (not_at_d_p4)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (at_d_p4)
                           (succ_p4_p2)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #51425: origin
                    (at_d_p3)

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (at_d_p4)
                           (succ_p4_p4)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (at_d_p4)
                           (succ_p4_p6)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #86069: origin
                    (at_d_p6)

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p4_p7
        :precondition (and (at_d_p4)
                           (succ_p4_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #42893: origin
                    (not_at_d_p4)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8)
                           (not (leader_d)))
        :effect (and
                    ; #42893: origin
                    (not_at_d_p4)

                    ; #57680: origin
                    (at_d_p8)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #42893: origin
                    (not_at_d_p4)

                    ; #70385: <==negation-removal== 42893 (pos)
                    (not (at_d_p4))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (at_d_p5)
                           (succ_p5_p1)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #21686: origin
                    (at_d_p1)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #78125: origin
                    (at_d_p10)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p5_p11
        :precondition (and (at_d_p5)
                           (succ_p5_p11)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #79217: origin
                    (at_d_p11)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p5_p12
        :precondition (and (at_d_p5)
                           (succ_p5_p12)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #33720: origin
                    (at_d_p12)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #51425: origin
                    (at_d_p3)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (at_d_p5)
                           (succ_p5_p4)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p5
        :precondition (and (at_d_p5)
                           (succ_p5_p5)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (at_d_p5)
                           (succ_p5_p6)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #86069: origin
                    (at_d_p6)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (at_d_p5)
                           (succ_p5_p7)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #15525: origin
                    (at_d_p7)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #57680: origin
                    (at_d_p8)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p9
        :precondition (and (at_d_p5)
                           (succ_p5_p9)
                           (not (leader_d)))
        :effect (and
                    ; #14686: origin
                    (not_at_d_p5)

                    ; #35875: origin
                    (at_d_p9)

                    ; #45165: <==negation-removal== 14686 (pos)
                    (not (at_d_p5))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #78125: origin
                    (at_d_p10)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #79217: origin
                    (at_d_p11)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #75718: origin
                    (at_d_p2)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #70385: origin
                    (at_d_p4)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #82960: origin
                    (not_at_d_p6)

                    ; #86069: origin
                    (at_d_p6)

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #82960: origin
                    (not_at_d_p6)

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))

                    ; #86069: <==negation-removal== 82960 (pos)
                    (not (at_d_p6))))

    (:action move_d_p7_p1
        :precondition (and (at_d_p7)
                           (succ_p7_p1)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #21686: origin
                    (at_d_p1)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p10
        :precondition (and (at_d_p7)
                           (succ_p7_p10)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #78125: origin
                    (at_d_p10)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p7_p11
        :precondition (and (at_d_p7)
                           (succ_p7_p11)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #79217: origin
                    (at_d_p11)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p7_p12
        :precondition (and (at_d_p7)
                           (succ_p7_p12)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #33720: origin
                    (at_d_p12)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p7_p2
        :precondition (and (at_d_p7)
                           (succ_p7_p2)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #75718: origin
                    (at_d_p2)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (at_d_p7)
                           (succ_p7_p3)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #51425: origin
                    (at_d_p3)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #70385: origin
                    (at_d_p4)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (at_d_p7)
                           (succ_p7_p5)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #86069: origin
                    (at_d_p6)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (at_d_p7)
                           (succ_p7_p7)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #15525: origin
                    (at_d_p7)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (at_d_p7)
                           (succ_p7_p8)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #57680: origin
                    (at_d_p8)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (at_d_p7)
                           (succ_p7_p9)
                           (not (leader_d)))
        :effect (and
                    ; #11941: origin
                    (not_at_d_p7)

                    ; #35875: origin
                    (at_d_p9)

                    ; #15525: <==negation-removal== 11941 (pos)
                    (not (at_d_p7))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (at_d_p8)
                           (succ_p8_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #37463: origin
                    (not_at_d_p8)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p10
        :precondition (and (at_d_p8)
                           (succ_p8_p10)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #78125: origin
                    (at_d_p10)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p8_p11
        :precondition (and (at_d_p8)
                           (succ_p8_p11)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #79217: origin
                    (at_d_p11)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p8_p12
        :precondition (and (at_d_p8)
                           (succ_p8_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #37463: origin
                    (not_at_d_p8)

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p2
        :precondition (and (at_d_p8)
                           (succ_p8_p2)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #75718: origin
                    (at_d_p2)

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #51425: origin
                    (at_d_p3)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #70385: origin
                    (at_d_p4)

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p5
        :precondition (and (at_d_p8)
                           (succ_p8_p5)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #45165: origin
                    (at_d_p5)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (at_d_p8)
                           (succ_p8_p6)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #86069: origin
                    (at_d_p6)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (at_d_p8)
                           (succ_p8_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #37463: origin
                    (not_at_d_p8)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p8
        :precondition (and (at_d_p8)
                           (succ_p8_p8)
                           (not (leader_d)))
        :effect (and
                    ; #37463: origin
                    (not_at_d_p8)

                    ; #57680: origin
                    (at_d_p8)

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (at_d_p8)
                           (succ_p8_p9)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #37463: origin
                    (not_at_d_p8)

                    ; #57680: <==negation-removal== 37463 (pos)
                    (not (at_d_p8))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (at_d_p9)
                           (succ_p9_p1)
                           (not (leader_d)))
        :effect (and
                    ; #21686: origin
                    (at_d_p1)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #71182: <==negation-removal== 21686 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p10
        :precondition (and (at_d_p9)
                           (succ_p9_p10)
                           (not (leader_d)))
        :effect (and
                    ; #78125: origin
                    (at_d_p10)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #81034: <==negation-removal== 78125 (pos)
                    (not (not_at_d_p10))))

    (:action move_d_p9_p11
        :precondition (and (at_d_p9)
                           (succ_p9_p11)
                           (not (leader_d)))
        :effect (and
                    ; #79217: origin
                    (at_d_p11)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #64305: <==negation-removal== 79217 (pos)
                    (not (not_at_d_p11))))

    (:action move_d_p9_p12
        :precondition (and (at_d_p9)
                           (succ_p9_p12)
                           (not (leader_d)))
        :effect (and
                    ; #33720: origin
                    (at_d_p12)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #36537: <==negation-removal== 33720 (pos)
                    (not (not_at_d_p12))))

    (:action move_d_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #75718: origin
                    (at_d_p2)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #36556: <==negation-removal== 75718 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (at_d_p9)
                           (succ_p9_p3)
                           (not (leader_d)))
        :effect (and
                    ; #51425: origin
                    (at_d_p3)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #60200: <==negation-removal== 51425 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4)
                           (not (leader_d)))
        :effect (and
                    ; #70385: origin
                    (at_d_p4)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #42893: <==negation-removal== 70385 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5)
                           (not (leader_d)))
        :effect (and
                    ; #45165: origin
                    (at_d_p5)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #14686: <==negation-removal== 45165 (pos)
                    (not (not_at_d_p5))

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (at_d_p9)
                           (succ_p9_p6)
                           (not (leader_d)))
        :effect (and
                    ; #84685: origin
                    (not_at_d_p9)

                    ; #86069: origin
                    (at_d_p6)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #82960: <==negation-removal== 86069 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (at_d_p9)
                           (succ_p9_p7)
                           (not (leader_d)))
        :effect (and
                    ; #15525: origin
                    (at_d_p7)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #11941: <==negation-removal== 15525 (pos)
                    (not (not_at_d_p7))

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p8
        :precondition (and (at_d_p9)
                           (succ_p9_p8)
                           (not (leader_d)))
        :effect (and
                    ; #57680: origin
                    (at_d_p8)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #37463: <==negation-removal== 57680 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #35875: origin
                    (at_d_p9)

                    ; #84685: origin
                    (not_at_d_p9)

                    ; #35875: <==negation-removal== 84685 (pos)
                    (not (at_d_p9))

                    ; #84685: <==negation-removal== 35875 (pos)
                    (not (not_at_d_p9))))

    (:action observe_a_p10_s
        :precondition (and (at_a_p10)
                           (not (leader_a)))
        :effect (and
                    ; #38194: <==closure== 59688 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #38934: <==commonly_known== 71874 (pos)
                    (Bc_checked_p10)

                    ; #41041: <==closure== 53448 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #42004: <==commonly_known== 58891 (neg)
                    (Pd_checked_p10)

                    ; #53448: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #54073: <==commonly_known== 71874 (pos)
                    (Bd_checked_p10)

                    ; #59688: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #62923: <==commonly_known== 58891 (neg)
                    (Pa_checked_p10)

                    ; #69327: <==commonly_known== 71874 (pos)
                    (Ba_checked_p10)

                    ; #71874: origin
                    (checked_p10)

                    ; #86681: <==commonly_known== 58891 (neg)
                    (Pc_checked_p10)

                    ; #87193: <==commonly_known== 58891 (neg)
                    (Pb_checked_p10)

                    ; #89326: <==commonly_known== 71874 (pos)
                    (Bb_checked_p10)

                    ; #18690: <==negation-removal== 87193 (pos)
                    (not (Bb_not_checked_p10))

                    ; #28815: <==uncertain_firing== 38194 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #30723: <==negation-removal== 89326 (pos)
                    (not (Pb_not_checked_p10))

                    ; #32455: <==negation-removal== 38194 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #39069: <==negation-removal== 86681 (pos)
                    (not (Bc_not_checked_p10))

                    ; #51000: <==negation-removal== 42004 (pos)
                    (not (Bd_not_checked_p10))

                    ; #54736: <==negation-removal== 54073 (pos)
                    (not (Pd_not_checked_p10))

                    ; #58891: <==negation-removal== 71874 (pos)
                    (not (not_checked_p10))

                    ; #68964: <==uncertain_firing== 41041 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #73013: <==negation-removal== 69327 (pos)
                    (not (Pa_not_checked_p10))

                    ; #75024: <==negation-removal== 41041 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #76791: <==negation-removal== 53448 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #77506: <==uncertain_firing== 59688 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #83605: <==negation-removal== 59688 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #89054: <==negation-removal== 62923 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89854: <==negation-removal== 38934 (pos)
                    (not (Pc_not_checked_p10))

                    ; #93486: <==uncertain_firing== 53448 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))))

    (:action observe_a_p11_s
        :precondition (and (at_a_p11)
                           (not (leader_a)))
        :effect (and
                    ; #12284: <==commonly_known== 64162 (pos)
                    (Bd_checked_p11)

                    ; #19376: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #20907: <==commonly_known== 85929 (neg)
                    (Pa_checked_p11)

                    ; #25469: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #29528: <==commonly_known== 64162 (pos)
                    (Bb_checked_p11)

                    ; #32937: <==commonly_known== 64162 (pos)
                    (Bc_checked_p11)

                    ; #47012: <==commonly_known== 85929 (neg)
                    (Pd_checked_p11)

                    ; #64162: origin
                    (checked_p11)

                    ; #67554: <==commonly_known== 85929 (neg)
                    (Pc_checked_p11)

                    ; #68506: <==commonly_known== 64162 (pos)
                    (Ba_checked_p11)

                    ; #74032: <==commonly_known== 85929 (neg)
                    (Pb_checked_p11)

                    ; #79717: <==closure== 19376 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #83183: <==closure== 25469 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #13493: <==negation-removal== 68506 (pos)
                    (not (Pa_not_checked_p11))

                    ; #16257: <==negation-removal== 20907 (pos)
                    (not (Ba_not_checked_p11))

                    ; #21349: <==uncertain_firing== 83183 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #26563: <==negation-removal== 47012 (pos)
                    (not (Bd_not_checked_p11))

                    ; #30371: <==negation-removal== 83183 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #33998: <==negation-removal== 12284 (pos)
                    (not (Pd_not_checked_p11))

                    ; #35444: <==negation-removal== 79717 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #41887: <==uncertain_firing== 19376 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #56913: <==negation-removal== 32937 (pos)
                    (not (Pc_not_checked_p11))

                    ; #71616: <==negation-removal== 25469 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #72206: <==uncertain_firing== 25469 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #78676: <==uncertain_firing== 79717 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #85591: <==negation-removal== 74032 (pos)
                    (not (Bb_not_checked_p11))

                    ; #85929: <==negation-removal== 64162 (pos)
                    (not (not_checked_p11))

                    ; #90374: <==negation-removal== 19376 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #90920: <==negation-removal== 67554 (pos)
                    (not (Bc_not_checked_p11))

                    ; #94763: <==negation-removal== 29528 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_a_p12_s
        :precondition (and (at_a_p12)
                           (not (leader_a)))
        :effect (and
                    ; #31739: <==closure== 43820 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #36282: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #36930: <==commonly_known== 73197 (pos)
                    (Bb_checked_p12)

                    ; #43820: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #44057: <==commonly_known== 76057 (neg)
                    (Pa_checked_p12)

                    ; #45190: <==commonly_known== 76057 (neg)
                    (Pc_checked_p12)

                    ; #53060: <==commonly_known== 73197 (pos)
                    (Bc_checked_p12)

                    ; #63570: <==closure== 36282 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #73197: origin
                    (checked_p12)

                    ; #76420: <==commonly_known== 73197 (pos)
                    (Bd_checked_p12)

                    ; #79058: <==commonly_known== 73197 (pos)
                    (Ba_checked_p12)

                    ; #83828: <==commonly_known== 76057 (neg)
                    (Pd_checked_p12)

                    ; #88682: <==commonly_known== 76057 (neg)
                    (Pb_checked_p12)

                    ; #11668: <==negation-removal== 43820 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #22460: <==uncertain_firing== 63570 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #33495: <==uncertain_firing== 36282 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #37997: <==negation-removal== 36282 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #38141: <==uncertain_firing== 43820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #44487: <==negation-removal== 53060 (pos)
                    (not (Pc_not_checked_p12))

                    ; #44951: <==negation-removal== 63570 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #45067: <==negation-removal== 79058 (pos)
                    (not (Pa_not_checked_p12))

                    ; #49419: <==negation-removal== 83828 (pos)
                    (not (Bd_not_checked_p12))

                    ; #50790: <==negation-removal== 45190 (pos)
                    (not (Bc_not_checked_p12))

                    ; #50829: <==negation-removal== 31739 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #67970: <==uncertain_firing== 31739 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #75946: <==negation-removal== 88682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #76057: <==negation-removal== 73197 (pos)
                    (not (not_checked_p12))

                    ; #81954: <==negation-removal== 36930 (pos)
                    (not (Pb_not_checked_p12))

                    ; #89342: <==negation-removal== 44057 (pos)
                    (not (Ba_not_checked_p12))

                    ; #92096: <==negation-removal== 76420 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #12778: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #15895: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #16218: <==commonly_known== 48424 (pos)
                    (Ba_checked_p1)

                    ; #33286: <==commonly_known== 63117 (neg)
                    (Pb_checked_p1)

                    ; #34406: <==closure== 15895 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #37152: <==closure== 12778 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #39679: <==commonly_known== 48424 (pos)
                    (Bd_checked_p1)

                    ; #48424: origin
                    (checked_p1)

                    ; #50888: <==commonly_known== 63117 (neg)
                    (Pa_checked_p1)

                    ; #63059: <==commonly_known== 63117 (neg)
                    (Pd_checked_p1)

                    ; #76305: <==commonly_known== 48424 (pos)
                    (Bb_checked_p1)

                    ; #83874: <==commonly_known== 48424 (pos)
                    (Bc_checked_p1)

                    ; #86799: <==commonly_known== 63117 (neg)
                    (Pc_checked_p1)

                    ; #14522: <==negation-removal== 12778 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #18971: <==uncertain_firing== 34406 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #19409: <==negation-removal== 37152 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #20362: <==negation-removal== 39679 (pos)
                    (not (Pd_not_checked_p1))

                    ; #24269: <==negation-removal== 83874 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24424: <==negation-removal== 86799 (pos)
                    (not (Bc_not_checked_p1))

                    ; #25663: <==uncertain_firing== 15895 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #29927: <==negation-removal== 34406 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #35137: <==negation-removal== 16218 (pos)
                    (not (Pa_not_checked_p1))

                    ; #48924: <==negation-removal== 50888 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52382: <==negation-removal== 33286 (pos)
                    (not (Bb_not_checked_p1))

                    ; #58303: <==uncertain_firing== 37152 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63117: <==negation-removal== 48424 (pos)
                    (not (not_checked_p1))

                    ; #71384: <==uncertain_firing== 12778 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #72169: <==negation-removal== 63059 (pos)
                    (not (Bd_not_checked_p1))

                    ; #76408: <==negation-removal== 15895 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #94999: <==negation-removal== 76305 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14574: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #19575: <==commonly_known== 21156 (pos)
                    (Bd_checked_p2)

                    ; #20805: <==commonly_known== 21156 (pos)
                    (Bc_checked_p2)

                    ; #21156: origin
                    (checked_p2)

                    ; #28021: <==closure== 70999 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #29085: <==commonly_known== 19512 (neg)
                    (Pc_checked_p2)

                    ; #33893: <==commonly_known== 19512 (neg)
                    (Pd_checked_p2)

                    ; #53359: <==commonly_known== 19512 (neg)
                    (Pb_checked_p2)

                    ; #67250: <==commonly_known== 19512 (neg)
                    (Pa_checked_p2)

                    ; #70999: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #79435: <==commonly_known== 21156 (pos)
                    (Ba_checked_p2)

                    ; #80732: <==closure== 14574 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #84492: <==commonly_known== 21156 (pos)
                    (Bb_checked_p2)

                    ; #19512: <==negation-removal== 21156 (pos)
                    (not (not_checked_p2))

                    ; #22670: <==negation-removal== 33893 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24168: <==negation-removal== 20805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #29355: <==negation-removal== 80732 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #42444: <==negation-removal== 19575 (pos)
                    (not (Pd_not_checked_p2))

                    ; #49029: <==negation-removal== 29085 (pos)
                    (not (Bc_not_checked_p2))

                    ; #53266: <==negation-removal== 28021 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #55690: <==negation-removal== 53359 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58130: <==negation-removal== 70999 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #58137: <==negation-removal== 84492 (pos)
                    (not (Pb_not_checked_p2))

                    ; #63700: <==uncertain_firing== 70999 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #68969: <==negation-removal== 79435 (pos)
                    (not (Pa_not_checked_p2))

                    ; #83764: <==negation-removal== 67250 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84069: <==uncertain_firing== 14574 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #87548: <==uncertain_firing== 28021 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #88095: <==negation-removal== 14574 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #89832: <==uncertain_firing== 80732 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #15591: <==commonly_known== 62576 (pos)
                    (Bb_checked_p3)

                    ; #20344: <==commonly_known== 62576 (pos)
                    (Ba_checked_p3)

                    ; #27823: <==commonly_known== 62576 (pos)
                    (Bd_checked_p3)

                    ; #27987: <==commonly_known== 22701 (neg)
                    (Pa_checked_p3)

                    ; #28768: <==commonly_known== 22701 (neg)
                    (Pd_checked_p3)

                    ; #40153: <==commonly_known== 22701 (neg)
                    (Pb_checked_p3)

                    ; #44454: <==commonly_known== 22701 (neg)
                    (Pc_checked_p3)

                    ; #46017: <==commonly_known== 62576 (pos)
                    (Bc_checked_p3)

                    ; #49900: <==closure== 87516 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #53820: <==closure== 60775 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #60775: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #62576: origin
                    (checked_p3)

                    ; #87516: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #22701: <==negation-removal== 62576 (pos)
                    (not (not_checked_p3))

                    ; #30244: <==negation-removal== 60775 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #32501: <==uncertain_firing== 53820 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #36644: <==uncertain_firing== 49900 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #40698: <==negation-removal== 27987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #42814: <==negation-removal== 87516 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #43642: <==negation-removal== 40153 (pos)
                    (not (Bb_not_checked_p3))

                    ; #48451: <==negation-removal== 53820 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #51906: <==negation-removal== 44454 (pos)
                    (not (Bc_not_checked_p3))

                    ; #53760: <==uncertain_firing== 87516 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #53789: <==uncertain_firing== 60775 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #59807: <==negation-removal== 27823 (pos)
                    (not (Pd_not_checked_p3))

                    ; #60436: <==negation-removal== 20344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78586: <==negation-removal== 46017 (pos)
                    (not (Pc_not_checked_p3))

                    ; #78842: <==negation-removal== 49900 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #83603: <==negation-removal== 28768 (pos)
                    (not (Bd_not_checked_p3))

                    ; #85715: <==negation-removal== 15591 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #10917: <==commonly_known== 77990 (neg)
                    (Pd_checked_p4)

                    ; #35346: <==commonly_known== 70399 (pos)
                    (Bd_checked_p4)

                    ; #35913: <==commonly_known== 77990 (neg)
                    (Pa_checked_p4)

                    ; #38053: <==commonly_known== 77990 (neg)
                    (Pc_checked_p4)

                    ; #52953: <==closure== 57708 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #57708: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #58824: <==commonly_known== 70399 (pos)
                    (Bb_checked_p4)

                    ; #67408: <==closure== 86823 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #67734: <==commonly_known== 77990 (neg)
                    (Pb_checked_p4)

                    ; #70084: <==commonly_known== 70399 (pos)
                    (Ba_checked_p4)

                    ; #70399: origin
                    (checked_p4)

                    ; #86190: <==commonly_known== 70399 (pos)
                    (Bc_checked_p4)

                    ; #86823: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #17726: <==negation-removal== 52953 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #17796: <==uncertain_firing== 67408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #22898: <==negation-removal== 70084 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33364: <==uncertain_firing== 52953 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #33598: <==negation-removal== 86190 (pos)
                    (not (Pc_not_checked_p4))

                    ; #35170: <==negation-removal== 57708 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #41553: <==negation-removal== 67408 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45263: <==negation-removal== 67734 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45642: <==negation-removal== 35913 (pos)
                    (not (Ba_not_checked_p4))

                    ; #53293: <==uncertain_firing== 57708 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #59205: <==negation-removal== 38053 (pos)
                    (not (Bc_not_checked_p4))

                    ; #61974: <==uncertain_firing== 86823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #66020: <==negation-removal== 35346 (pos)
                    (not (Pd_not_checked_p4))

                    ; #69580: <==negation-removal== 86823 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #77990: <==negation-removal== 70399 (pos)
                    (not (not_checked_p4))

                    ; #81678: <==negation-removal== 10917 (pos)
                    (not (Bd_not_checked_p4))

                    ; #87167: <==negation-removal== 58824 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #13961: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #23971: <==commonly_known== 38461 (pos)
                    (Bc_checked_p5)

                    ; #27140: <==closure== 90128 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #38461: origin
                    (checked_p5)

                    ; #45621: <==commonly_known== 18481 (neg)
                    (Pa_checked_p5)

                    ; #47665: <==commonly_known== 18481 (neg)
                    (Pc_checked_p5)

                    ; #54201: <==commonly_known== 38461 (pos)
                    (Bd_checked_p5)

                    ; #56413: <==commonly_known== 38461 (pos)
                    (Ba_checked_p5)

                    ; #81000: <==closure== 13961 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #81205: <==commonly_known== 38461 (pos)
                    (Bb_checked_p5)

                    ; #87333: <==commonly_known== 18481 (neg)
                    (Pb_checked_p5)

                    ; #90128: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #97865: <==commonly_known== 18481 (neg)
                    (Pd_checked_p5)

                    ; #11543: <==uncertain_firing== 81000 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #14820: <==negation-removal== 54201 (pos)
                    (not (Pd_not_checked_p5))

                    ; #17743: <==negation-removal== 13961 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #18481: <==negation-removal== 38461 (pos)
                    (not (not_checked_p5))

                    ; #26211: <==uncertain_firing== 27140 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #29447: <==negation-removal== 23971 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31306: <==negation-removal== 81205 (pos)
                    (not (Pb_not_checked_p5))

                    ; #41690: <==negation-removal== 56413 (pos)
                    (not (Pa_not_checked_p5))

                    ; #42742: <==negation-removal== 47665 (pos)
                    (not (Bc_not_checked_p5))

                    ; #45029: <==negation-removal== 90128 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #45214: <==uncertain_firing== 90128 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #51844: <==negation-removal== 87333 (pos)
                    (not (Bb_not_checked_p5))

                    ; #60502: <==negation-removal== 27140 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #62913: <==negation-removal== 45621 (pos)
                    (not (Ba_not_checked_p5))

                    ; #63774: <==negation-removal== 81000 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67649: <==uncertain_firing== 13961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72888: <==negation-removal== 97865 (pos)
                    (not (Bd_not_checked_p5))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10345: <==closure== 85354 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #19453: <==commonly_known== 66273 (neg)
                    (Pc_checked_p6)

                    ; #28341: <==commonly_known== 66273 (neg)
                    (Pd_checked_p6)

                    ; #45090: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #49379: <==commonly_known== 66273 (neg)
                    (Pa_checked_p6)

                    ; #51297: <==commonly_known== 87036 (pos)
                    (Bb_checked_p6)

                    ; #57715: <==commonly_known== 87036 (pos)
                    (Ba_checked_p6)

                    ; #71687: <==commonly_known== 66273 (neg)
                    (Pb_checked_p6)

                    ; #72515: <==closure== 45090 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #82786: <==commonly_known== 87036 (pos)
                    (Bc_checked_p6)

                    ; #85354: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #87036: origin
                    (checked_p6)

                    ; #88075: <==commonly_known== 87036 (pos)
                    (Bd_checked_p6)

                    ; #19471: <==negation-removal== 72515 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #27027: <==negation-removal== 10345 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #28240: <==negation-removal== 28341 (pos)
                    (not (Bd_not_checked_p6))

                    ; #35707: <==negation-removal== 45090 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #37463: <==negation-removal== 82786 (pos)
                    (not (Pc_not_checked_p6))

                    ; #41865: <==negation-removal== 71687 (pos)
                    (not (Bb_not_checked_p6))

                    ; #47938: <==uncertain_firing== 72515 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52616: <==negation-removal== 88075 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54056: <==negation-removal== 57715 (pos)
                    (not (Pa_not_checked_p6))

                    ; #66273: <==negation-removal== 87036 (pos)
                    (not (not_checked_p6))

                    ; #78347: <==negation-removal== 49379 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79071: <==negation-removal== 85354 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #81161: <==uncertain_firing== 10345 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #81522: <==uncertain_firing== 45090 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #83270: <==uncertain_firing== 85354 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #86670: <==negation-removal== 51297 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87673: <==negation-removal== 19453 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #11880: <==commonly_known== 41707 (neg)
                    (Pb_checked_p7)

                    ; #20185: <==commonly_known== 41707 (neg)
                    (Pd_checked_p7)

                    ; #23127: <==closure== 67301 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #45031: <==commonly_known== 71265 (pos)
                    (Bb_checked_p7)

                    ; #59867: <==commonly_known== 71265 (pos)
                    (Ba_checked_p7)

                    ; #61135: <==closure== 75107 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #67301: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #71265: origin
                    (checked_p7)

                    ; #71687: <==commonly_known== 41707 (neg)
                    (Pa_checked_p7)

                    ; #75107: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #82637: <==commonly_known== 71265 (pos)
                    (Bd_checked_p7)

                    ; #85496: <==commonly_known== 71265 (pos)
                    (Bc_checked_p7)

                    ; #89956: <==commonly_known== 41707 (neg)
                    (Pc_checked_p7)

                    ; #14952: <==negation-removal== 89956 (pos)
                    (not (Bc_not_checked_p7))

                    ; #25145: <==negation-removal== 20185 (pos)
                    (not (Bd_not_checked_p7))

                    ; #25343: <==negation-removal== 75107 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #25842: <==uncertain_firing== 75107 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #26058: <==uncertain_firing== 23127 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #34335: <==negation-removal== 11880 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41052: <==negation-removal== 45031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41707: <==negation-removal== 71265 (pos)
                    (not (not_checked_p7))

                    ; #46966: <==negation-removal== 59867 (pos)
                    (not (Pa_not_checked_p7))

                    ; #56409: <==negation-removal== 61135 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #58534: <==negation-removal== 23127 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #61950: <==negation-removal== 85496 (pos)
                    (not (Pc_not_checked_p7))

                    ; #64608: <==uncertain_firing== 67301 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #66520: <==negation-removal== 82637 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77521: <==negation-removal== 71687 (pos)
                    (not (Ba_not_checked_p7))

                    ; #90514: <==uncertain_firing== 61135 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #91958: <==negation-removal== 67301 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27316: <==commonly_known== 35611 (neg)
                    (Pb_checked_p8)

                    ; #33095: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #33505: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #33881: <==commonly_known== 70184 (pos)
                    (Bd_checked_p8)

                    ; #48056: <==commonly_known== 70184 (pos)
                    (Bc_checked_p8)

                    ; #60141: <==closure== 33095 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #61426: <==commonly_known== 35611 (neg)
                    (Pc_checked_p8)

                    ; #67659: <==commonly_known== 70184 (pos)
                    (Bb_checked_p8)

                    ; #70184: origin
                    (checked_p8)

                    ; #71657: <==commonly_known== 70184 (pos)
                    (Ba_checked_p8)

                    ; #76111: <==closure== 33505 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #76666: <==commonly_known== 35611 (neg)
                    (Pd_checked_p8)

                    ; #98771: <==commonly_known== 35611 (neg)
                    (Pa_checked_p8)

                    ; #11656: <==negation-removal== 76666 (pos)
                    (not (Bd_not_checked_p8))

                    ; #16163: <==negation-removal== 48056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #26280: <==negation-removal== 60141 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #29146: <==uncertain_firing== 60141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #35611: <==negation-removal== 70184 (pos)
                    (not (not_checked_p8))

                    ; #40300: <==negation-removal== 61426 (pos)
                    (not (Bc_not_checked_p8))

                    ; #44634: <==negation-removal== 76111 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #45529: <==uncertain_firing== 33095 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #51879: <==negation-removal== 33095 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #62587: <==uncertain_firing== 76111 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #62784: <==uncertain_firing== 33505 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #65761: <==negation-removal== 33881 (pos)
                    (not (Pd_not_checked_p8))

                    ; #65979: <==negation-removal== 67659 (pos)
                    (not (Pb_not_checked_p8))

                    ; #80729: <==negation-removal== 27316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87335: <==negation-removal== 71657 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88233: <==negation-removal== 98771 (pos)
                    (not (Ba_not_checked_p8))

                    ; #89446: <==negation-removal== 33505 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #18866: <==closure== 90440 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #25801: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #27925: <==commonly_known== 68397 (pos)
                    (Bc_checked_p9)

                    ; #40925: <==commonly_known== 12104 (neg)
                    (Pa_checked_p9)

                    ; #47536: <==commonly_known== 68397 (pos)
                    (Ba_checked_p9)

                    ; #53515: <==closure== 25801 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #62234: <==commonly_known== 12104 (neg)
                    (Pd_checked_p9)

                    ; #68397: origin
                    (checked_p9)

                    ; #71028: <==commonly_known== 12104 (neg)
                    (Pb_checked_p9)

                    ; #75057: <==commonly_known== 68397 (pos)
                    (Bd_checked_p9)

                    ; #78391: <==commonly_known== 12104 (neg)
                    (Pc_checked_p9)

                    ; #80169: <==commonly_known== 68397 (pos)
                    (Bb_checked_p9)

                    ; #90440: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #12104: <==negation-removal== 68397 (pos)
                    (not (not_checked_p9))

                    ; #21028: <==negation-removal== 53515 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #29396: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p9))

                    ; #29952: <==uncertain_firing== 25801 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #42779: <==uncertain_firing== 53515 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #45802: <==negation-removal== 62234 (pos)
                    (not (Bd_not_checked_p9))

                    ; #48393: <==negation-removal== 71028 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52639: <==negation-removal== 40925 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54112: <==negation-removal== 18866 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #56588: <==negation-removal== 80169 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70777: <==negation-removal== 47536 (pos)
                    (not (Pa_not_checked_p9))

                    ; #75374: <==uncertain_firing== 90440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #77854: <==negation-removal== 27925 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78287: <==negation-removal== 90440 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #86634: <==negation-removal== 25801 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #89231: <==negation-removal== 78391 (pos)
                    (not (Bc_not_checked_p9))

                    ; #92218: <==uncertain_firing== 18866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action observe_b_p10_s
        :precondition (and (at_b_p10)
                           (not (leader_b)))
        :effect (and
                    ; #38934: <==commonly_known== 71874 (pos)
                    (Bc_checked_p10)

                    ; #39323: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42004: <==commonly_known== 58891 (neg)
                    (Pd_checked_p10)

                    ; #43394: <==closure== 89505 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #54073: <==commonly_known== 71874 (pos)
                    (Bd_checked_p10)

                    ; #62923: <==commonly_known== 58891 (neg)
                    (Pa_checked_p10)

                    ; #69327: <==commonly_known== 71874 (pos)
                    (Ba_checked_p10)

                    ; #71874: origin
                    (checked_p10)

                    ; #84969: <==closure== 39323 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #86681: <==commonly_known== 58891 (neg)
                    (Pc_checked_p10)

                    ; #87193: <==commonly_known== 58891 (neg)
                    (Pb_checked_p10)

                    ; #89326: <==commonly_known== 71874 (pos)
                    (Bb_checked_p10)

                    ; #89505: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #11874: <==uncertain_firing== 39323 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #18690: <==negation-removal== 87193 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30723: <==negation-removal== 89326 (pos)
                    (not (Pb_not_checked_p10))

                    ; #39069: <==negation-removal== 86681 (pos)
                    (not (Bc_not_checked_p10))

                    ; #45118: <==uncertain_firing== 89505 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #51000: <==negation-removal== 42004 (pos)
                    (not (Bd_not_checked_p10))

                    ; #54736: <==negation-removal== 54073 (pos)
                    (not (Pd_not_checked_p10))

                    ; #58891: <==negation-removal== 71874 (pos)
                    (not (not_checked_p10))

                    ; #59754: <==negation-removal== 39323 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #62608: <==negation-removal== 43394 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #71492: <==uncertain_firing== 43394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #73013: <==negation-removal== 69327 (pos)
                    (not (Pa_not_checked_p10))

                    ; #75211: <==negation-removal== 84969 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #86309: <==uncertain_firing== 84969 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #89054: <==negation-removal== 62923 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89854: <==negation-removal== 38934 (pos)
                    (not (Pc_not_checked_p10))

                    ; #97869: <==negation-removal== 89505 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observe_b_p11_s
        :precondition (and (at_b_p11)
                           (not (leader_b)))
        :effect (and
                    ; #12284: <==commonly_known== 64162 (pos)
                    (Bd_checked_p11)

                    ; #16447: <==closure== 45498 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #20907: <==commonly_known== 85929 (neg)
                    (Pa_checked_p11)

                    ; #29528: <==commonly_known== 64162 (pos)
                    (Bb_checked_p11)

                    ; #32937: <==commonly_known== 64162 (pos)
                    (Bc_checked_p11)

                    ; #37542: <==closure== 83189 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #45498: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #47012: <==commonly_known== 85929 (neg)
                    (Pd_checked_p11)

                    ; #64162: origin
                    (checked_p11)

                    ; #67554: <==commonly_known== 85929 (neg)
                    (Pc_checked_p11)

                    ; #68506: <==commonly_known== 64162 (pos)
                    (Ba_checked_p11)

                    ; #74032: <==commonly_known== 85929 (neg)
                    (Pb_checked_p11)

                    ; #83189: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #13493: <==negation-removal== 68506 (pos)
                    (not (Pa_not_checked_p11))

                    ; #16257: <==negation-removal== 20907 (pos)
                    (not (Ba_not_checked_p11))

                    ; #21016: <==negation-removal== 16447 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #26563: <==negation-removal== 47012 (pos)
                    (not (Bd_not_checked_p11))

                    ; #33583: <==uncertain_firing== 45498 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #33998: <==negation-removal== 12284 (pos)
                    (not (Pd_not_checked_p11))

                    ; #43069: <==uncertain_firing== 16447 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #56913: <==negation-removal== 32937 (pos)
                    (not (Pc_not_checked_p11))

                    ; #57725: <==negation-removal== 37542 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #68491: <==negation-removal== 45498 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #78422: <==uncertain_firing== 37542 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #85591: <==negation-removal== 74032 (pos)
                    (not (Bb_not_checked_p11))

                    ; #85927: <==uncertain_firing== 83189 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #85929: <==negation-removal== 64162 (pos)
                    (not (not_checked_p11))

                    ; #90920: <==negation-removal== 67554 (pos)
                    (not (Bc_not_checked_p11))

                    ; #92080: <==negation-removal== 83189 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #94763: <==negation-removal== 29528 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_b_p12_s
        :precondition (and (at_b_p12)
                           (not (leader_b)))
        :effect (and
                    ; #35511: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #36930: <==commonly_known== 73197 (pos)
                    (Bb_checked_p12)

                    ; #44057: <==commonly_known== 76057 (neg)
                    (Pa_checked_p12)

                    ; #45190: <==commonly_known== 76057 (neg)
                    (Pc_checked_p12)

                    ; #53060: <==commonly_known== 73197 (pos)
                    (Bc_checked_p12)

                    ; #73197: origin
                    (checked_p12)

                    ; #74802: <==closure== 35511 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #76420: <==commonly_known== 73197 (pos)
                    (Bd_checked_p12)

                    ; #79058: <==commonly_known== 73197 (pos)
                    (Ba_checked_p12)

                    ; #80812: <==closure== 87126 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #83828: <==commonly_known== 76057 (neg)
                    (Pd_checked_p12)

                    ; #87126: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #88682: <==commonly_known== 76057 (neg)
                    (Pb_checked_p12)

                    ; #10966: <==uncertain_firing== 87126 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #13110: <==negation-removal== 35511 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29562: <==uncertain_firing== 35511 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #33027: <==uncertain_firing== 74802 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #33350: <==negation-removal== 80812 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #44487: <==negation-removal== 53060 (pos)
                    (not (Pc_not_checked_p12))

                    ; #45067: <==negation-removal== 79058 (pos)
                    (not (Pa_not_checked_p12))

                    ; #49419: <==negation-removal== 83828 (pos)
                    (not (Bd_not_checked_p12))

                    ; #50790: <==negation-removal== 45190 (pos)
                    (not (Bc_not_checked_p12))

                    ; #74153: <==negation-removal== 87126 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #75946: <==negation-removal== 88682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #76057: <==negation-removal== 73197 (pos)
                    (not (not_checked_p12))

                    ; #77020: <==uncertain_firing== 80812 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #81954: <==negation-removal== 36930 (pos)
                    (not (Pb_not_checked_p12))

                    ; #88945: <==negation-removal== 74802 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #89342: <==negation-removal== 44057 (pos)
                    (not (Ba_not_checked_p12))

                    ; #92096: <==negation-removal== 76420 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15317: <==closure== 37691 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #16218: <==commonly_known== 48424 (pos)
                    (Ba_checked_p1)

                    ; #22994: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #33286: <==commonly_known== 63117 (neg)
                    (Pb_checked_p1)

                    ; #37691: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #39679: <==commonly_known== 48424 (pos)
                    (Bd_checked_p1)

                    ; #42102: <==closure== 22994 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #48424: origin
                    (checked_p1)

                    ; #50888: <==commonly_known== 63117 (neg)
                    (Pa_checked_p1)

                    ; #63059: <==commonly_known== 63117 (neg)
                    (Pd_checked_p1)

                    ; #76305: <==commonly_known== 48424 (pos)
                    (Bb_checked_p1)

                    ; #83874: <==commonly_known== 48424 (pos)
                    (Bc_checked_p1)

                    ; #86799: <==commonly_known== 63117 (neg)
                    (Pc_checked_p1)

                    ; #12252: <==negation-removal== 42102 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #14967: <==uncertain_firing== 15317 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #20362: <==negation-removal== 39679 (pos)
                    (not (Pd_not_checked_p1))

                    ; #21135: <==negation-removal== 37691 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24269: <==negation-removal== 83874 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24424: <==negation-removal== 86799 (pos)
                    (not (Bc_not_checked_p1))

                    ; #27590: <==uncertain_firing== 22994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #29836: <==uncertain_firing== 42102 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #31645: <==uncertain_firing== 37691 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #35137: <==negation-removal== 16218 (pos)
                    (not (Pa_not_checked_p1))

                    ; #48924: <==negation-removal== 50888 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52382: <==negation-removal== 33286 (pos)
                    (not (Bb_not_checked_p1))

                    ; #63117: <==negation-removal== 48424 (pos)
                    (not (not_checked_p1))

                    ; #72169: <==negation-removal== 63059 (pos)
                    (not (Bd_not_checked_p1))

                    ; #87612: <==negation-removal== 15317 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #88511: <==negation-removal== 22994 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #94999: <==negation-removal== 76305 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12296: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #19575: <==commonly_known== 21156 (pos)
                    (Bd_checked_p2)

                    ; #20805: <==commonly_known== 21156 (pos)
                    (Bc_checked_p2)

                    ; #21156: origin
                    (checked_p2)

                    ; #29085: <==commonly_known== 19512 (neg)
                    (Pc_checked_p2)

                    ; #33893: <==commonly_known== 19512 (neg)
                    (Pd_checked_p2)

                    ; #53359: <==commonly_known== 19512 (neg)
                    (Pb_checked_p2)

                    ; #67250: <==commonly_known== 19512 (neg)
                    (Pa_checked_p2)

                    ; #71744: <==closure== 79130 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #73866: <==closure== 12296 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #79130: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #79435: <==commonly_known== 21156 (pos)
                    (Ba_checked_p2)

                    ; #84492: <==commonly_known== 21156 (pos)
                    (Bb_checked_p2)

                    ; #19512: <==negation-removal== 21156 (pos)
                    (not (not_checked_p2))

                    ; #22386: <==uncertain_firing== 73866 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #22670: <==negation-removal== 33893 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24168: <==negation-removal== 20805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26291: <==negation-removal== 71744 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #30933: <==uncertain_firing== 71744 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #39683: <==negation-removal== 12296 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #42444: <==negation-removal== 19575 (pos)
                    (not (Pd_not_checked_p2))

                    ; #49029: <==negation-removal== 29085 (pos)
                    (not (Bc_not_checked_p2))

                    ; #55690: <==negation-removal== 53359 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58137: <==negation-removal== 84492 (pos)
                    (not (Pb_not_checked_p2))

                    ; #62738: <==uncertain_firing== 12296 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #65141: <==negation-removal== 73866 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #68969: <==negation-removal== 79435 (pos)
                    (not (Pa_not_checked_p2))

                    ; #71576: <==negation-removal== 79130 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #83764: <==negation-removal== 67250 (pos)
                    (not (Ba_not_checked_p2))

                    ; #90007: <==uncertain_firing== 79130 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12115: <==closure== 62581 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #15591: <==commonly_known== 62576 (pos)
                    (Bb_checked_p3)

                    ; #20344: <==commonly_known== 62576 (pos)
                    (Ba_checked_p3)

                    ; #20757: <==closure== 84320 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #27823: <==commonly_known== 62576 (pos)
                    (Bd_checked_p3)

                    ; #27987: <==commonly_known== 22701 (neg)
                    (Pa_checked_p3)

                    ; #28768: <==commonly_known== 22701 (neg)
                    (Pd_checked_p3)

                    ; #40153: <==commonly_known== 22701 (neg)
                    (Pb_checked_p3)

                    ; #44454: <==commonly_known== 22701 (neg)
                    (Pc_checked_p3)

                    ; #46017: <==commonly_known== 62576 (pos)
                    (Bc_checked_p3)

                    ; #62576: origin
                    (checked_p3)

                    ; #62581: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #84320: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #14550: <==negation-removal== 20757 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #22701: <==negation-removal== 62576 (pos)
                    (not (not_checked_p3))

                    ; #40698: <==negation-removal== 27987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #43642: <==negation-removal== 40153 (pos)
                    (not (Bb_not_checked_p3))

                    ; #47605: <==negation-removal== 84320 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #51906: <==negation-removal== 44454 (pos)
                    (not (Bc_not_checked_p3))

                    ; #53944: <==uncertain_firing== 62581 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #54752: <==uncertain_firing== 12115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59807: <==negation-removal== 27823 (pos)
                    (not (Pd_not_checked_p3))

                    ; #60436: <==negation-removal== 20344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #62637: <==negation-removal== 12115 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #76759: <==uncertain_firing== 20757 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #78586: <==negation-removal== 46017 (pos)
                    (not (Pc_not_checked_p3))

                    ; #81873: <==uncertain_firing== 84320 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #83603: <==negation-removal== 28768 (pos)
                    (not (Bd_not_checked_p3))

                    ; #85715: <==negation-removal== 15591 (pos)
                    (not (Pb_not_checked_p3))

                    ; #86315: <==negation-removal== 62581 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #10917: <==commonly_known== 77990 (neg)
                    (Pd_checked_p4)

                    ; #14129: <==closure== 49502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #35346: <==commonly_known== 70399 (pos)
                    (Bd_checked_p4)

                    ; #35913: <==commonly_known== 77990 (neg)
                    (Pa_checked_p4)

                    ; #38053: <==commonly_known== 77990 (neg)
                    (Pc_checked_p4)

                    ; #44100: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #49502: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #58824: <==commonly_known== 70399 (pos)
                    (Bb_checked_p4)

                    ; #67734: <==commonly_known== 77990 (neg)
                    (Pb_checked_p4)

                    ; #70084: <==commonly_known== 70399 (pos)
                    (Ba_checked_p4)

                    ; #70399: origin
                    (checked_p4)

                    ; #75596: <==closure== 44100 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #86190: <==commonly_known== 70399 (pos)
                    (Bc_checked_p4)

                    ; #22898: <==negation-removal== 70084 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33598: <==negation-removal== 86190 (pos)
                    (not (Pc_not_checked_p4))

                    ; #35808: <==uncertain_firing== 14129 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #41740: <==negation-removal== 49502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #45263: <==negation-removal== 67734 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45642: <==negation-removal== 35913 (pos)
                    (not (Ba_not_checked_p4))

                    ; #51679: <==negation-removal== 14129 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #53597: <==uncertain_firing== 75596 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #59205: <==negation-removal== 38053 (pos)
                    (not (Bc_not_checked_p4))

                    ; #64865: <==negation-removal== 75596 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #66020: <==negation-removal== 35346 (pos)
                    (not (Pd_not_checked_p4))

                    ; #66239: <==uncertain_firing== 44100 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #77990: <==negation-removal== 70399 (pos)
                    (not (not_checked_p4))

                    ; #78247: <==negation-removal== 44100 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #80472: <==uncertain_firing== 49502 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81678: <==negation-removal== 10917 (pos)
                    (not (Bd_not_checked_p4))

                    ; #87167: <==negation-removal== 58824 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #16968: <==closure== 55547 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #23971: <==commonly_known== 38461 (pos)
                    (Bc_checked_p5)

                    ; #38461: origin
                    (checked_p5)

                    ; #45621: <==commonly_known== 18481 (neg)
                    (Pa_checked_p5)

                    ; #47665: <==commonly_known== 18481 (neg)
                    (Pc_checked_p5)

                    ; #49355: <==closure== 74793 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #54201: <==commonly_known== 38461 (pos)
                    (Bd_checked_p5)

                    ; #55547: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #56413: <==commonly_known== 38461 (pos)
                    (Ba_checked_p5)

                    ; #74793: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #81205: <==commonly_known== 38461 (pos)
                    (Bb_checked_p5)

                    ; #87333: <==commonly_known== 18481 (neg)
                    (Pb_checked_p5)

                    ; #97865: <==commonly_known== 18481 (neg)
                    (Pd_checked_p5)

                    ; #14672: <==uncertain_firing== 55547 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #14820: <==negation-removal== 54201 (pos)
                    (not (Pd_not_checked_p5))

                    ; #17212: <==uncertain_firing== 49355 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #18481: <==negation-removal== 38461 (pos)
                    (not (not_checked_p5))

                    ; #21480: <==negation-removal== 55547 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #28802: <==negation-removal== 49355 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #29447: <==negation-removal== 23971 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31306: <==negation-removal== 81205 (pos)
                    (not (Pb_not_checked_p5))

                    ; #41690: <==negation-removal== 56413 (pos)
                    (not (Pa_not_checked_p5))

                    ; #42742: <==negation-removal== 47665 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51770: <==negation-removal== 16968 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #51844: <==negation-removal== 87333 (pos)
                    (not (Bb_not_checked_p5))

                    ; #60233: <==uncertain_firing== 74793 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #62913: <==negation-removal== 45621 (pos)
                    (not (Ba_not_checked_p5))

                    ; #72888: <==negation-removal== 97865 (pos)
                    (not (Bd_not_checked_p5))

                    ; #76808: <==negation-removal== 74793 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #79077: <==uncertain_firing== 16968 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #12002: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #19453: <==commonly_known== 66273 (neg)
                    (Pc_checked_p6)

                    ; #28341: <==commonly_known== 66273 (neg)
                    (Pd_checked_p6)

                    ; #40159: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #49379: <==commonly_known== 66273 (neg)
                    (Pa_checked_p6)

                    ; #51297: <==commonly_known== 87036 (pos)
                    (Bb_checked_p6)

                    ; #56193: <==closure== 40159 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #57715: <==commonly_known== 87036 (pos)
                    (Ba_checked_p6)

                    ; #71687: <==commonly_known== 66273 (neg)
                    (Pb_checked_p6)

                    ; #73979: <==closure== 12002 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #82786: <==commonly_known== 87036 (pos)
                    (Bc_checked_p6)

                    ; #87036: origin
                    (checked_p6)

                    ; #88075: <==commonly_known== 87036 (pos)
                    (Bd_checked_p6)

                    ; #14660: <==uncertain_firing== 40159 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #14709: <==uncertain_firing== 73979 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #16945: <==uncertain_firing== 56193 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #28240: <==negation-removal== 28341 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37463: <==negation-removal== 82786 (pos)
                    (not (Pc_not_checked_p6))

                    ; #41865: <==negation-removal== 71687 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52616: <==negation-removal== 88075 (pos)
                    (not (Pd_not_checked_p6))

                    ; #53077: <==negation-removal== 40159 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #54056: <==negation-removal== 57715 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59736: <==uncertain_firing== 12002 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #60841: <==negation-removal== 12002 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #66273: <==negation-removal== 87036 (pos)
                    (not (not_checked_p6))

                    ; #69380: <==negation-removal== 56193 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #78347: <==negation-removal== 49379 (pos)
                    (not (Ba_not_checked_p6))

                    ; #86670: <==negation-removal== 51297 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87673: <==negation-removal== 19453 (pos)
                    (not (Bc_not_checked_p6))

                    ; #88398: <==negation-removal== 73979 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #11880: <==commonly_known== 41707 (neg)
                    (Pb_checked_p7)

                    ; #12298: <==closure== 80434 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #20185: <==commonly_known== 41707 (neg)
                    (Pd_checked_p7)

                    ; #27835: <==closure== 69613 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #45031: <==commonly_known== 71265 (pos)
                    (Bb_checked_p7)

                    ; #59867: <==commonly_known== 71265 (pos)
                    (Ba_checked_p7)

                    ; #69613: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #71265: origin
                    (checked_p7)

                    ; #71687: <==commonly_known== 41707 (neg)
                    (Pa_checked_p7)

                    ; #80434: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #82637: <==commonly_known== 71265 (pos)
                    (Bd_checked_p7)

                    ; #85496: <==commonly_known== 71265 (pos)
                    (Bc_checked_p7)

                    ; #89956: <==commonly_known== 41707 (neg)
                    (Pc_checked_p7)

                    ; #14952: <==negation-removal== 89956 (pos)
                    (not (Bc_not_checked_p7))

                    ; #20039: <==uncertain_firing== 27835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #20159: <==uncertain_firing== 12298 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #25145: <==negation-removal== 20185 (pos)
                    (not (Bd_not_checked_p7))

                    ; #33141: <==negation-removal== 69613 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #34335: <==negation-removal== 11880 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41052: <==negation-removal== 45031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41707: <==negation-removal== 71265 (pos)
                    (not (not_checked_p7))

                    ; #46966: <==negation-removal== 59867 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57220: <==uncertain_firing== 69613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61950: <==negation-removal== 85496 (pos)
                    (not (Pc_not_checked_p7))

                    ; #66520: <==negation-removal== 82637 (pos)
                    (not (Pd_not_checked_p7))

                    ; #66969: <==uncertain_firing== 80434 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #74059: <==negation-removal== 12298 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #77521: <==negation-removal== 71687 (pos)
                    (not (Ba_not_checked_p7))

                    ; #77748: <==negation-removal== 27835 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #89616: <==negation-removal== 80434 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #16423: <==closure== 65215 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #27316: <==commonly_known== 35611 (neg)
                    (Pb_checked_p8)

                    ; #33881: <==commonly_known== 70184 (pos)
                    (Bd_checked_p8)

                    ; #48056: <==commonly_known== 70184 (pos)
                    (Bc_checked_p8)

                    ; #57907: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #61426: <==commonly_known== 35611 (neg)
                    (Pc_checked_p8)

                    ; #65215: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #67659: <==commonly_known== 70184 (pos)
                    (Bb_checked_p8)

                    ; #70184: origin
                    (checked_p8)

                    ; #71657: <==commonly_known== 70184 (pos)
                    (Ba_checked_p8)

                    ; #76666: <==commonly_known== 35611 (neg)
                    (Pd_checked_p8)

                    ; #89364: <==closure== 57907 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #98771: <==commonly_known== 35611 (neg)
                    (Pa_checked_p8)

                    ; #11656: <==negation-removal== 76666 (pos)
                    (not (Bd_not_checked_p8))

                    ; #16163: <==negation-removal== 48056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #28113: <==uncertain_firing== 57907 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #34820: <==negation-removal== 65215 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #35611: <==negation-removal== 70184 (pos)
                    (not (not_checked_p8))

                    ; #40300: <==negation-removal== 61426 (pos)
                    (not (Bc_not_checked_p8))

                    ; #40810: <==uncertain_firing== 16423 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #47686: <==uncertain_firing== 89364 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56708: <==negation-removal== 16423 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #65761: <==negation-removal== 33881 (pos)
                    (not (Pd_not_checked_p8))

                    ; #65979: <==negation-removal== 67659 (pos)
                    (not (Pb_not_checked_p8))

                    ; #80729: <==negation-removal== 27316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #81983: <==uncertain_firing== 65215 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #83169: <==negation-removal== 57907 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #83420: <==negation-removal== 89364 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #87335: <==negation-removal== 71657 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88233: <==negation-removal== 98771 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #27925: <==commonly_known== 68397 (pos)
                    (Bc_checked_p9)

                    ; #40925: <==commonly_known== 12104 (neg)
                    (Pa_checked_p9)

                    ; #47536: <==commonly_known== 68397 (pos)
                    (Ba_checked_p9)

                    ; #62234: <==commonly_known== 12104 (neg)
                    (Pd_checked_p9)

                    ; #68397: origin
                    (checked_p9)

                    ; #71028: <==commonly_known== 12104 (neg)
                    (Pb_checked_p9)

                    ; #72568: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #73160: <==closure== 72568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #75057: <==commonly_known== 68397 (pos)
                    (Bd_checked_p9)

                    ; #78391: <==commonly_known== 12104 (neg)
                    (Pc_checked_p9)

                    ; #80169: <==commonly_known== 68397 (pos)
                    (Bb_checked_p9)

                    ; #87924: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #88546: <==closure== 87924 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #12104: <==negation-removal== 68397 (pos)
                    (not (not_checked_p9))

                    ; #27617: <==uncertain_firing== 72568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #29002: <==negation-removal== 88546 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #29396: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p9))

                    ; #29554: <==uncertain_firing== 87924 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40176: <==uncertain_firing== 88546 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #45802: <==negation-removal== 62234 (pos)
                    (not (Bd_not_checked_p9))

                    ; #48116: <==negation-removal== 72568 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #48393: <==negation-removal== 71028 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52639: <==negation-removal== 40925 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56588: <==negation-removal== 80169 (pos)
                    (not (Pb_not_checked_p9))

                    ; #57964: <==uncertain_firing== 73160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64382: <==negation-removal== 73160 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #70777: <==negation-removal== 47536 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77854: <==negation-removal== 27925 (pos)
                    (not (Pc_not_checked_p9))

                    ; #87968: <==negation-removal== 87924 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #89231: <==negation-removal== 78391 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observe_c_p10_s
        :precondition (and (at_c_p10)
                           (not (leader_c)))
        :effect (and
                    ; #12497: <==closure== 74437 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #24614: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #38934: <==commonly_known== 71874 (pos)
                    (Bc_checked_p10)

                    ; #42004: <==commonly_known== 58891 (neg)
                    (Pd_checked_p10)

                    ; #54073: <==commonly_known== 71874 (pos)
                    (Bd_checked_p10)

                    ; #62923: <==commonly_known== 58891 (neg)
                    (Pa_checked_p10)

                    ; #66916: <==closure== 24614 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #69327: <==commonly_known== 71874 (pos)
                    (Ba_checked_p10)

                    ; #71874: origin
                    (checked_p10)

                    ; #74437: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #86681: <==commonly_known== 58891 (neg)
                    (Pc_checked_p10)

                    ; #87193: <==commonly_known== 58891 (neg)
                    (Pb_checked_p10)

                    ; #89326: <==commonly_known== 71874 (pos)
                    (Bb_checked_p10)

                    ; #12463: <==uncertain_firing== 74437 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #18690: <==negation-removal== 87193 (pos)
                    (not (Bb_not_checked_p10))

                    ; #19555: <==negation-removal== 66916 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #25226: <==uncertain_firing== 24614 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #30723: <==negation-removal== 89326 (pos)
                    (not (Pb_not_checked_p10))

                    ; #31518: <==uncertain_firing== 12497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #39069: <==negation-removal== 86681 (pos)
                    (not (Bc_not_checked_p10))

                    ; #48072: <==negation-removal== 12497 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #51000: <==negation-removal== 42004 (pos)
                    (not (Bd_not_checked_p10))

                    ; #54736: <==negation-removal== 54073 (pos)
                    (not (Pd_not_checked_p10))

                    ; #58891: <==negation-removal== 71874 (pos)
                    (not (not_checked_p10))

                    ; #73013: <==negation-removal== 69327 (pos)
                    (not (Pa_not_checked_p10))

                    ; #73917: <==negation-removal== 74437 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #83051: <==negation-removal== 24614 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #87419: <==uncertain_firing== 66916 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #89054: <==negation-removal== 62923 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89854: <==negation-removal== 38934 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_c_p11_s
        :precondition (and (at_c_p11)
                           (not (leader_c)))
        :effect (and
                    ; #12284: <==commonly_known== 64162 (pos)
                    (Bd_checked_p11)

                    ; #20907: <==commonly_known== 85929 (neg)
                    (Pa_checked_p11)

                    ; #29528: <==commonly_known== 64162 (pos)
                    (Bb_checked_p11)

                    ; #32937: <==commonly_known== 64162 (pos)
                    (Bc_checked_p11)

                    ; #44040: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #45563: <==closure== 44040 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #47012: <==commonly_known== 85929 (neg)
                    (Pd_checked_p11)

                    ; #53946: <==closure== 62604 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #62604: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #64162: origin
                    (checked_p11)

                    ; #67554: <==commonly_known== 85929 (neg)
                    (Pc_checked_p11)

                    ; #68506: <==commonly_known== 64162 (pos)
                    (Ba_checked_p11)

                    ; #74032: <==commonly_known== 85929 (neg)
                    (Pb_checked_p11)

                    ; #13493: <==negation-removal== 68506 (pos)
                    (not (Pa_not_checked_p11))

                    ; #16257: <==negation-removal== 20907 (pos)
                    (not (Ba_not_checked_p11))

                    ; #18989: <==negation-removal== 44040 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #22613: <==uncertain_firing== 45563 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #26563: <==negation-removal== 47012 (pos)
                    (not (Bd_not_checked_p11))

                    ; #28689: <==negation-removal== 53946 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #33998: <==negation-removal== 12284 (pos)
                    (not (Pd_not_checked_p11))

                    ; #39851: <==uncertain_firing== 62604 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #40187: <==uncertain_firing== 53946 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #42725: <==uncertain_firing== 44040 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #52110: <==negation-removal== 62604 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #56913: <==negation-removal== 32937 (pos)
                    (not (Pc_not_checked_p11))

                    ; #79456: <==negation-removal== 45563 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #85591: <==negation-removal== 74032 (pos)
                    (not (Bb_not_checked_p11))

                    ; #85929: <==negation-removal== 64162 (pos)
                    (not (not_checked_p11))

                    ; #90920: <==negation-removal== 67554 (pos)
                    (not (Bc_not_checked_p11))

                    ; #94763: <==negation-removal== 29528 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_c_p12_s
        :precondition (and (at_c_p12)
                           (not (leader_c)))
        :effect (and
                    ; #26516: <==closure== 54214 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #36930: <==commonly_known== 73197 (pos)
                    (Bb_checked_p12)

                    ; #44057: <==commonly_known== 76057 (neg)
                    (Pa_checked_p12)

                    ; #45190: <==commonly_known== 76057 (neg)
                    (Pc_checked_p12)

                    ; #48790: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #53060: <==commonly_known== 73197 (pos)
                    (Bc_checked_p12)

                    ; #53330: <==closure== 48790 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #54214: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #73197: origin
                    (checked_p12)

                    ; #76420: <==commonly_known== 73197 (pos)
                    (Bd_checked_p12)

                    ; #79058: <==commonly_known== 73197 (pos)
                    (Ba_checked_p12)

                    ; #83828: <==commonly_known== 76057 (neg)
                    (Pd_checked_p12)

                    ; #88682: <==commonly_known== 76057 (neg)
                    (Pb_checked_p12)

                    ; #22523: <==uncertain_firing== 54214 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #25702: <==uncertain_firing== 26516 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #44487: <==negation-removal== 53060 (pos)
                    (not (Pc_not_checked_p12))

                    ; #45067: <==negation-removal== 79058 (pos)
                    (not (Pa_not_checked_p12))

                    ; #49419: <==negation-removal== 83828 (pos)
                    (not (Bd_not_checked_p12))

                    ; #50790: <==negation-removal== 45190 (pos)
                    (not (Bc_not_checked_p12))

                    ; #59181: <==negation-removal== 48790 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #60690: <==negation-removal== 53330 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68598: <==uncertain_firing== 53330 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #75047: <==uncertain_firing== 48790 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #75946: <==negation-removal== 88682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #76057: <==negation-removal== 73197 (pos)
                    (not (not_checked_p12))

                    ; #80800: <==negation-removal== 26516 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #81954: <==negation-removal== 36930 (pos)
                    (not (Pb_not_checked_p12))

                    ; #87912: <==negation-removal== 54214 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #89342: <==negation-removal== 44057 (pos)
                    (not (Ba_not_checked_p12))

                    ; #92096: <==negation-removal== 76420 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #15998: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #16218: <==commonly_known== 48424 (pos)
                    (Ba_checked_p1)

                    ; #20106: <==closure== 15998 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #33286: <==commonly_known== 63117 (neg)
                    (Pb_checked_p1)

                    ; #33727: <==closure== 39947 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #39679: <==commonly_known== 48424 (pos)
                    (Bd_checked_p1)

                    ; #39947: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #48424: origin
                    (checked_p1)

                    ; #50888: <==commonly_known== 63117 (neg)
                    (Pa_checked_p1)

                    ; #63059: <==commonly_known== 63117 (neg)
                    (Pd_checked_p1)

                    ; #76305: <==commonly_known== 48424 (pos)
                    (Bb_checked_p1)

                    ; #83874: <==commonly_known== 48424 (pos)
                    (Bc_checked_p1)

                    ; #86799: <==commonly_known== 63117 (neg)
                    (Pc_checked_p1)

                    ; #19480: <==uncertain_firing== 15998 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20362: <==negation-removal== 39679 (pos)
                    (not (Pd_not_checked_p1))

                    ; #24269: <==negation-removal== 83874 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24424: <==negation-removal== 86799 (pos)
                    (not (Bc_not_checked_p1))

                    ; #35137: <==negation-removal== 16218 (pos)
                    (not (Pa_not_checked_p1))

                    ; #37810: <==uncertain_firing== 33727 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #43423: <==negation-removal== 20106 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #48924: <==negation-removal== 50888 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52382: <==negation-removal== 33286 (pos)
                    (not (Bb_not_checked_p1))

                    ; #55416: <==uncertain_firing== 20106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #58910: <==uncertain_firing== 39947 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #60538: <==negation-removal== 33727 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #63117: <==negation-removal== 48424 (pos)
                    (not (not_checked_p1))

                    ; #72169: <==negation-removal== 63059 (pos)
                    (not (Bd_not_checked_p1))

                    ; #77908: <==negation-removal== 39947 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80247: <==negation-removal== 15998 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #94999: <==negation-removal== 76305 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #18076: <==closure== 41008 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #19575: <==commonly_known== 21156 (pos)
                    (Bd_checked_p2)

                    ; #20805: <==commonly_known== 21156 (pos)
                    (Bc_checked_p2)

                    ; #21156: origin
                    (checked_p2)

                    ; #29085: <==commonly_known== 19512 (neg)
                    (Pc_checked_p2)

                    ; #33893: <==commonly_known== 19512 (neg)
                    (Pd_checked_p2)

                    ; #41008: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #41120: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #53359: <==commonly_known== 19512 (neg)
                    (Pb_checked_p2)

                    ; #67250: <==commonly_known== 19512 (neg)
                    (Pa_checked_p2)

                    ; #73609: <==closure== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #79435: <==commonly_known== 21156 (pos)
                    (Ba_checked_p2)

                    ; #84492: <==commonly_known== 21156 (pos)
                    (Bb_checked_p2)

                    ; #19512: <==negation-removal== 21156 (pos)
                    (not (not_checked_p2))

                    ; #22670: <==negation-removal== 33893 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24168: <==negation-removal== 20805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #28656: <==uncertain_firing== 73609 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #29845: <==negation-removal== 73609 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #31820: <==negation-removal== 41008 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42444: <==negation-removal== 19575 (pos)
                    (not (Pd_not_checked_p2))

                    ; #49029: <==negation-removal== 29085 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49179: <==negation-removal== 18076 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #49374: <==uncertain_firing== 18076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #55690: <==negation-removal== 53359 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58137: <==negation-removal== 84492 (pos)
                    (not (Pb_not_checked_p2))

                    ; #68969: <==negation-removal== 79435 (pos)
                    (not (Pa_not_checked_p2))

                    ; #75385: <==negation-removal== 41120 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #76974: <==uncertain_firing== 41008 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #83764: <==negation-removal== 67250 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87773: <==uncertain_firing== 41120 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #15591: <==commonly_known== 62576 (pos)
                    (Bb_checked_p3)

                    ; #20344: <==commonly_known== 62576 (pos)
                    (Ba_checked_p3)

                    ; #27823: <==commonly_known== 62576 (pos)
                    (Bd_checked_p3)

                    ; #27987: <==commonly_known== 22701 (neg)
                    (Pa_checked_p3)

                    ; #28768: <==commonly_known== 22701 (neg)
                    (Pd_checked_p3)

                    ; #34933: <==closure== 82288 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #35670: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #40153: <==commonly_known== 22701 (neg)
                    (Pb_checked_p3)

                    ; #44454: <==commonly_known== 22701 (neg)
                    (Pc_checked_p3)

                    ; #46017: <==commonly_known== 62576 (pos)
                    (Bc_checked_p3)

                    ; #46178: <==closure== 35670 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #62576: origin
                    (checked_p3)

                    ; #82288: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #22701: <==negation-removal== 62576 (pos)
                    (not (not_checked_p3))

                    ; #37472: <==uncertain_firing== 34933 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #40698: <==negation-removal== 27987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #43642: <==negation-removal== 40153 (pos)
                    (not (Bb_not_checked_p3))

                    ; #44663: <==negation-removal== 35670 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #46172: <==uncertain_firing== 82288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #51906: <==negation-removal== 44454 (pos)
                    (not (Bc_not_checked_p3))

                    ; #59807: <==negation-removal== 27823 (pos)
                    (not (Pd_not_checked_p3))

                    ; #60436: <==negation-removal== 20344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #63761: <==negation-removal== 34933 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #66227: <==uncertain_firing== 46178 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #72644: <==negation-removal== 82288 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #78586: <==negation-removal== 46017 (pos)
                    (not (Pc_not_checked_p3))

                    ; #83365: <==negation-removal== 46178 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #83603: <==negation-removal== 28768 (pos)
                    (not (Bd_not_checked_p3))

                    ; #85062: <==uncertain_firing== 35670 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #85715: <==negation-removal== 15591 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10917: <==commonly_known== 77990 (neg)
                    (Pd_checked_p4)

                    ; #35346: <==commonly_known== 70399 (pos)
                    (Bd_checked_p4)

                    ; #35913: <==commonly_known== 77990 (neg)
                    (Pa_checked_p4)

                    ; #38053: <==commonly_known== 77990 (neg)
                    (Pc_checked_p4)

                    ; #40417: <==closure== 76825 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #58824: <==commonly_known== 70399 (pos)
                    (Bb_checked_p4)

                    ; #67734: <==commonly_known== 77990 (neg)
                    (Pb_checked_p4)

                    ; #70084: <==commonly_known== 70399 (pos)
                    (Ba_checked_p4)

                    ; #70399: origin
                    (checked_p4)

                    ; #76825: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #81229: <==closure== 86443 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #86190: <==commonly_known== 70399 (pos)
                    (Bc_checked_p4)

                    ; #86443: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #22898: <==negation-removal== 70084 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33598: <==negation-removal== 86190 (pos)
                    (not (Pc_not_checked_p4))

                    ; #45263: <==negation-removal== 67734 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45642: <==negation-removal== 35913 (pos)
                    (not (Ba_not_checked_p4))

                    ; #48496: <==uncertain_firing== 76825 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #48972: <==negation-removal== 76825 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #58086: <==uncertain_firing== 81229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #59205: <==negation-removal== 38053 (pos)
                    (not (Bc_not_checked_p4))

                    ; #66020: <==negation-removal== 35346 (pos)
                    (not (Pd_not_checked_p4))

                    ; #68013: <==uncertain_firing== 40417 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #68164: <==uncertain_firing== 86443 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #72765: <==negation-removal== 40417 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #77990: <==negation-removal== 70399 (pos)
                    (not (not_checked_p4))

                    ; #81191: <==negation-removal== 81229 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #81678: <==negation-removal== 10917 (pos)
                    (not (Bd_not_checked_p4))

                    ; #84781: <==negation-removal== 86443 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #87167: <==negation-removal== 58824 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23971: <==commonly_known== 38461 (pos)
                    (Bc_checked_p5)

                    ; #33199: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #38461: origin
                    (checked_p5)

                    ; #45621: <==commonly_known== 18481 (neg)
                    (Pa_checked_p5)

                    ; #47665: <==commonly_known== 18481 (neg)
                    (Pc_checked_p5)

                    ; #51405: <==closure== 77905 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #52703: <==closure== 33199 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #54201: <==commonly_known== 38461 (pos)
                    (Bd_checked_p5)

                    ; #56413: <==commonly_known== 38461 (pos)
                    (Ba_checked_p5)

                    ; #77905: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #81205: <==commonly_known== 38461 (pos)
                    (Bb_checked_p5)

                    ; #87333: <==commonly_known== 18481 (neg)
                    (Pb_checked_p5)

                    ; #97865: <==commonly_known== 18481 (neg)
                    (Pd_checked_p5)

                    ; #12695: <==uncertain_firing== 51405 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #14820: <==negation-removal== 54201 (pos)
                    (not (Pd_not_checked_p5))

                    ; #17936: <==uncertain_firing== 52703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #18481: <==negation-removal== 38461 (pos)
                    (not (not_checked_p5))

                    ; #24973: <==uncertain_firing== 33199 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #29447: <==negation-removal== 23971 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31306: <==negation-removal== 81205 (pos)
                    (not (Pb_not_checked_p5))

                    ; #41690: <==negation-removal== 56413 (pos)
                    (not (Pa_not_checked_p5))

                    ; #42742: <==negation-removal== 47665 (pos)
                    (not (Bc_not_checked_p5))

                    ; #44468: <==negation-removal== 77905 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #51844: <==negation-removal== 87333 (pos)
                    (not (Bb_not_checked_p5))

                    ; #59034: <==negation-removal== 52703 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62913: <==negation-removal== 45621 (pos)
                    (not (Ba_not_checked_p5))

                    ; #63463: <==uncertain_firing== 77905 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #69980: <==negation-removal== 51405 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #71788: <==negation-removal== 33199 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #72888: <==negation-removal== 97865 (pos)
                    (not (Bd_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #19453: <==commonly_known== 66273 (neg)
                    (Pc_checked_p6)

                    ; #22234: <==closure== 51333 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #28341: <==commonly_known== 66273 (neg)
                    (Pd_checked_p6)

                    ; #45293: <==closure== 50330 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #49379: <==commonly_known== 66273 (neg)
                    (Pa_checked_p6)

                    ; #50330: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #51297: <==commonly_known== 87036 (pos)
                    (Bb_checked_p6)

                    ; #51333: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #57715: <==commonly_known== 87036 (pos)
                    (Ba_checked_p6)

                    ; #71687: <==commonly_known== 66273 (neg)
                    (Pb_checked_p6)

                    ; #82786: <==commonly_known== 87036 (pos)
                    (Bc_checked_p6)

                    ; #87036: origin
                    (checked_p6)

                    ; #88075: <==commonly_known== 87036 (pos)
                    (Bd_checked_p6)

                    ; #11978: <==uncertain_firing== 50330 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #28240: <==negation-removal== 28341 (pos)
                    (not (Bd_not_checked_p6))

                    ; #31804: <==negation-removal== 50330 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #37463: <==negation-removal== 82786 (pos)
                    (not (Pc_not_checked_p6))

                    ; #37870: <==uncertain_firing== 51333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #41865: <==negation-removal== 71687 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52616: <==negation-removal== 88075 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54056: <==negation-removal== 57715 (pos)
                    (not (Pa_not_checked_p6))

                    ; #56482: <==negation-removal== 22234 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #66273: <==negation-removal== 87036 (pos)
                    (not (not_checked_p6))

                    ; #78347: <==negation-removal== 49379 (pos)
                    (not (Ba_not_checked_p6))

                    ; #84613: <==uncertain_firing== 22234 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #86670: <==negation-removal== 51297 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87018: <==negation-removal== 51333 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87673: <==negation-removal== 19453 (pos)
                    (not (Bc_not_checked_p6))

                    ; #88273: <==negation-removal== 45293 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #90782: <==uncertain_firing== 45293 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #11880: <==commonly_known== 41707 (neg)
                    (Pb_checked_p7)

                    ; #20185: <==commonly_known== 41707 (neg)
                    (Pd_checked_p7)

                    ; #45031: <==commonly_known== 71265 (pos)
                    (Bb_checked_p7)

                    ; #46832: <==closure== 61097 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #59867: <==commonly_known== 71265 (pos)
                    (Ba_checked_p7)

                    ; #61097: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #71265: origin
                    (checked_p7)

                    ; #71687: <==commonly_known== 41707 (neg)
                    (Pa_checked_p7)

                    ; #76687: <==closure== 80989 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #80989: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #82637: <==commonly_known== 71265 (pos)
                    (Bd_checked_p7)

                    ; #85496: <==commonly_known== 71265 (pos)
                    (Bc_checked_p7)

                    ; #89956: <==commonly_known== 41707 (neg)
                    (Pc_checked_p7)

                    ; #11487: <==uncertain_firing== 61097 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #14952: <==negation-removal== 89956 (pos)
                    (not (Bc_not_checked_p7))

                    ; #21304: <==uncertain_firing== 80989 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #22437: <==negation-removal== 80989 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #22780: <==uncertain_firing== 76687 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #24022: <==negation-removal== 46832 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #25145: <==negation-removal== 20185 (pos)
                    (not (Bd_not_checked_p7))

                    ; #34335: <==negation-removal== 11880 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41052: <==negation-removal== 45031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41707: <==negation-removal== 71265 (pos)
                    (not (not_checked_p7))

                    ; #44264: <==negation-removal== 76687 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #46966: <==negation-removal== 59867 (pos)
                    (not (Pa_not_checked_p7))

                    ; #55527: <==negation-removal== 61097 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #61950: <==negation-removal== 85496 (pos)
                    (not (Pc_not_checked_p7))

                    ; #66520: <==negation-removal== 82637 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77521: <==negation-removal== 71687 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79229: <==uncertain_firing== 46832 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #20546: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #27316: <==commonly_known== 35611 (neg)
                    (Pb_checked_p8)

                    ; #33881: <==commonly_known== 70184 (pos)
                    (Bd_checked_p8)

                    ; #40255: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #48056: <==commonly_known== 70184 (pos)
                    (Bc_checked_p8)

                    ; #54484: <==closure== 40255 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #59150: <==closure== 20546 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #61426: <==commonly_known== 35611 (neg)
                    (Pc_checked_p8)

                    ; #67659: <==commonly_known== 70184 (pos)
                    (Bb_checked_p8)

                    ; #70184: origin
                    (checked_p8)

                    ; #71657: <==commonly_known== 70184 (pos)
                    (Ba_checked_p8)

                    ; #76666: <==commonly_known== 35611 (neg)
                    (Pd_checked_p8)

                    ; #98771: <==commonly_known== 35611 (neg)
                    (Pa_checked_p8)

                    ; #10867: <==negation-removal== 59150 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #11656: <==negation-removal== 76666 (pos)
                    (not (Bd_not_checked_p8))

                    ; #16163: <==negation-removal== 48056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35611: <==negation-removal== 70184 (pos)
                    (not (not_checked_p8))

                    ; #40300: <==negation-removal== 61426 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49024: <==negation-removal== 54484 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50137: <==uncertain_firing== 54484 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #65384: <==negation-removal== 20546 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #65761: <==negation-removal== 33881 (pos)
                    (not (Pd_not_checked_p8))

                    ; #65979: <==negation-removal== 67659 (pos)
                    (not (Pb_not_checked_p8))

                    ; #66109: <==negation-removal== 40255 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71066: <==uncertain_firing== 40255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71705: <==uncertain_firing== 20546 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72805: <==uncertain_firing== 59150 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #80729: <==negation-removal== 27316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87335: <==negation-removal== 71657 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88233: <==negation-removal== 98771 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13742: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #27925: <==commonly_known== 68397 (pos)
                    (Bc_checked_p9)

                    ; #32310: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #40925: <==commonly_known== 12104 (neg)
                    (Pa_checked_p9)

                    ; #46158: <==closure== 32310 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #47536: <==commonly_known== 68397 (pos)
                    (Ba_checked_p9)

                    ; #57585: <==closure== 13742 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #62234: <==commonly_known== 12104 (neg)
                    (Pd_checked_p9)

                    ; #68397: origin
                    (checked_p9)

                    ; #71028: <==commonly_known== 12104 (neg)
                    (Pb_checked_p9)

                    ; #75057: <==commonly_known== 68397 (pos)
                    (Bd_checked_p9)

                    ; #78391: <==commonly_known== 12104 (neg)
                    (Pc_checked_p9)

                    ; #80169: <==commonly_known== 68397 (pos)
                    (Bb_checked_p9)

                    ; #12104: <==negation-removal== 68397 (pos)
                    (not (not_checked_p9))

                    ; #13914: <==negation-removal== 13742 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #17534: <==negation-removal== 46158 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #26091: <==uncertain_firing== 32310 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29396: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p9))

                    ; #45802: <==negation-removal== 62234 (pos)
                    (not (Bd_not_checked_p9))

                    ; #48393: <==negation-removal== 71028 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52639: <==negation-removal== 40925 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56134: <==uncertain_firing== 13742 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #56588: <==negation-removal== 80169 (pos)
                    (not (Pb_not_checked_p9))

                    ; #57737: <==uncertain_firing== 57585 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #58163: <==negation-removal== 57585 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #70777: <==negation-removal== 47536 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77837: <==uncertain_firing== 46158 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #77854: <==negation-removal== 27925 (pos)
                    (not (Pc_not_checked_p9))

                    ; #78710: <==negation-removal== 32310 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #89231: <==negation-removal== 78391 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observe_d_p10_s
        :precondition (and (at_d_p10)
                           (not (leader_d)))
        :effect (and
                    ; #34444: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bd_survivorat_s_p10))

                    ; #38934: <==commonly_known== 71874 (pos)
                    (Bc_checked_p10)

                    ; #42004: <==commonly_known== 58891 (neg)
                    (Pd_checked_p10)

                    ; #54073: <==commonly_known== 71874 (pos)
                    (Bd_checked_p10)

                    ; #62923: <==commonly_known== 58891 (neg)
                    (Pa_checked_p10)

                    ; #64801: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bd_not_survivorat_s_p10))

                    ; #69327: <==commonly_known== 71874 (pos)
                    (Ba_checked_p10)

                    ; #71874: origin
                    (checked_p10)

                    ; #74794: <==closure== 34444 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pd_survivorat_s_p10))

                    ; #81262: <==closure== 64801 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pd_not_survivorat_s_p10))

                    ; #86681: <==commonly_known== 58891 (neg)
                    (Pc_checked_p10)

                    ; #87193: <==commonly_known== 58891 (neg)
                    (Pb_checked_p10)

                    ; #89326: <==commonly_known== 71874 (pos)
                    (Bb_checked_p10)

                    ; #16670: <==negation-removal== 64801 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pd_survivorat_s_p10)))

                    ; #18690: <==negation-removal== 87193 (pos)
                    (not (Bb_not_checked_p10))

                    ; #30723: <==negation-removal== 89326 (pos)
                    (not (Pb_not_checked_p10))

                    ; #39069: <==negation-removal== 86681 (pos)
                    (not (Bc_not_checked_p10))

                    ; #43312: <==uncertain_firing== 81262 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bd_survivorat_s_p10)))

                    ; #45161: <==negation-removal== 34444 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #51000: <==negation-removal== 42004 (pos)
                    (not (Bd_not_checked_p10))

                    ; #54736: <==negation-removal== 54073 (pos)
                    (not (Pd_not_checked_p10))

                    ; #56977: <==negation-removal== 74794 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #58891: <==negation-removal== 71874 (pos)
                    (not (not_checked_p10))

                    ; #59526: <==uncertain_firing== 74794 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bd_not_survivorat_s_p10)))

                    ; #73013: <==negation-removal== 69327 (pos)
                    (not (Pa_not_checked_p10))

                    ; #76415: <==uncertain_firing== 34444 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pd_not_survivorat_s_p10)))

                    ; #78078: <==negation-removal== 81262 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bd_survivorat_s_p10)))

                    ; #83112: <==uncertain_firing== 64801 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pd_survivorat_s_p10)))

                    ; #89054: <==negation-removal== 62923 (pos)
                    (not (Ba_not_checked_p10))

                    ; #89854: <==negation-removal== 38934 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observe_d_p11_s
        :precondition (and (at_d_p11)
                           (not (leader_d)))
        :effect (and
                    ; #12284: <==commonly_known== 64162 (pos)
                    (Bd_checked_p11)

                    ; #20907: <==commonly_known== 85929 (neg)
                    (Pa_checked_p11)

                    ; #23695: <==closure== 29107 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pd_not_survivorat_s_p11))

                    ; #29107: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bd_not_survivorat_s_p11))

                    ; #29528: <==commonly_known== 64162 (pos)
                    (Bb_checked_p11)

                    ; #32937: <==commonly_known== 64162 (pos)
                    (Bc_checked_p11)

                    ; #42164: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bd_survivorat_s_p11))

                    ; #47012: <==commonly_known== 85929 (neg)
                    (Pd_checked_p11)

                    ; #64162: origin
                    (checked_p11)

                    ; #67554: <==commonly_known== 85929 (neg)
                    (Pc_checked_p11)

                    ; #68506: <==commonly_known== 64162 (pos)
                    (Ba_checked_p11)

                    ; #74032: <==commonly_known== 85929 (neg)
                    (Pb_checked_p11)

                    ; #94192: <==closure== 42164 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pd_survivorat_s_p11))

                    ; #13493: <==negation-removal== 68506 (pos)
                    (not (Pa_not_checked_p11))

                    ; #16257: <==negation-removal== 20907 (pos)
                    (not (Ba_not_checked_p11))

                    ; #24364: <==uncertain_firing== 29107 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pd_survivorat_s_p11)))

                    ; #26563: <==negation-removal== 47012 (pos)
                    (not (Bd_not_checked_p11))

                    ; #33998: <==negation-removal== 12284 (pos)
                    (not (Pd_not_checked_p11))

                    ; #34705: <==negation-removal== 94192 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #35209: <==negation-removal== 42164 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #39188: <==uncertain_firing== 42164 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pd_not_survivorat_s_p11)))

                    ; #40098: <==negation-removal== 29107 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pd_survivorat_s_p11)))

                    ; #45685: <==uncertain_firing== 23695 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bd_survivorat_s_p11)))

                    ; #53754: <==negation-removal== 23695 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bd_survivorat_s_p11)))

                    ; #56913: <==negation-removal== 32937 (pos)
                    (not (Pc_not_checked_p11))

                    ; #59385: <==uncertain_firing== 94192 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bd_not_survivorat_s_p11)))

                    ; #85591: <==negation-removal== 74032 (pos)
                    (not (Bb_not_checked_p11))

                    ; #85929: <==negation-removal== 64162 (pos)
                    (not (not_checked_p11))

                    ; #90920: <==negation-removal== 67554 (pos)
                    (not (Bc_not_checked_p11))

                    ; #94763: <==negation-removal== 29528 (pos)
                    (not (Pb_not_checked_p11))))

    (:action observe_d_p12_s
        :precondition (and (at_d_p12)
                           (not (leader_d)))
        :effect (and
                    ; #10362: <==closure== 25683 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pd_survivorat_s_p12))

                    ; #25683: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bd_survivorat_s_p12))

                    ; #36930: <==commonly_known== 73197 (pos)
                    (Bb_checked_p12)

                    ; #42452: <==closure== 67922 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pd_not_survivorat_s_p12))

                    ; #44057: <==commonly_known== 76057 (neg)
                    (Pa_checked_p12)

                    ; #45190: <==commonly_known== 76057 (neg)
                    (Pc_checked_p12)

                    ; #53060: <==commonly_known== 73197 (pos)
                    (Bc_checked_p12)

                    ; #67922: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bd_not_survivorat_s_p12))

                    ; #73197: origin
                    (checked_p12)

                    ; #76420: <==commonly_known== 73197 (pos)
                    (Bd_checked_p12)

                    ; #79058: <==commonly_known== 73197 (pos)
                    (Ba_checked_p12)

                    ; #83828: <==commonly_known== 76057 (neg)
                    (Pd_checked_p12)

                    ; #88682: <==commonly_known== 76057 (neg)
                    (Pb_checked_p12)

                    ; #12906: <==negation-removal== 67922 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pd_survivorat_s_p12)))

                    ; #30634: <==uncertain_firing== 25683 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #35769: <==negation-removal== 25683 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pd_not_survivorat_s_p12)))

                    ; #37232: <==uncertain_firing== 10362 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #44487: <==negation-removal== 53060 (pos)
                    (not (Pc_not_checked_p12))

                    ; #45067: <==negation-removal== 79058 (pos)
                    (not (Pa_not_checked_p12))

                    ; #48238: <==negation-removal== 42452 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bd_survivorat_s_p12)))

                    ; #48791: <==negation-removal== 10362 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bd_not_survivorat_s_p12)))

                    ; #49419: <==negation-removal== 83828 (pos)
                    (not (Bd_not_checked_p12))

                    ; #50790: <==negation-removal== 45190 (pos)
                    (not (Bc_not_checked_p12))

                    ; #75366: <==uncertain_firing== 42452 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bd_survivorat_s_p12)))

                    ; #75946: <==negation-removal== 88682 (pos)
                    (not (Bb_not_checked_p12))

                    ; #76057: <==negation-removal== 73197 (pos)
                    (not (not_checked_p12))

                    ; #81954: <==negation-removal== 36930 (pos)
                    (not (Pb_not_checked_p12))

                    ; #82040: <==uncertain_firing== 67922 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pd_survivorat_s_p12)))

                    ; #89342: <==negation-removal== 44057 (pos)
                    (not (Ba_not_checked_p12))

                    ; #92096: <==negation-removal== 76420 (pos)
                    (not (Pd_not_checked_p12))))

    (:action observe_d_p1_s
        :precondition (and (at_d_p1)
                           (not (leader_d)))
        :effect (and
                    ; #16218: <==commonly_known== 48424 (pos)
                    (Ba_checked_p1)

                    ; #33286: <==commonly_known== 63117 (neg)
                    (Pb_checked_p1)

                    ; #39679: <==commonly_known== 48424 (pos)
                    (Bd_checked_p1)

                    ; #48424: origin
                    (checked_p1)

                    ; #50365: <==closure== 67231 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #50888: <==commonly_known== 63117 (neg)
                    (Pa_checked_p1)

                    ; #61147: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #63059: <==commonly_known== 63117 (neg)
                    (Pd_checked_p1)

                    ; #67231: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #73121: <==closure== 61147 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #76305: <==commonly_known== 48424 (pos)
                    (Bb_checked_p1)

                    ; #83874: <==commonly_known== 48424 (pos)
                    (Bc_checked_p1)

                    ; #86799: <==commonly_known== 63117 (neg)
                    (Pc_checked_p1)

                    ; #20362: <==negation-removal== 39679 (pos)
                    (not (Pd_not_checked_p1))

                    ; #24269: <==negation-removal== 83874 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24424: <==negation-removal== 86799 (pos)
                    (not (Bc_not_checked_p1))

                    ; #35137: <==negation-removal== 16218 (pos)
                    (not (Pa_not_checked_p1))

                    ; #38485: <==uncertain_firing== 61147 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #48924: <==negation-removal== 50888 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52382: <==negation-removal== 33286 (pos)
                    (not (Bb_not_checked_p1))

                    ; #58437: <==negation-removal== 73121 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #58695: <==uncertain_firing== 50365 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #63117: <==negation-removal== 48424 (pos)
                    (not (not_checked_p1))

                    ; #63369: <==negation-removal== 61147 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #72169: <==negation-removal== 63059 (pos)
                    (not (Bd_not_checked_p1))

                    ; #73777: <==negation-removal== 67231 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #80975: <==negation-removal== 50365 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #88410: <==uncertain_firing== 73121 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #94766: <==uncertain_firing== 67231 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #94999: <==negation-removal== 76305 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observe_d_p2_s
        :precondition (and (at_d_p2)
                           (not (leader_d)))
        :effect (and
                    ; #19575: <==commonly_known== 21156 (pos)
                    (Bd_checked_p2)

                    ; #20805: <==commonly_known== 21156 (pos)
                    (Bc_checked_p2)

                    ; #21156: origin
                    (checked_p2)

                    ; #29085: <==commonly_known== 19512 (neg)
                    (Pc_checked_p2)

                    ; #33893: <==commonly_known== 19512 (neg)
                    (Pd_checked_p2)

                    ; #43507: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #53359: <==commonly_known== 19512 (neg)
                    (Pb_checked_p2)

                    ; #65857: <==closure== 43507 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #67250: <==commonly_known== 19512 (neg)
                    (Pa_checked_p2)

                    ; #78527: <==closure== 80471 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #79435: <==commonly_known== 21156 (pos)
                    (Ba_checked_p2)

                    ; #80471: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #84492: <==commonly_known== 21156 (pos)
                    (Bb_checked_p2)

                    ; #19512: <==negation-removal== 21156 (pos)
                    (not (not_checked_p2))

                    ; #22670: <==negation-removal== 33893 (pos)
                    (not (Bd_not_checked_p2))

                    ; #24168: <==negation-removal== 20805 (pos)
                    (not (Pc_not_checked_p2))

                    ; #30314: <==uncertain_firing== 80471 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #42444: <==negation-removal== 19575 (pos)
                    (not (Pd_not_checked_p2))

                    ; #43773: <==uncertain_firing== 65857 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45566: <==negation-removal== 78527 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #49029: <==negation-removal== 29085 (pos)
                    (not (Bc_not_checked_p2))

                    ; #50369: <==negation-removal== 65857 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #55220: <==uncertain_firing== 78527 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #55690: <==negation-removal== 53359 (pos)
                    (not (Bb_not_checked_p2))

                    ; #58137: <==negation-removal== 84492 (pos)
                    (not (Pb_not_checked_p2))

                    ; #68969: <==negation-removal== 79435 (pos)
                    (not (Pa_not_checked_p2))

                    ; #73313: <==negation-removal== 80471 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #82651: <==negation-removal== 43507 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #83764: <==negation-removal== 67250 (pos)
                    (not (Ba_not_checked_p2))

                    ; #89656: <==uncertain_firing== 43507 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))))

    (:action observe_d_p3_s
        :precondition (and (at_d_p3)
                           (not (leader_d)))
        :effect (and
                    ; #15591: <==commonly_known== 62576 (pos)
                    (Bb_checked_p3)

                    ; #17384: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #20344: <==commonly_known== 62576 (pos)
                    (Ba_checked_p3)

                    ; #26691: <==closure== 17384 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #27823: <==commonly_known== 62576 (pos)
                    (Bd_checked_p3)

                    ; #27987: <==commonly_known== 22701 (neg)
                    (Pa_checked_p3)

                    ; #28768: <==commonly_known== 22701 (neg)
                    (Pd_checked_p3)

                    ; #40153: <==commonly_known== 22701 (neg)
                    (Pb_checked_p3)

                    ; #44454: <==commonly_known== 22701 (neg)
                    (Pc_checked_p3)

                    ; #45195: <==closure== 47338 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #46017: <==commonly_known== 62576 (pos)
                    (Bc_checked_p3)

                    ; #47338: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #62576: origin
                    (checked_p3)

                    ; #12196: <==uncertain_firing== 47338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #22701: <==negation-removal== 62576 (pos)
                    (not (not_checked_p3))

                    ; #40698: <==negation-removal== 27987 (pos)
                    (not (Ba_not_checked_p3))

                    ; #43642: <==negation-removal== 40153 (pos)
                    (not (Bb_not_checked_p3))

                    ; #51906: <==negation-removal== 44454 (pos)
                    (not (Bc_not_checked_p3))

                    ; #52409: <==negation-removal== 17384 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #59807: <==negation-removal== 27823 (pos)
                    (not (Pd_not_checked_p3))

                    ; #60436: <==negation-removal== 20344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #67055: <==negation-removal== 26691 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #67061: <==uncertain_firing== 45195 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #67540: <==negation-removal== 45195 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #72117: <==uncertain_firing== 26691 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #78586: <==negation-removal== 46017 (pos)
                    (not (Pc_not_checked_p3))

                    ; #82153: <==negation-removal== 47338 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #83603: <==negation-removal== 28768 (pos)
                    (not (Bd_not_checked_p3))

                    ; #85715: <==negation-removal== 15591 (pos)
                    (not (Pb_not_checked_p3))

                    ; #89566: <==uncertain_firing== 17384 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))))

    (:action observe_d_p4_s
        :precondition (and (at_d_p4)
                           (not (leader_d)))
        :effect (and
                    ; #10917: <==commonly_known== 77990 (neg)
                    (Pd_checked_p4)

                    ; #35346: <==commonly_known== 70399 (pos)
                    (Bd_checked_p4)

                    ; #35913: <==commonly_known== 77990 (neg)
                    (Pa_checked_p4)

                    ; #37559: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #38053: <==commonly_known== 77990 (neg)
                    (Pc_checked_p4)

                    ; #42084: <==closure== 37559 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #47371: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #58824: <==commonly_known== 70399 (pos)
                    (Bb_checked_p4)

                    ; #67734: <==commonly_known== 77990 (neg)
                    (Pb_checked_p4)

                    ; #70084: <==commonly_known== 70399 (pos)
                    (Ba_checked_p4)

                    ; #70399: origin
                    (checked_p4)

                    ; #85841: <==closure== 47371 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #86190: <==commonly_known== 70399 (pos)
                    (Bc_checked_p4)

                    ; #22898: <==negation-removal== 70084 (pos)
                    (not (Pa_not_checked_p4))

                    ; #28975: <==negation-removal== 37559 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #32186: <==negation-removal== 42084 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #33305: <==negation-removal== 85841 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #33598: <==negation-removal== 86190 (pos)
                    (not (Pc_not_checked_p4))

                    ; #43914: <==uncertain_firing== 37559 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #45263: <==negation-removal== 67734 (pos)
                    (not (Bb_not_checked_p4))

                    ; #45642: <==negation-removal== 35913 (pos)
                    (not (Ba_not_checked_p4))

                    ; #59135: <==negation-removal== 47371 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #59205: <==negation-removal== 38053 (pos)
                    (not (Bc_not_checked_p4))

                    ; #66020: <==negation-removal== 35346 (pos)
                    (not (Pd_not_checked_p4))

                    ; #76944: <==uncertain_firing== 42084 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #77990: <==negation-removal== 70399 (pos)
                    (not (not_checked_p4))

                    ; #81678: <==negation-removal== 10917 (pos)
                    (not (Bd_not_checked_p4))

                    ; #86291: <==uncertain_firing== 85841 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #87167: <==negation-removal== 58824 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90570: <==uncertain_firing== 47371 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))))

    (:action observe_d_p5_s
        :precondition (and (at_d_p5)
                           (not (leader_d)))
        :effect (and
                    ; #12281: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #23971: <==commonly_known== 38461 (pos)
                    (Bc_checked_p5)

                    ; #38461: origin
                    (checked_p5)

                    ; #45621: <==commonly_known== 18481 (neg)
                    (Pa_checked_p5)

                    ; #47665: <==commonly_known== 18481 (neg)
                    (Pc_checked_p5)

                    ; #49984: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #54201: <==commonly_known== 38461 (pos)
                    (Bd_checked_p5)

                    ; #56413: <==commonly_known== 38461 (pos)
                    (Ba_checked_p5)

                    ; #73154: <==closure== 49984 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #81205: <==commonly_known== 38461 (pos)
                    (Bb_checked_p5)

                    ; #87333: <==commonly_known== 18481 (neg)
                    (Pb_checked_p5)

                    ; #87359: <==closure== 12281 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #97865: <==commonly_known== 18481 (neg)
                    (Pd_checked_p5)

                    ; #12294: <==uncertain_firing== 12281 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #12409: <==negation-removal== 87359 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #13217: <==uncertain_firing== 73154 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #14820: <==negation-removal== 54201 (pos)
                    (not (Pd_not_checked_p5))

                    ; #18481: <==negation-removal== 38461 (pos)
                    (not (not_checked_p5))

                    ; #23960: <==uncertain_firing== 49984 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #29447: <==negation-removal== 23971 (pos)
                    (not (Pc_not_checked_p5))

                    ; #31306: <==negation-removal== 81205 (pos)
                    (not (Pb_not_checked_p5))

                    ; #34013: <==negation-removal== 49984 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #40259: <==negation-removal== 73154 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #41690: <==negation-removal== 56413 (pos)
                    (not (Pa_not_checked_p5))

                    ; #42742: <==negation-removal== 47665 (pos)
                    (not (Bc_not_checked_p5))

                    ; #51844: <==negation-removal== 87333 (pos)
                    (not (Bb_not_checked_p5))

                    ; #62913: <==negation-removal== 45621 (pos)
                    (not (Ba_not_checked_p5))

                    ; #69092: <==uncertain_firing== 87359 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #72888: <==negation-removal== 97865 (pos)
                    (not (Bd_not_checked_p5))

                    ; #87910: <==negation-removal== 12281 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))))

    (:action observe_d_p6_s
        :precondition (and (at_d_p6)
                           (not (leader_d)))
        :effect (and
                    ; #13206: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #18667: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #19453: <==commonly_known== 66273 (neg)
                    (Pc_checked_p6)

                    ; #28341: <==commonly_known== 66273 (neg)
                    (Pd_checked_p6)

                    ; #49379: <==commonly_known== 66273 (neg)
                    (Pa_checked_p6)

                    ; #50175: <==closure== 13206 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #51297: <==commonly_known== 87036 (pos)
                    (Bb_checked_p6)

                    ; #57715: <==commonly_known== 87036 (pos)
                    (Ba_checked_p6)

                    ; #63208: <==closure== 18667 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #71687: <==commonly_known== 66273 (neg)
                    (Pb_checked_p6)

                    ; #82786: <==commonly_known== 87036 (pos)
                    (Bc_checked_p6)

                    ; #87036: origin
                    (checked_p6)

                    ; #88075: <==commonly_known== 87036 (pos)
                    (Bd_checked_p6)

                    ; #28240: <==negation-removal== 28341 (pos)
                    (not (Bd_not_checked_p6))

                    ; #37463: <==negation-removal== 82786 (pos)
                    (not (Pc_not_checked_p6))

                    ; #41865: <==negation-removal== 71687 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52616: <==negation-removal== 88075 (pos)
                    (not (Pd_not_checked_p6))

                    ; #54056: <==negation-removal== 57715 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59432: <==uncertain_firing== 18667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #62298: <==uncertain_firing== 63208 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #66273: <==negation-removal== 87036 (pos)
                    (not (not_checked_p6))

                    ; #66375: <==negation-removal== 13206 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #75152: <==uncertain_firing== 13206 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #78347: <==negation-removal== 49379 (pos)
                    (not (Ba_not_checked_p6))

                    ; #79557: <==uncertain_firing== 50175 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #84195: <==negation-removal== 50175 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #86670: <==negation-removal== 51297 (pos)
                    (not (Pb_not_checked_p6))

                    ; #87673: <==negation-removal== 19453 (pos)
                    (not (Bc_not_checked_p6))

                    ; #90783: <==negation-removal== 18667 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #91834: <==negation-removal== 63208 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))))

    (:action observe_d_p7_s
        :precondition (and (at_d_p7)
                           (not (leader_d)))
        :effect (and
                    ; #11880: <==commonly_known== 41707 (neg)
                    (Pb_checked_p7)

                    ; #20185: <==commonly_known== 41707 (neg)
                    (Pd_checked_p7)

                    ; #39925: <==closure== 53256 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #45031: <==commonly_known== 71265 (pos)
                    (Bb_checked_p7)

                    ; #53256: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #59867: <==commonly_known== 71265 (pos)
                    (Ba_checked_p7)

                    ; #71265: origin
                    (checked_p7)

                    ; #71687: <==commonly_known== 41707 (neg)
                    (Pa_checked_p7)

                    ; #82637: <==commonly_known== 71265 (pos)
                    (Bd_checked_p7)

                    ; #85496: <==commonly_known== 71265 (pos)
                    (Bc_checked_p7)

                    ; #89195: <==closure== 90298 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #89956: <==commonly_known== 41707 (neg)
                    (Pc_checked_p7)

                    ; #90298: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #14952: <==negation-removal== 89956 (pos)
                    (not (Bc_not_checked_p7))

                    ; #20581: <==negation-removal== 89195 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #20638: <==uncertain_firing== 90298 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #25145: <==negation-removal== 20185 (pos)
                    (not (Bd_not_checked_p7))

                    ; #34335: <==negation-removal== 11880 (pos)
                    (not (Bb_not_checked_p7))

                    ; #39882: <==uncertain_firing== 39925 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #41052: <==negation-removal== 45031 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41707: <==negation-removal== 71265 (pos)
                    (not (not_checked_p7))

                    ; #46966: <==negation-removal== 59867 (pos)
                    (not (Pa_not_checked_p7))

                    ; #51621: <==negation-removal== 90298 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #61950: <==negation-removal== 85496 (pos)
                    (not (Pc_not_checked_p7))

                    ; #66520: <==negation-removal== 82637 (pos)
                    (not (Pd_not_checked_p7))

                    ; #70778: <==negation-removal== 39925 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #71323: <==negation-removal== 53256 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #77521: <==negation-removal== 71687 (pos)
                    (not (Ba_not_checked_p7))

                    ; #78560: <==uncertain_firing== 53256 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #79213: <==uncertain_firing== 89195 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))))

    (:action observe_d_p8_s
        :precondition (and (at_d_p8)
                           (not (leader_d)))
        :effect (and
                    ; #27316: <==commonly_known== 35611 (neg)
                    (Pb_checked_p8)

                    ; #33185: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #33881: <==commonly_known== 70184 (pos)
                    (Bd_checked_p8)

                    ; #39308: <==closure== 52368 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #48056: <==commonly_known== 70184 (pos)
                    (Bc_checked_p8)

                    ; #52368: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #61426: <==commonly_known== 35611 (neg)
                    (Pc_checked_p8)

                    ; #67659: <==commonly_known== 70184 (pos)
                    (Bb_checked_p8)

                    ; #70184: origin
                    (checked_p8)

                    ; #71657: <==commonly_known== 70184 (pos)
                    (Ba_checked_p8)

                    ; #76666: <==commonly_known== 35611 (neg)
                    (Pd_checked_p8)

                    ; #80647: <==closure== 33185 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #98771: <==commonly_known== 35611 (neg)
                    (Pa_checked_p8)

                    ; #11487: <==negation-removal== 39308 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #11656: <==negation-removal== 76666 (pos)
                    (not (Bd_not_checked_p8))

                    ; #16163: <==negation-removal== 48056 (pos)
                    (not (Pc_not_checked_p8))

                    ; #29311: <==uncertain_firing== 80647 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #35611: <==negation-removal== 70184 (pos)
                    (not (not_checked_p8))

                    ; #37476: <==negation-removal== 33185 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #40300: <==negation-removal== 61426 (pos)
                    (not (Bc_not_checked_p8))

                    ; #55408: <==uncertain_firing== 39308 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #65761: <==negation-removal== 33881 (pos)
                    (not (Pd_not_checked_p8))

                    ; #65979: <==negation-removal== 67659 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71752: <==uncertain_firing== 33185 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #75370: <==negation-removal== 52368 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #80729: <==negation-removal== 27316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #87133: <==negation-removal== 80647 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #87335: <==negation-removal== 71657 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88233: <==negation-removal== 98771 (pos)
                    (not (Ba_not_checked_p8))

                    ; #89813: <==uncertain_firing== 52368 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))))

    (:action observe_d_p9_s
        :precondition (and (at_d_p9)
                           (not (leader_d)))
        :effect (and
                    ; #11874: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #27925: <==commonly_known== 68397 (pos)
                    (Bc_checked_p9)

                    ; #40925: <==commonly_known== 12104 (neg)
                    (Pa_checked_p9)

                    ; #42943: <==closure== 61695 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #47536: <==commonly_known== 68397 (pos)
                    (Ba_checked_p9)

                    ; #61695: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #62234: <==commonly_known== 12104 (neg)
                    (Pd_checked_p9)

                    ; #68397: origin
                    (checked_p9)

                    ; #71028: <==commonly_known== 12104 (neg)
                    (Pb_checked_p9)

                    ; #73848: <==closure== 11874 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #75057: <==commonly_known== 68397 (pos)
                    (Bd_checked_p9)

                    ; #78391: <==commonly_known== 12104 (neg)
                    (Pc_checked_p9)

                    ; #80169: <==commonly_known== 68397 (pos)
                    (Bb_checked_p9)

                    ; #12104: <==negation-removal== 68397 (pos)
                    (not (not_checked_p9))

                    ; #21503: <==uncertain_firing== 73848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #23304: <==negation-removal== 73848 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #28476: <==negation-removal== 61695 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #29396: <==negation-removal== 75057 (pos)
                    (not (Pd_not_checked_p9))

                    ; #45802: <==negation-removal== 62234 (pos)
                    (not (Bd_not_checked_p9))

                    ; #48393: <==negation-removal== 71028 (pos)
                    (not (Bb_not_checked_p9))

                    ; #52639: <==negation-removal== 40925 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56588: <==negation-removal== 80169 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70777: <==negation-removal== 47536 (pos)
                    (not (Pa_not_checked_p9))

                    ; #75752: <==negation-removal== 42943 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #76145: <==uncertain_firing== 61695 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))

                    ; #77854: <==negation-removal== 27925 (pos)
                    (not (Pc_not_checked_p9))

                    ; #81770: <==negation-removal== 11874 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #87694: <==uncertain_firing== 11874 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #88281: <==uncertain_firing== 42943 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #89231: <==negation-removal== 78391 (pos)
                    (not (Bc_not_checked_p9))))

)