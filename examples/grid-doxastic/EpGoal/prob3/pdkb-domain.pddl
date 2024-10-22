(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_at_d_p1)
        (not_at_d_p2)
        (not_at_d_p3)
        (not_at_d_p4)
        (not_at_d_p5)
        (not_at_d_p6)
        (not_at_d_p7)
        (not_at_d_p8)
        (not_at_d_p9)
        (not_checked_p1)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Bd_not_checked_p1)
        (Bd_not_checked_p2)
        (Bd_not_checked_p3)
        (Bd_not_checked_p4)
        (Bd_not_checked_p5)
        (Bd_not_checked_p6)
        (Bd_not_checked_p7)
        (Bd_not_checked_p8)
        (Bd_not_checked_p9)
        (Bd_not_hiddensurvivorat_s_p1)
        (Bd_not_hiddensurvivorat_s_p2)
        (Bd_not_hiddensurvivorat_s_p3)
        (Bd_not_hiddensurvivorat_s_p4)
        (Bd_not_hiddensurvivorat_s_p5)
        (Bd_not_hiddensurvivorat_s_p6)
        (Bd_not_hiddensurvivorat_s_p7)
        (Bd_not_hiddensurvivorat_s_p8)
        (Bd_not_hiddensurvivorat_s_p9)
        (Bd_not_survivorat_s_p1)
        (Bd_not_survivorat_s_p2)
        (Bd_not_survivorat_s_p3)
        (Bd_not_survivorat_s_p4)
        (Bd_not_survivorat_s_p5)
        (Bd_not_survivorat_s_p6)
        (Bd_not_survivorat_s_p7)
        (Bd_not_survivorat_s_p8)
        (Bd_not_survivorat_s_p9)
        (Bd_checked_p1)
        (Bd_checked_p2)
        (Bd_checked_p3)
        (Bd_checked_p4)
        (Bd_checked_p5)
        (Bd_checked_p6)
        (Bd_checked_p7)
        (Bd_checked_p8)
        (Bd_checked_p9)
        (Bd_hiddensurvivorat_s_p1)
        (Bd_hiddensurvivorat_s_p2)
        (Bd_hiddensurvivorat_s_p3)
        (Bd_hiddensurvivorat_s_p4)
        (Bd_hiddensurvivorat_s_p5)
        (Bd_hiddensurvivorat_s_p6)
        (Bd_hiddensurvivorat_s_p7)
        (Bd_hiddensurvivorat_s_p8)
        (Bd_hiddensurvivorat_s_p9)
        (Bd_survivorat_s_p1)
        (Bd_survivorat_s_p2)
        (Bd_survivorat_s_p3)
        (Bd_survivorat_s_p4)
        (Bd_survivorat_s_p5)
        (Bd_survivorat_s_p6)
        (Bd_survivorat_s_p7)
        (Bd_survivorat_s_p8)
        (Bd_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (Pd_not_checked_p1)
        (Pd_not_checked_p2)
        (Pd_not_checked_p3)
        (Pd_not_checked_p4)
        (Pd_not_checked_p5)
        (Pd_not_checked_p6)
        (Pd_not_checked_p7)
        (Pd_not_checked_p8)
        (Pd_not_checked_p9)
        (Pd_not_hiddensurvivorat_s_p1)
        (Pd_not_hiddensurvivorat_s_p2)
        (Pd_not_hiddensurvivorat_s_p3)
        (Pd_not_hiddensurvivorat_s_p4)
        (Pd_not_hiddensurvivorat_s_p5)
        (Pd_not_hiddensurvivorat_s_p6)
        (Pd_not_hiddensurvivorat_s_p7)
        (Pd_not_hiddensurvivorat_s_p8)
        (Pd_not_hiddensurvivorat_s_p9)
        (Pd_not_survivorat_s_p1)
        (Pd_not_survivorat_s_p2)
        (Pd_not_survivorat_s_p3)
        (Pd_not_survivorat_s_p4)
        (Pd_not_survivorat_s_p5)
        (Pd_not_survivorat_s_p6)
        (Pd_not_survivorat_s_p7)
        (Pd_not_survivorat_s_p8)
        (Pd_not_survivorat_s_p9)
        (Pd_checked_p1)
        (Pd_checked_p2)
        (Pd_checked_p3)
        (Pd_checked_p4)
        (Pd_checked_p5)
        (Pd_checked_p6)
        (Pd_checked_p7)
        (Pd_checked_p8)
        (Pd_checked_p9)
        (Pd_hiddensurvivorat_s_p1)
        (Pd_hiddensurvivorat_s_p2)
        (Pd_hiddensurvivorat_s_p3)
        (Pd_hiddensurvivorat_s_p4)
        (Pd_hiddensurvivorat_s_p5)
        (Pd_hiddensurvivorat_s_p6)
        (Pd_hiddensurvivorat_s_p7)
        (Pd_hiddensurvivorat_s_p8)
        (Pd_hiddensurvivorat_s_p9)
        (Pd_survivorat_s_p1)
        (Pd_survivorat_s_p2)
        (Pd_survivorat_s_p3)
        (Pd_survivorat_s_p4)
        (Pd_survivorat_s_p5)
        (Pd_survivorat_s_p6)
        (Pd_survivorat_s_p7)
        (Pd_survivorat_s_p8)
        (Pd_survivorat_s_p9)
        (at_a_p1)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (at_d_p1)
        (at_d_p2)
        (at_d_p3)
        (at_d_p4)
        (at_d_p5)
        (at_d_p6)
        (at_d_p7)
        (at_d_p8)
        (at_d_p9)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (succ_p1_p1)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #14952: <==closure== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #23598: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #23922: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43979: <==closure== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #52341: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #53500: <==closure== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53995: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54726: <==closure== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==uncertain_firing== 14952 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #14515: <==uncertain_firing== 52341 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #19927: <==negation-removal== 54726 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19972: <==uncertain_firing== 53500 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #20813: <==negation-removal== 14952 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #23530: <==uncertain_firing== 23922 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26966: <==negation-removal== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #31704: <==negation-removal== 53500 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #48015: <==negation-removal== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54358: <==uncertain_firing== 43979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #61606: <==uncertain_firing== 54726 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #62983: <==negation-removal== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #63301: <==uncertain_firing== 23598 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65301: <==negation-removal== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80998: <==negation-removal== 43979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #82608: <==uncertain_firing== 53995 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #14952: <==closure== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #23598: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #23922: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43979: <==closure== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #52341: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #53500: <==closure== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53995: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54726: <==closure== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==uncertain_firing== 14952 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #14515: <==uncertain_firing== 52341 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #19927: <==negation-removal== 54726 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19972: <==uncertain_firing== 53500 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #20813: <==negation-removal== 14952 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #23530: <==uncertain_firing== 23922 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26966: <==negation-removal== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #31704: <==negation-removal== 53500 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #48015: <==negation-removal== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54358: <==uncertain_firing== 43979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #61606: <==uncertain_firing== 54726 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #62983: <==negation-removal== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #63301: <==uncertain_firing== 23598 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65301: <==negation-removal== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80998: <==negation-removal== 43979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #82608: <==uncertain_firing== 53995 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #14952: <==closure== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #23598: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #23922: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43979: <==closure== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #52341: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #53500: <==closure== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53995: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54726: <==closure== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==uncertain_firing== 14952 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #14515: <==uncertain_firing== 52341 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #19927: <==negation-removal== 54726 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19972: <==uncertain_firing== 53500 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #20813: <==negation-removal== 14952 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #23530: <==uncertain_firing== 23922 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26966: <==negation-removal== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #31704: <==negation-removal== 53500 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #48015: <==negation-removal== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54358: <==uncertain_firing== 43979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #61606: <==uncertain_firing== 54726 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #62983: <==negation-removal== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #63301: <==uncertain_firing== 23598 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65301: <==negation-removal== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80998: <==negation-removal== 43979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #82608: <==uncertain_firing== 53995 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #14952: <==closure== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #23598: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #23922: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #43979: <==closure== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #52341: origin
                    (when (and (not_at_d_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #53500: <==closure== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #53995: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54726: <==closure== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10905: <==uncertain_firing== 14952 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #14515: <==uncertain_firing== 52341 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #19927: <==negation-removal== 54726 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #19972: <==uncertain_firing== 53500 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #20813: <==negation-removal== 14952 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #23530: <==uncertain_firing== 23922 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26966: <==negation-removal== 52341 (pos)
                    (when (and (not_at_d_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #31704: <==negation-removal== 53500 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #48015: <==negation-removal== 23922 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #54358: <==uncertain_firing== 43979 (pos)
                    (when (and (not (at_d_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #61606: <==uncertain_firing== 54726 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #62983: <==negation-removal== 23598 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #63301: <==uncertain_firing== 23598 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #65301: <==negation-removal== 53995 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #80998: <==negation-removal== 43979 (pos)
                    (when (and (not_at_d_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #82608: <==uncertain_firing== 53995 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #13033: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37675: <==closure== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #41992: <==closure== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48470: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51695: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #52469: <==closure== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #60831: <==closure== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65665: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #13319: <==negation-removal== 60831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #15661: <==uncertain_firing== 48470 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27744: <==negation-removal== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #33151: <==uncertain_firing== 65665 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #39487: <==negation-removal== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58414: <==uncertain_firing== 41992 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #58941: <==negation-removal== 41992 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59792: <==negation-removal== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #62973: <==uncertain_firing== 13033 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #74132: <==negation-removal== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #77053: <==negation-removal== 37675 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #80143: <==uncertain_firing== 37675 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #82895: <==uncertain_firing== 52469 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85441: <==negation-removal== 52469 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #86673: <==uncertain_firing== 51695 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #94209: <==uncertain_firing== 60831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #13033: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37675: <==closure== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #41992: <==closure== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48470: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51695: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #52469: <==closure== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #60831: <==closure== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65665: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #13319: <==negation-removal== 60831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #15661: <==uncertain_firing== 48470 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27744: <==negation-removal== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #33151: <==uncertain_firing== 65665 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #39487: <==negation-removal== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58414: <==uncertain_firing== 41992 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #58941: <==negation-removal== 41992 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59792: <==negation-removal== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #62973: <==uncertain_firing== 13033 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #74132: <==negation-removal== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #77053: <==negation-removal== 37675 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #80143: <==uncertain_firing== 37675 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #82895: <==uncertain_firing== 52469 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85441: <==negation-removal== 52469 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #86673: <==uncertain_firing== 51695 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #94209: <==uncertain_firing== 60831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #13033: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37675: <==closure== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #41992: <==closure== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48470: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51695: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #52469: <==closure== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #60831: <==closure== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65665: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #13319: <==negation-removal== 60831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #15661: <==uncertain_firing== 48470 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27744: <==negation-removal== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #33151: <==uncertain_firing== 65665 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #39487: <==negation-removal== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58414: <==uncertain_firing== 41992 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #58941: <==negation-removal== 41992 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59792: <==negation-removal== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #62973: <==uncertain_firing== 13033 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #74132: <==negation-removal== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #77053: <==negation-removal== 37675 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #80143: <==uncertain_firing== 37675 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #82895: <==uncertain_firing== 52469 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85441: <==negation-removal== 52469 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #86673: <==uncertain_firing== 51695 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #94209: <==uncertain_firing== 60831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (at_d_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #13033: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #37675: <==closure== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #41992: <==closure== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #48470: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #51695: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #52469: <==closure== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #60831: <==closure== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #65665: origin
                    (when (and (not_at_d_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #13319: <==negation-removal== 60831 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #15661: <==uncertain_firing== 48470 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #27744: <==negation-removal== 13033 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #33151: <==uncertain_firing== 65665 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #39487: <==negation-removal== 51695 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #58414: <==uncertain_firing== 41992 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #58941: <==negation-removal== 41992 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #59792: <==negation-removal== 65665 (pos)
                    (when (and (not_at_d_p2))
                          (not (Pd_survivorat_s_p2)))

                    ; #62973: <==uncertain_firing== 13033 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #74132: <==negation-removal== 48470 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #77053: <==negation-removal== 37675 (pos)
                    (when (and (not_at_d_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #80143: <==uncertain_firing== 37675 (pos)
                    (when (and (not (at_d_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #82895: <==uncertain_firing== 52469 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85441: <==negation-removal== 52469 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #86673: <==uncertain_firing== 51695 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #94209: <==uncertain_firing== 60831 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #25996: <==closure== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #28682: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30565: <==closure== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38741: <==closure== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #57701: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #60383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91350: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #98952: <==closure== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #12747: <==uncertain_firing== 60383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13176: <==negation-removal== 38741 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14257: <==negation-removal== 25996 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #24233: <==uncertain_firing== 30565 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #40541: <==negation-removal== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #41176: <==uncertain_firing== 57701 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55138: <==uncertain_firing== 25996 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #56500: <==negation-removal== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #60289: <==negation-removal== 98952 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63690: <==negation-removal== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #70114: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #70512: <==negation-removal== 30565 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81867: <==uncertain_firing== 38741 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #83080: <==uncertain_firing== 91350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #86638: <==negation-removal== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #99480: <==uncertain_firing== 98952 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #25996: <==closure== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #28682: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30565: <==closure== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38741: <==closure== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #57701: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #60383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91350: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #98952: <==closure== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #12747: <==uncertain_firing== 60383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13176: <==negation-removal== 38741 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14257: <==negation-removal== 25996 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #24233: <==uncertain_firing== 30565 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #40541: <==negation-removal== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #41176: <==uncertain_firing== 57701 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55138: <==uncertain_firing== 25996 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #56500: <==negation-removal== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #60289: <==negation-removal== 98952 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63690: <==negation-removal== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #70114: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #70512: <==negation-removal== 30565 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81867: <==uncertain_firing== 38741 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #83080: <==uncertain_firing== 91350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #86638: <==negation-removal== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #99480: <==uncertain_firing== 98952 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #25996: <==closure== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #28682: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30565: <==closure== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38741: <==closure== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #57701: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #60383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91350: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #98952: <==closure== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #12747: <==uncertain_firing== 60383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13176: <==negation-removal== 38741 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14257: <==negation-removal== 25996 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #24233: <==uncertain_firing== 30565 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #40541: <==negation-removal== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #41176: <==uncertain_firing== 57701 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55138: <==uncertain_firing== 25996 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #56500: <==negation-removal== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #60289: <==negation-removal== 98952 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63690: <==negation-removal== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #70114: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #70512: <==negation-removal== 30565 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81867: <==uncertain_firing== 38741 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #83080: <==uncertain_firing== 91350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #86638: <==negation-removal== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #99480: <==uncertain_firing== 98952 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #25996: <==closure== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #28682: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30565: <==closure== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #38741: <==closure== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #57701: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #60383: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #91350: origin
                    (when (and (not_at_d_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #98952: <==closure== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #12747: <==uncertain_firing== 60383 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #13176: <==negation-removal== 38741 (pos)
                    (when (and (not_at_d_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #14257: <==negation-removal== 25996 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #24233: <==uncertain_firing== 30565 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #40541: <==negation-removal== 91350 (pos)
                    (when (and (not_at_d_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #41176: <==uncertain_firing== 57701 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #55138: <==uncertain_firing== 25996 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #56500: <==negation-removal== 60383 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #60289: <==negation-removal== 98952 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #63690: <==negation-removal== 57701 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #70114: <==uncertain_firing== 28682 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #70512: <==negation-removal== 30565 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #81867: <==uncertain_firing== 38741 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #83080: <==uncertain_firing== 91350 (pos)
                    (when (and (not (at_d_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #86638: <==negation-removal== 28682 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #99480: <==uncertain_firing== 98952 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #14287: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #37953: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #42842: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #43924: <==closure== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44916: <==closure== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #56740: <==closure== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67007: <==closure== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83493: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #15919: <==uncertain_firing== 67007 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #23316: <==negation-removal== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #24221: <==negation-removal== 56740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #27261: <==negation-removal== 44916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #31972: <==negation-removal== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46576: <==negation-removal== 43924 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47701: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #51064: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52656: <==uncertain_firing== 83493 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #59994: <==uncertain_firing== 14287 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #64597: <==uncertain_firing== 43924 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71704: <==uncertain_firing== 44916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #74477: <==negation-removal== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80297: <==uncertain_firing== 56740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80952: <==uncertain_firing== 42842 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #90392: <==negation-removal== 67007 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #14287: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #37953: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #42842: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #43924: <==closure== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44916: <==closure== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #56740: <==closure== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67007: <==closure== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83493: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #15919: <==uncertain_firing== 67007 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #23316: <==negation-removal== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #24221: <==negation-removal== 56740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #27261: <==negation-removal== 44916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #31972: <==negation-removal== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46576: <==negation-removal== 43924 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47701: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #51064: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52656: <==uncertain_firing== 83493 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #59994: <==uncertain_firing== 14287 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #64597: <==uncertain_firing== 43924 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71704: <==uncertain_firing== 44916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #74477: <==negation-removal== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80297: <==uncertain_firing== 56740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80952: <==uncertain_firing== 42842 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #90392: <==negation-removal== 67007 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #14287: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #37953: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #42842: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #43924: <==closure== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44916: <==closure== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #56740: <==closure== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67007: <==closure== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83493: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #15919: <==uncertain_firing== 67007 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #23316: <==negation-removal== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #24221: <==negation-removal== 56740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #27261: <==negation-removal== 44916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #31972: <==negation-removal== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46576: <==negation-removal== 43924 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47701: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #51064: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52656: <==uncertain_firing== 83493 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #59994: <==uncertain_firing== 14287 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #64597: <==uncertain_firing== 43924 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71704: <==uncertain_firing== 44916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #74477: <==negation-removal== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80297: <==uncertain_firing== 56740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80952: <==uncertain_firing== 42842 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #90392: <==negation-removal== 67007 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #14287: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #37953: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #42842: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #43924: <==closure== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #44916: <==closure== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #56740: <==closure== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #67007: <==closure== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83493: origin
                    (when (and (not_at_d_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #15919: <==uncertain_firing== 67007 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #23316: <==negation-removal== 83493 (pos)
                    (when (and (not_at_d_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #24221: <==negation-removal== 56740 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #27261: <==negation-removal== 44916 (pos)
                    (when (and (not_at_d_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #31972: <==negation-removal== 42842 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #46576: <==negation-removal== 43924 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #47701: <==uncertain_firing== 37953 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #51064: <==negation-removal== 37953 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #52656: <==uncertain_firing== 83493 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #59994: <==uncertain_firing== 14287 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #64597: <==uncertain_firing== 43924 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #71704: <==uncertain_firing== 44916 (pos)
                    (when (and (not (at_d_p4)))
                          (not (Bd_survivorat_s_p4)))

                    ; #74477: <==negation-removal== 14287 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #80297: <==uncertain_firing== 56740 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80952: <==uncertain_firing== 42842 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #90392: <==negation-removal== 67007 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10658: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71519: <==closure== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72646: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #73401: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #80221: <==closure== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #88451: <==closure== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89430: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #90789: <==closure== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #10516: <==uncertain_firing== 80221 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #18972: <==negation-removal== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19112: <==negation-removal== 80221 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #22552: <==negation-removal== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #24873: <==negation-removal== 71519 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28064: <==uncertain_firing== 88451 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #28928: <==uncertain_firing== 73401 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36992: <==negation-removal== 90789 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37977: <==uncertain_firing== 89430 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #48416: <==uncertain_firing== 71519 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #52860: <==negation-removal== 88451 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #65555: <==uncertain_firing== 10658 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #74999: <==negation-removal== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #76368: <==uncertain_firing== 72646 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89241: <==negation-removal== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #92550: <==uncertain_firing== 90789 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #10658: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71519: <==closure== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72646: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #73401: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #80221: <==closure== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #88451: <==closure== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89430: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #90789: <==closure== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #10516: <==uncertain_firing== 80221 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #18972: <==negation-removal== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19112: <==negation-removal== 80221 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #22552: <==negation-removal== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #24873: <==negation-removal== 71519 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28064: <==uncertain_firing== 88451 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #28928: <==uncertain_firing== 73401 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36992: <==negation-removal== 90789 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37977: <==uncertain_firing== 89430 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #48416: <==uncertain_firing== 71519 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #52860: <==negation-removal== 88451 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #65555: <==uncertain_firing== 10658 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #74999: <==negation-removal== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #76368: <==uncertain_firing== 72646 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89241: <==negation-removal== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #92550: <==uncertain_firing== 90789 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #10658: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71519: <==closure== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72646: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #73401: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #80221: <==closure== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #88451: <==closure== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89430: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #90789: <==closure== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #10516: <==uncertain_firing== 80221 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #18972: <==negation-removal== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19112: <==negation-removal== 80221 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #22552: <==negation-removal== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #24873: <==negation-removal== 71519 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28064: <==uncertain_firing== 88451 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #28928: <==uncertain_firing== 73401 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36992: <==negation-removal== 90789 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37977: <==uncertain_firing== 89430 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #48416: <==uncertain_firing== 71519 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #52860: <==negation-removal== 88451 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #65555: <==uncertain_firing== 10658 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #74999: <==negation-removal== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #76368: <==uncertain_firing== 72646 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89241: <==negation-removal== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #92550: <==uncertain_firing== 90789 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #10658: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #71519: <==closure== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #72646: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #73401: origin
                    (when (and (not_at_d_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #80221: <==closure== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #88451: <==closure== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89430: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #90789: <==closure== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #10516: <==uncertain_firing== 80221 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #18972: <==negation-removal== 10658 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19112: <==negation-removal== 80221 (pos)
                    (when (and (not_at_d_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #22552: <==negation-removal== 73401 (pos)
                    (when (and (not_at_d_p5))
                          (not (Pd_survivorat_s_p5)))

                    ; #24873: <==negation-removal== 71519 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28064: <==uncertain_firing== 88451 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #28928: <==uncertain_firing== 73401 (pos)
                    (when (and (not (at_d_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #36992: <==negation-removal== 90789 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37977: <==uncertain_firing== 89430 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #48416: <==uncertain_firing== 71519 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #52860: <==negation-removal== 88451 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #65555: <==uncertain_firing== 10658 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #74999: <==negation-removal== 72646 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #76368: <==uncertain_firing== 72646 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #89241: <==negation-removal== 89430 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #92550: <==uncertain_firing== 90789 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #11524: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14258: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #20552: <==closure== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #24878: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #68693: <==closure== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #78192: <==closure== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #79280: <==closure== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88145: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11007: <==negation-removal== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #14318: <==negation-removal== 78192 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #18440: <==negation-removal== 79280 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19262: <==negation-removal== 68693 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33277: <==uncertain_firing== 20552 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #35022: <==uncertain_firing== 79280 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #37829: <==negation-removal== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #40862: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #54508: <==uncertain_firing== 11524 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #57212: <==negation-removal== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67894: <==uncertain_firing== 78192 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72372: <==uncertain_firing== 14258 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84379: <==uncertain_firing== 68693 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #85701: <==negation-removal== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86888: <==uncertain_firing== 24878 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #87379: <==negation-removal== 20552 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #11524: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14258: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #20552: <==closure== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #24878: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #68693: <==closure== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #78192: <==closure== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #79280: <==closure== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88145: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11007: <==negation-removal== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #14318: <==negation-removal== 78192 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #18440: <==negation-removal== 79280 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19262: <==negation-removal== 68693 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33277: <==uncertain_firing== 20552 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #35022: <==uncertain_firing== 79280 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #37829: <==negation-removal== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #40862: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #54508: <==uncertain_firing== 11524 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #57212: <==negation-removal== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67894: <==uncertain_firing== 78192 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72372: <==uncertain_firing== 14258 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84379: <==uncertain_firing== 68693 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #85701: <==negation-removal== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86888: <==uncertain_firing== 24878 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #87379: <==negation-removal== 20552 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #11524: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14258: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #20552: <==closure== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #24878: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #68693: <==closure== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #78192: <==closure== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #79280: <==closure== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88145: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11007: <==negation-removal== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #14318: <==negation-removal== 78192 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #18440: <==negation-removal== 79280 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19262: <==negation-removal== 68693 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33277: <==uncertain_firing== 20552 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #35022: <==uncertain_firing== 79280 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #37829: <==negation-removal== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #40862: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #54508: <==uncertain_firing== 11524 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #57212: <==negation-removal== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67894: <==uncertain_firing== 78192 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72372: <==uncertain_firing== 14258 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84379: <==uncertain_firing== 68693 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #85701: <==negation-removal== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86888: <==uncertain_firing== 24878 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #87379: <==negation-removal== 20552 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #11524: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #14258: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #20552: <==closure== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #24878: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #68693: <==closure== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #78192: <==closure== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #79280: <==closure== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #88145: origin
                    (when (and (not_at_d_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #11007: <==negation-removal== 24878 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #14318: <==negation-removal== 78192 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #18440: <==negation-removal== 79280 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #19262: <==negation-removal== 68693 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #33277: <==uncertain_firing== 20552 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #35022: <==uncertain_firing== 79280 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #37829: <==negation-removal== 88145 (pos)
                    (when (and (not_at_d_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #40862: <==uncertain_firing== 88145 (pos)
                    (when (and (not (at_d_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #54508: <==uncertain_firing== 11524 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #57212: <==negation-removal== 14258 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #67894: <==uncertain_firing== 78192 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #72372: <==uncertain_firing== 14258 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #84379: <==uncertain_firing== 68693 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #85701: <==negation-removal== 11524 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #86888: <==uncertain_firing== 24878 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #87379: <==negation-removal== 20552 (pos)
                    (when (and (not_at_d_p6))
                          (not (Bd_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #20113: <==closure== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #21345: <==closure== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #24024: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #54266: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60602: <==closure== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61187: <==closure== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #71896: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #83772: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10000: <==negation-removal== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24239: <==uncertain_firing== 61187 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #24741: <==uncertain_firing== 20113 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #28670: <==negation-removal== 21345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #32028: <==uncertain_firing== 21345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35126: <==uncertain_firing== 71896 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #37009: <==negation-removal== 60602 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52867: <==uncertain_firing== 24024 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54107: <==negation-removal== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #56600: <==negation-removal== 20113 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #56651: <==negation-removal== 61187 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #59525: <==uncertain_firing== 60602 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #64503: <==negation-removal== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75289: <==uncertain_firing== 54266 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #88706: <==uncertain_firing== 83772 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #90150: <==negation-removal== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #20113: <==closure== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #21345: <==closure== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #24024: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #54266: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60602: <==closure== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61187: <==closure== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #71896: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #83772: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10000: <==negation-removal== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24239: <==uncertain_firing== 61187 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #24741: <==uncertain_firing== 20113 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #28670: <==negation-removal== 21345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #32028: <==uncertain_firing== 21345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35126: <==uncertain_firing== 71896 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #37009: <==negation-removal== 60602 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52867: <==uncertain_firing== 24024 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54107: <==negation-removal== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #56600: <==negation-removal== 20113 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #56651: <==negation-removal== 61187 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #59525: <==uncertain_firing== 60602 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #64503: <==negation-removal== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75289: <==uncertain_firing== 54266 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #88706: <==uncertain_firing== 83772 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #90150: <==negation-removal== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #20113: <==closure== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #21345: <==closure== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #24024: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #54266: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60602: <==closure== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61187: <==closure== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #71896: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #83772: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10000: <==negation-removal== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24239: <==uncertain_firing== 61187 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #24741: <==uncertain_firing== 20113 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #28670: <==negation-removal== 21345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #32028: <==uncertain_firing== 21345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35126: <==uncertain_firing== 71896 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #37009: <==negation-removal== 60602 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52867: <==uncertain_firing== 24024 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54107: <==negation-removal== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #56600: <==negation-removal== 20113 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #56651: <==negation-removal== 61187 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #59525: <==uncertain_firing== 60602 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #64503: <==negation-removal== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75289: <==uncertain_firing== 54266 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #88706: <==uncertain_firing== 83772 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #90150: <==negation-removal== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))))

    (:action badcomm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #20113: <==closure== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #21345: <==closure== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #24024: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #54266: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60602: <==closure== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #61187: <==closure== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #71896: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #83772: origin
                    (when (and (not_at_d_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #10000: <==negation-removal== 24024 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #24239: <==uncertain_firing== 61187 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #24741: <==uncertain_firing== 20113 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #28670: <==negation-removal== 21345 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #32028: <==uncertain_firing== 21345 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #35126: <==uncertain_firing== 71896 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #37009: <==negation-removal== 60602 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #52867: <==uncertain_firing== 24024 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #54107: <==negation-removal== 71896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #56600: <==negation-removal== 20113 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #56651: <==negation-removal== 61187 (pos)
                    (when (and (not_at_d_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #59525: <==uncertain_firing== 60602 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #64503: <==negation-removal== 54266 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75289: <==uncertain_firing== 54266 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #88706: <==uncertain_firing== 83772 (pos)
                    (when (and (not (at_d_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #90150: <==negation-removal== 83772 (pos)
                    (when (and (not_at_d_p7))
                          (not (Pd_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #13815: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #21441: <==closure== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #39739: <==closure== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51722: <==closure== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #71229: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #74118: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #76208: <==closure== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #87258: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #19381: <==negation-removal== 21441 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #20529: <==negation-removal== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #24819: <==uncertain_firing== 76208 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #34797: <==negation-removal== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #45320: <==uncertain_firing== 39739 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #47536: <==negation-removal== 76208 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48499: <==negation-removal== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #52805: <==negation-removal== 39739 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #55830: <==negation-removal== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59638: <==uncertain_firing== 71229 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61220: <==uncertain_firing== 21441 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #68068: <==uncertain_firing== 87258 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #70593: <==uncertain_firing== 74118 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71518: <==uncertain_firing== 13815 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #86889: <==negation-removal== 51722 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #90218: <==uncertain_firing== 51722 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #13815: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #21441: <==closure== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #39739: <==closure== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51722: <==closure== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #71229: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #74118: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #76208: <==closure== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #87258: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #19381: <==negation-removal== 21441 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #20529: <==negation-removal== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #24819: <==uncertain_firing== 76208 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #34797: <==negation-removal== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #45320: <==uncertain_firing== 39739 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #47536: <==negation-removal== 76208 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48499: <==negation-removal== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #52805: <==negation-removal== 39739 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #55830: <==negation-removal== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59638: <==uncertain_firing== 71229 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61220: <==uncertain_firing== 21441 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #68068: <==uncertain_firing== 87258 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #70593: <==uncertain_firing== 74118 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71518: <==uncertain_firing== 13815 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #86889: <==negation-removal== 51722 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #90218: <==uncertain_firing== 51722 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #13815: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #21441: <==closure== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #39739: <==closure== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51722: <==closure== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #71229: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #74118: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #76208: <==closure== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #87258: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #19381: <==negation-removal== 21441 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #20529: <==negation-removal== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #24819: <==uncertain_firing== 76208 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #34797: <==negation-removal== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #45320: <==uncertain_firing== 39739 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #47536: <==negation-removal== 76208 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48499: <==negation-removal== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #52805: <==negation-removal== 39739 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #55830: <==negation-removal== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59638: <==uncertain_firing== 71229 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61220: <==uncertain_firing== 21441 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #68068: <==uncertain_firing== 87258 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #70593: <==uncertain_firing== 74118 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71518: <==uncertain_firing== 13815 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #86889: <==negation-removal== 51722 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #90218: <==uncertain_firing== 51722 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #13815: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #21441: <==closure== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #39739: <==closure== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #51722: <==closure== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #71229: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #74118: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #76208: <==closure== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #87258: origin
                    (when (and (not_at_d_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #19381: <==negation-removal== 21441 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #20529: <==negation-removal== 74118 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #24819: <==uncertain_firing== 76208 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #34797: <==negation-removal== 13815 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #45320: <==uncertain_firing== 39739 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #47536: <==negation-removal== 76208 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #48499: <==negation-removal== 87258 (pos)
                    (when (and (not_at_d_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #52805: <==negation-removal== 39739 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #55830: <==negation-removal== 71229 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #59638: <==uncertain_firing== 71229 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61220: <==uncertain_firing== 21441 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #68068: <==uncertain_firing== 87258 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Pd_survivorat_s_p8)))

                    ; #70593: <==uncertain_firing== 74118 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71518: <==uncertain_firing== 13815 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #86889: <==negation-removal== 51722 (pos)
                    (when (and (not_at_d_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #90218: <==uncertain_firing== 51722 (pos)
                    (when (and (not (at_d_p8)))
                          (not (Bd_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #34180: <==closure== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42791: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44598: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #53982: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66391: <==closure== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #68688: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #72119: <==closure== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86119: <==closure== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #18652: <==negation-removal== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #33077: <==negation-removal== 72119 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39262: <==uncertain_firing== 66391 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39295: <==uncertain_firing== 42791 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40424: <==uncertain_firing== 68688 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #47751: <==uncertain_firing== 53982 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48196: <==negation-removal== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64948: <==negation-removal== 66391 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66358: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66913: <==negation-removal== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #68488: <==uncertain_firing== 34180 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73907: <==uncertain_firing== 86119 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #74673: <==negation-removal== 86119 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82830: <==negation-removal== 34180 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #90294: <==negation-removal== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #91022: <==uncertain_firing== 44598 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #34180: <==closure== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42791: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44598: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #53982: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66391: <==closure== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #68688: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #72119: <==closure== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86119: <==closure== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #18652: <==negation-removal== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #33077: <==negation-removal== 72119 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39262: <==uncertain_firing== 66391 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39295: <==uncertain_firing== 42791 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40424: <==uncertain_firing== 68688 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #47751: <==uncertain_firing== 53982 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48196: <==negation-removal== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64948: <==negation-removal== 66391 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66358: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66913: <==negation-removal== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #68488: <==uncertain_firing== 34180 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73907: <==uncertain_firing== 86119 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #74673: <==negation-removal== 86119 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82830: <==negation-removal== 34180 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #90294: <==negation-removal== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #91022: <==uncertain_firing== 44598 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #34180: <==closure== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42791: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44598: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #53982: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66391: <==closure== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #68688: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #72119: <==closure== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86119: <==closure== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #18652: <==negation-removal== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #33077: <==negation-removal== 72119 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39262: <==uncertain_firing== 66391 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39295: <==uncertain_firing== 42791 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40424: <==uncertain_firing== 68688 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #47751: <==uncertain_firing== 53982 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48196: <==negation-removal== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64948: <==negation-removal== 66391 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66358: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66913: <==negation-removal== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #68488: <==uncertain_firing== 34180 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73907: <==uncertain_firing== 86119 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #74673: <==negation-removal== 86119 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82830: <==negation-removal== 34180 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #90294: <==negation-removal== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #91022: <==uncertain_firing== 44598 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action badcomm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #34180: <==closure== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42791: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #44598: origin
                    (when (and (not_at_d_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #53982: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #66391: <==closure== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #68688: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #72119: <==closure== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #86119: <==closure== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #18652: <==negation-removal== 44598 (pos)
                    (when (and (not_at_d_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #33077: <==negation-removal== 72119 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #39262: <==uncertain_firing== 66391 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #39295: <==uncertain_firing== 42791 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #40424: <==uncertain_firing== 68688 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #47751: <==uncertain_firing== 53982 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48196: <==negation-removal== 53982 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #64948: <==negation-removal== 66391 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66358: <==uncertain_firing== 72119 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #66913: <==negation-removal== 42791 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #68488: <==uncertain_firing== 34180 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #73907: <==uncertain_firing== 86119 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #74673: <==negation-removal== 86119 (pos)
                    (when (and (not_at_d_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #82830: <==negation-removal== 34180 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #90294: <==negation-removal== 68688 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #91022: <==uncertain_firing== 44598 (pos)
                    (when (and (not (at_d_p9)))
                          (not (Pd_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #29065: origin
                    (Ba_survivorat_s_p1)

                    ; #30287: origin
                    (Bd_survivorat_s_p1)

                    ; #31909: <==closure== 66084 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33099: origin
                    (Bc_survivorat_s_p1)

                    ; #38227: <==closure== 30287 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66084: origin
                    (Bb_survivorat_s_p1)

                    ; #68077: <==closure== 33099 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86194: <==closure== 29065 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22822: <==negation-removal== 33099 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #33065: <==negation-removal== 68077 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #33757: <==negation-removal== 30287 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #37022: <==negation-removal== 31909 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55201: <==negation-removal== 38227 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #65546: <==negation-removal== 86194 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78586: <==negation-removal== 66084 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #79905: <==negation-removal== 29065 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #29065: origin
                    (Ba_survivorat_s_p1)

                    ; #30287: origin
                    (Bd_survivorat_s_p1)

                    ; #31909: <==closure== 66084 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33099: origin
                    (Bc_survivorat_s_p1)

                    ; #38227: <==closure== 30287 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66084: origin
                    (Bb_survivorat_s_p1)

                    ; #68077: <==closure== 33099 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86194: <==closure== 29065 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22822: <==negation-removal== 33099 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #33065: <==negation-removal== 68077 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #33757: <==negation-removal== 30287 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #37022: <==negation-removal== 31909 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55201: <==negation-removal== 38227 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #65546: <==negation-removal== 86194 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78586: <==negation-removal== 66084 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #79905: <==negation-removal== 29065 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #29065: origin
                    (Ba_survivorat_s_p1)

                    ; #30287: origin
                    (Bd_survivorat_s_p1)

                    ; #31909: <==closure== 66084 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33099: origin
                    (Bc_survivorat_s_p1)

                    ; #38227: <==closure== 30287 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66084: origin
                    (Bb_survivorat_s_p1)

                    ; #68077: <==closure== 33099 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86194: <==closure== 29065 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22822: <==negation-removal== 33099 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #33065: <==negation-removal== 68077 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #33757: <==negation-removal== 30287 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #37022: <==negation-removal== 31909 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55201: <==negation-removal== 38227 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #65546: <==negation-removal== 86194 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78586: <==negation-removal== 66084 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #79905: <==negation-removal== 29065 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_d_s
        :precondition (and (at_d_p1)
                           (Bd_survivorat_s_p1)
                           (Pd_survivorat_s_p1))
        :effect (and
                    ; #29065: origin
                    (Ba_survivorat_s_p1)

                    ; #30287: origin
                    (Bd_survivorat_s_p1)

                    ; #31909: <==closure== 66084 (pos)
                    (Pb_survivorat_s_p1)

                    ; #33099: origin
                    (Bc_survivorat_s_p1)

                    ; #38227: <==closure== 30287 (pos)
                    (Pd_survivorat_s_p1)

                    ; #66084: origin
                    (Bb_survivorat_s_p1)

                    ; #68077: <==closure== 33099 (pos)
                    (Pc_survivorat_s_p1)

                    ; #86194: <==closure== 29065 (pos)
                    (Pa_survivorat_s_p1)

                    ; #22822: <==negation-removal== 33099 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #33065: <==negation-removal== 68077 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #33757: <==negation-removal== 30287 (pos)
                    (not (Pd_not_survivorat_s_p1))

                    ; #37022: <==negation-removal== 31909 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #55201: <==negation-removal== 38227 (pos)
                    (not (Bd_not_survivorat_s_p1))

                    ; #65546: <==negation-removal== 86194 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #78586: <==negation-removal== 66084 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #79905: <==negation-removal== 29065 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #10285: <==closure== 15361 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15361: origin
                    (Bb_survivorat_s_p2)

                    ; #23183: <==closure== 39975 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23660: <==closure== 62798 (pos)
                    (Pd_survivorat_s_p2)

                    ; #39975: origin
                    (Bc_survivorat_s_p2)

                    ; #43761: origin
                    (Ba_survivorat_s_p2)

                    ; #62798: origin
                    (Bd_survivorat_s_p2)

                    ; #98900: <==closure== 43761 (pos)
                    (Pa_survivorat_s_p2)

                    ; #12872: <==negation-removal== 15361 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #13828: <==negation-removal== 43761 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26794: <==negation-removal== 23660 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #44263: <==negation-removal== 10285 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71119: <==negation-removal== 39975 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87873: <==negation-removal== 98900 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #91669: <==negation-removal== 62798 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96710: <==negation-removal== 23183 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (at_b_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #10285: <==closure== 15361 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15361: origin
                    (Bb_survivorat_s_p2)

                    ; #23183: <==closure== 39975 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23660: <==closure== 62798 (pos)
                    (Pd_survivorat_s_p2)

                    ; #39975: origin
                    (Bc_survivorat_s_p2)

                    ; #43761: origin
                    (Ba_survivorat_s_p2)

                    ; #62798: origin
                    (Bd_survivorat_s_p2)

                    ; #98900: <==closure== 43761 (pos)
                    (Pa_survivorat_s_p2)

                    ; #12872: <==negation-removal== 15361 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #13828: <==negation-removal== 43761 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26794: <==negation-removal== 23660 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #44263: <==negation-removal== 10285 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71119: <==negation-removal== 39975 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87873: <==negation-removal== 98900 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #91669: <==negation-removal== 62798 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96710: <==negation-removal== 23183 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #10285: <==closure== 15361 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15361: origin
                    (Bb_survivorat_s_p2)

                    ; #23183: <==closure== 39975 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23660: <==closure== 62798 (pos)
                    (Pd_survivorat_s_p2)

                    ; #39975: origin
                    (Bc_survivorat_s_p2)

                    ; #43761: origin
                    (Ba_survivorat_s_p2)

                    ; #62798: origin
                    (Bd_survivorat_s_p2)

                    ; #98900: <==closure== 43761 (pos)
                    (Pa_survivorat_s_p2)

                    ; #12872: <==negation-removal== 15361 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #13828: <==negation-removal== 43761 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26794: <==negation-removal== 23660 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #44263: <==negation-removal== 10285 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71119: <==negation-removal== 39975 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87873: <==negation-removal== 98900 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #91669: <==negation-removal== 62798 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96710: <==negation-removal== 23183 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_d_s
        :precondition (and (Bd_survivorat_s_p2)
                           (at_d_p2)
                           (Pd_survivorat_s_p2))
        :effect (and
                    ; #10285: <==closure== 15361 (pos)
                    (Pb_survivorat_s_p2)

                    ; #15361: origin
                    (Bb_survivorat_s_p2)

                    ; #23183: <==closure== 39975 (pos)
                    (Pc_survivorat_s_p2)

                    ; #23660: <==closure== 62798 (pos)
                    (Pd_survivorat_s_p2)

                    ; #39975: origin
                    (Bc_survivorat_s_p2)

                    ; #43761: origin
                    (Ba_survivorat_s_p2)

                    ; #62798: origin
                    (Bd_survivorat_s_p2)

                    ; #98900: <==closure== 43761 (pos)
                    (Pa_survivorat_s_p2)

                    ; #12872: <==negation-removal== 15361 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #13828: <==negation-removal== 43761 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #26794: <==negation-removal== 23660 (pos)
                    (not (Bd_not_survivorat_s_p2))

                    ; #44263: <==negation-removal== 10285 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #71119: <==negation-removal== 39975 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #87873: <==negation-removal== 98900 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #91669: <==negation-removal== 62798 (pos)
                    (not (Pd_not_survivorat_s_p2))

                    ; #96710: <==negation-removal== 23183 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (at_a_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #12619: origin
                    (Bc_survivorat_s_p3)

                    ; #13736: <==closure== 25107 (pos)
                    (Pb_survivorat_s_p3)

                    ; #14633: <==closure== 22854 (pos)
                    (Pd_survivorat_s_p3)

                    ; #22854: origin
                    (Bd_survivorat_s_p3)

                    ; #25107: origin
                    (Bb_survivorat_s_p3)

                    ; #49286: <==closure== 59222 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57184: <==closure== 12619 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59222: origin
                    (Ba_survivorat_s_p3)

                    ; #14472: <==negation-removal== 59222 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22846: <==negation-removal== 57184 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44557: <==negation-removal== 25107 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44799: <==negation-removal== 14633 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #50003: <==negation-removal== 22854 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69358: <==negation-removal== 12619 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74440: <==negation-removal== 13736 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 49286 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #12619: origin
                    (Bc_survivorat_s_p3)

                    ; #13736: <==closure== 25107 (pos)
                    (Pb_survivorat_s_p3)

                    ; #14633: <==closure== 22854 (pos)
                    (Pd_survivorat_s_p3)

                    ; #22854: origin
                    (Bd_survivorat_s_p3)

                    ; #25107: origin
                    (Bb_survivorat_s_p3)

                    ; #49286: <==closure== 59222 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57184: <==closure== 12619 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59222: origin
                    (Ba_survivorat_s_p3)

                    ; #14472: <==negation-removal== 59222 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22846: <==negation-removal== 57184 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44557: <==negation-removal== 25107 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44799: <==negation-removal== 14633 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #50003: <==negation-removal== 22854 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69358: <==negation-removal== 12619 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74440: <==negation-removal== 13736 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 49286 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12619: origin
                    (Bc_survivorat_s_p3)

                    ; #13736: <==closure== 25107 (pos)
                    (Pb_survivorat_s_p3)

                    ; #14633: <==closure== 22854 (pos)
                    (Pd_survivorat_s_p3)

                    ; #22854: origin
                    (Bd_survivorat_s_p3)

                    ; #25107: origin
                    (Bb_survivorat_s_p3)

                    ; #49286: <==closure== 59222 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57184: <==closure== 12619 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59222: origin
                    (Ba_survivorat_s_p3)

                    ; #14472: <==negation-removal== 59222 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22846: <==negation-removal== 57184 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44557: <==negation-removal== 25107 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44799: <==negation-removal== 14633 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #50003: <==negation-removal== 22854 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69358: <==negation-removal== 12619 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74440: <==negation-removal== 13736 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 49286 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_d_s
        :precondition (and (Bd_survivorat_s_p3)
                           (at_d_p3)
                           (Pd_survivorat_s_p3))
        :effect (and
                    ; #12619: origin
                    (Bc_survivorat_s_p3)

                    ; #13736: <==closure== 25107 (pos)
                    (Pb_survivorat_s_p3)

                    ; #14633: <==closure== 22854 (pos)
                    (Pd_survivorat_s_p3)

                    ; #22854: origin
                    (Bd_survivorat_s_p3)

                    ; #25107: origin
                    (Bb_survivorat_s_p3)

                    ; #49286: <==closure== 59222 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57184: <==closure== 12619 (pos)
                    (Pc_survivorat_s_p3)

                    ; #59222: origin
                    (Ba_survivorat_s_p3)

                    ; #14472: <==negation-removal== 59222 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #22846: <==negation-removal== 57184 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #44557: <==negation-removal== 25107 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #44799: <==negation-removal== 14633 (pos)
                    (not (Bd_not_survivorat_s_p3))

                    ; #50003: <==negation-removal== 22854 (pos)
                    (not (Pd_not_survivorat_s_p3))

                    ; #69358: <==negation-removal== 12619 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #74440: <==negation-removal== 13736 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #91077: <==negation-removal== 49286 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #11324: origin
                    (Ba_survivorat_s_p4)

                    ; #51485: origin
                    (Bc_survivorat_s_p4)

                    ; #53625: <==closure== 70140 (pos)
                    (Pb_survivorat_s_p4)

                    ; #68653: origin
                    (Bd_survivorat_s_p4)

                    ; #70140: origin
                    (Bb_survivorat_s_p4)

                    ; #72726: <==closure== 11324 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75642: <==closure== 51485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #75761: <==closure== 68653 (pos)
                    (Pd_survivorat_s_p4)

                    ; #29037: <==negation-removal== 11324 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36688: <==negation-removal== 53625 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37258: <==negation-removal== 70140 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38899: <==negation-removal== 75642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62098: <==negation-removal== 51485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69545: <==negation-removal== 72726 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74002: <==negation-removal== 75761 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #82983: <==negation-removal== 68653 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #11324: origin
                    (Ba_survivorat_s_p4)

                    ; #51485: origin
                    (Bc_survivorat_s_p4)

                    ; #53625: <==closure== 70140 (pos)
                    (Pb_survivorat_s_p4)

                    ; #68653: origin
                    (Bd_survivorat_s_p4)

                    ; #70140: origin
                    (Bb_survivorat_s_p4)

                    ; #72726: <==closure== 11324 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75642: <==closure== 51485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #75761: <==closure== 68653 (pos)
                    (Pd_survivorat_s_p4)

                    ; #29037: <==negation-removal== 11324 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36688: <==negation-removal== 53625 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37258: <==negation-removal== 70140 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38899: <==negation-removal== 75642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62098: <==negation-removal== 51485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69545: <==negation-removal== 72726 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74002: <==negation-removal== 75761 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #82983: <==negation-removal== 68653 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #11324: origin
                    (Ba_survivorat_s_p4)

                    ; #51485: origin
                    (Bc_survivorat_s_p4)

                    ; #53625: <==closure== 70140 (pos)
                    (Pb_survivorat_s_p4)

                    ; #68653: origin
                    (Bd_survivorat_s_p4)

                    ; #70140: origin
                    (Bb_survivorat_s_p4)

                    ; #72726: <==closure== 11324 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75642: <==closure== 51485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #75761: <==closure== 68653 (pos)
                    (Pd_survivorat_s_p4)

                    ; #29037: <==negation-removal== 11324 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36688: <==negation-removal== 53625 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37258: <==negation-removal== 70140 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38899: <==negation-removal== 75642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62098: <==negation-removal== 51485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69545: <==negation-removal== 72726 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74002: <==negation-removal== 75761 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #82983: <==negation-removal== 68653 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p4_d_s
        :precondition (and (Pd_survivorat_s_p4)
                           (at_d_p4)
                           (Bd_survivorat_s_p4))
        :effect (and
                    ; #11324: origin
                    (Ba_survivorat_s_p4)

                    ; #51485: origin
                    (Bc_survivorat_s_p4)

                    ; #53625: <==closure== 70140 (pos)
                    (Pb_survivorat_s_p4)

                    ; #68653: origin
                    (Bd_survivorat_s_p4)

                    ; #70140: origin
                    (Bb_survivorat_s_p4)

                    ; #72726: <==closure== 11324 (pos)
                    (Pa_survivorat_s_p4)

                    ; #75642: <==closure== 51485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #75761: <==closure== 68653 (pos)
                    (Pd_survivorat_s_p4)

                    ; #29037: <==negation-removal== 11324 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36688: <==negation-removal== 53625 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #37258: <==negation-removal== 70140 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #38899: <==negation-removal== 75642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #62098: <==negation-removal== 51485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69545: <==negation-removal== 72726 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #74002: <==negation-removal== 75761 (pos)
                    (not (Bd_not_survivorat_s_p4))

                    ; #82983: <==negation-removal== 68653 (pos)
                    (not (Pd_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #16469: <==closure== 90236 (pos)
                    (Pa_survivorat_s_p5)

                    ; #25053: <==closure== 28517 (pos)
                    (Pc_survivorat_s_p5)

                    ; #28517: origin
                    (Bc_survivorat_s_p5)

                    ; #30777: origin
                    (Bb_survivorat_s_p5)

                    ; #75862: <==closure== 30777 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84479: <==closure== 86615 (pos)
                    (Pd_survivorat_s_p5)

                    ; #86615: origin
                    (Bd_survivorat_s_p5)

                    ; #90236: origin
                    (Ba_survivorat_s_p5)

                    ; #10101: <==negation-removal== 90236 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #15204: <==negation-removal== 16469 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #15267: <==negation-removal== 84479 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #57173: <==negation-removal== 30777 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60476: <==negation-removal== 25053 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66508: <==negation-removal== 86615 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #86705: <==negation-removal== 28517 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89050: <==negation-removal== 75862 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #16469: <==closure== 90236 (pos)
                    (Pa_survivorat_s_p5)

                    ; #25053: <==closure== 28517 (pos)
                    (Pc_survivorat_s_p5)

                    ; #28517: origin
                    (Bc_survivorat_s_p5)

                    ; #30777: origin
                    (Bb_survivorat_s_p5)

                    ; #75862: <==closure== 30777 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84479: <==closure== 86615 (pos)
                    (Pd_survivorat_s_p5)

                    ; #86615: origin
                    (Bd_survivorat_s_p5)

                    ; #90236: origin
                    (Ba_survivorat_s_p5)

                    ; #10101: <==negation-removal== 90236 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #15204: <==negation-removal== 16469 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #15267: <==negation-removal== 84479 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #57173: <==negation-removal== 30777 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60476: <==negation-removal== 25053 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66508: <==negation-removal== 86615 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #86705: <==negation-removal== 28517 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89050: <==negation-removal== 75862 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #16469: <==closure== 90236 (pos)
                    (Pa_survivorat_s_p5)

                    ; #25053: <==closure== 28517 (pos)
                    (Pc_survivorat_s_p5)

                    ; #28517: origin
                    (Bc_survivorat_s_p5)

                    ; #30777: origin
                    (Bb_survivorat_s_p5)

                    ; #75862: <==closure== 30777 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84479: <==closure== 86615 (pos)
                    (Pd_survivorat_s_p5)

                    ; #86615: origin
                    (Bd_survivorat_s_p5)

                    ; #90236: origin
                    (Ba_survivorat_s_p5)

                    ; #10101: <==negation-removal== 90236 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #15204: <==negation-removal== 16469 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #15267: <==negation-removal== 84479 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #57173: <==negation-removal== 30777 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60476: <==negation-removal== 25053 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66508: <==negation-removal== 86615 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #86705: <==negation-removal== 28517 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89050: <==negation-removal== 75862 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_d_s
        :precondition (and (Pd_survivorat_s_p5)
                           (Bd_survivorat_s_p5)
                           (at_d_p5))
        :effect (and
                    ; #16469: <==closure== 90236 (pos)
                    (Pa_survivorat_s_p5)

                    ; #25053: <==closure== 28517 (pos)
                    (Pc_survivorat_s_p5)

                    ; #28517: origin
                    (Bc_survivorat_s_p5)

                    ; #30777: origin
                    (Bb_survivorat_s_p5)

                    ; #75862: <==closure== 30777 (pos)
                    (Pb_survivorat_s_p5)

                    ; #84479: <==closure== 86615 (pos)
                    (Pd_survivorat_s_p5)

                    ; #86615: origin
                    (Bd_survivorat_s_p5)

                    ; #90236: origin
                    (Ba_survivorat_s_p5)

                    ; #10101: <==negation-removal== 90236 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #15204: <==negation-removal== 16469 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #15267: <==negation-removal== 84479 (pos)
                    (not (Bd_not_survivorat_s_p5))

                    ; #57173: <==negation-removal== 30777 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #60476: <==negation-removal== 25053 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66508: <==negation-removal== 86615 (pos)
                    (not (Pd_not_survivorat_s_p5))

                    ; #86705: <==negation-removal== 28517 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #89050: <==negation-removal== 75862 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #23441: origin
                    (Bc_survivorat_s_p6)

                    ; #28863: <==closure== 31478 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31478: origin
                    (Bd_survivorat_s_p6)

                    ; #31540: origin
                    (Bb_survivorat_s_p6)

                    ; #56240: <==closure== 23441 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60702: <==closure== 31540 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76534: <==closure== 77443 (pos)
                    (Pa_survivorat_s_p6)

                    ; #77443: origin
                    (Ba_survivorat_s_p6)

                    ; #16911: <==negation-removal== 77443 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #39136: <==negation-removal== 23441 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41791: <==negation-removal== 28863 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #57713: <==negation-removal== 31540 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65191: <==negation-removal== 60702 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83691: <==negation-removal== 56240 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86487: <==negation-removal== 31478 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #91455: <==negation-removal== 76534 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #23441: origin
                    (Bc_survivorat_s_p6)

                    ; #28863: <==closure== 31478 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31478: origin
                    (Bd_survivorat_s_p6)

                    ; #31540: origin
                    (Bb_survivorat_s_p6)

                    ; #56240: <==closure== 23441 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60702: <==closure== 31540 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76534: <==closure== 77443 (pos)
                    (Pa_survivorat_s_p6)

                    ; #77443: origin
                    (Ba_survivorat_s_p6)

                    ; #16911: <==negation-removal== 77443 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #39136: <==negation-removal== 23441 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41791: <==negation-removal== 28863 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #57713: <==negation-removal== 31540 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65191: <==negation-removal== 60702 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83691: <==negation-removal== 56240 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86487: <==negation-removal== 31478 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #91455: <==negation-removal== 76534 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #23441: origin
                    (Bc_survivorat_s_p6)

                    ; #28863: <==closure== 31478 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31478: origin
                    (Bd_survivorat_s_p6)

                    ; #31540: origin
                    (Bb_survivorat_s_p6)

                    ; #56240: <==closure== 23441 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60702: <==closure== 31540 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76534: <==closure== 77443 (pos)
                    (Pa_survivorat_s_p6)

                    ; #77443: origin
                    (Ba_survivorat_s_p6)

                    ; #16911: <==negation-removal== 77443 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #39136: <==negation-removal== 23441 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41791: <==negation-removal== 28863 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #57713: <==negation-removal== 31540 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65191: <==negation-removal== 60702 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83691: <==negation-removal== 56240 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86487: <==negation-removal== 31478 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #91455: <==negation-removal== 76534 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_d_s
        :precondition (and (Bd_survivorat_s_p6)
                           (Pd_survivorat_s_p6)
                           (at_d_p6))
        :effect (and
                    ; #23441: origin
                    (Bc_survivorat_s_p6)

                    ; #28863: <==closure== 31478 (pos)
                    (Pd_survivorat_s_p6)

                    ; #31478: origin
                    (Bd_survivorat_s_p6)

                    ; #31540: origin
                    (Bb_survivorat_s_p6)

                    ; #56240: <==closure== 23441 (pos)
                    (Pc_survivorat_s_p6)

                    ; #60702: <==closure== 31540 (pos)
                    (Pb_survivorat_s_p6)

                    ; #76534: <==closure== 77443 (pos)
                    (Pa_survivorat_s_p6)

                    ; #77443: origin
                    (Ba_survivorat_s_p6)

                    ; #16911: <==negation-removal== 77443 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #39136: <==negation-removal== 23441 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #41791: <==negation-removal== 28863 (pos)
                    (not (Bd_not_survivorat_s_p6))

                    ; #57713: <==negation-removal== 31540 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65191: <==negation-removal== 60702 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #83691: <==negation-removal== 56240 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #86487: <==negation-removal== 31478 (pos)
                    (not (Pd_not_survivorat_s_p6))

                    ; #91455: <==negation-removal== 76534 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10336: <==closure== 31690 (pos)
                    (Pb_survivorat_s_p7)

                    ; #25091: origin
                    (Ba_survivorat_s_p7)

                    ; #31690: origin
                    (Bb_survivorat_s_p7)

                    ; #59450: origin
                    (Bc_survivorat_s_p7)

                    ; #63465: <==closure== 25091 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72770: origin
                    (Bd_survivorat_s_p7)

                    ; #76306: <==closure== 59450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89925: <==closure== 72770 (pos)
                    (Pd_survivorat_s_p7)

                    ; #22159: <==negation-removal== 31690 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31184: <==negation-removal== 89925 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #43431: <==negation-removal== 10336 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #47041: <==negation-removal== 59450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #63410: <==negation-removal== 72770 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #69103: <==negation-removal== 63465 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #77863: <==negation-removal== 76306 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78954: <==negation-removal== 25091 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10336: <==closure== 31690 (pos)
                    (Pb_survivorat_s_p7)

                    ; #25091: origin
                    (Ba_survivorat_s_p7)

                    ; #31690: origin
                    (Bb_survivorat_s_p7)

                    ; #59450: origin
                    (Bc_survivorat_s_p7)

                    ; #63465: <==closure== 25091 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72770: origin
                    (Bd_survivorat_s_p7)

                    ; #76306: <==closure== 59450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89925: <==closure== 72770 (pos)
                    (Pd_survivorat_s_p7)

                    ; #22159: <==negation-removal== 31690 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31184: <==negation-removal== 89925 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #43431: <==negation-removal== 10336 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #47041: <==negation-removal== 59450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #63410: <==negation-removal== 72770 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #69103: <==negation-removal== 63465 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #77863: <==negation-removal== 76306 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78954: <==negation-removal== 25091 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #10336: <==closure== 31690 (pos)
                    (Pb_survivorat_s_p7)

                    ; #25091: origin
                    (Ba_survivorat_s_p7)

                    ; #31690: origin
                    (Bb_survivorat_s_p7)

                    ; #59450: origin
                    (Bc_survivorat_s_p7)

                    ; #63465: <==closure== 25091 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72770: origin
                    (Bd_survivorat_s_p7)

                    ; #76306: <==closure== 59450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89925: <==closure== 72770 (pos)
                    (Pd_survivorat_s_p7)

                    ; #22159: <==negation-removal== 31690 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31184: <==negation-removal== 89925 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #43431: <==negation-removal== 10336 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #47041: <==negation-removal== 59450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #63410: <==negation-removal== 72770 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #69103: <==negation-removal== 63465 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #77863: <==negation-removal== 76306 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78954: <==negation-removal== 25091 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_d_s
        :precondition (and (at_d_p7)
                           (Bd_survivorat_s_p7)
                           (Pd_survivorat_s_p7))
        :effect (and
                    ; #10336: <==closure== 31690 (pos)
                    (Pb_survivorat_s_p7)

                    ; #25091: origin
                    (Ba_survivorat_s_p7)

                    ; #31690: origin
                    (Bb_survivorat_s_p7)

                    ; #59450: origin
                    (Bc_survivorat_s_p7)

                    ; #63465: <==closure== 25091 (pos)
                    (Pa_survivorat_s_p7)

                    ; #72770: origin
                    (Bd_survivorat_s_p7)

                    ; #76306: <==closure== 59450 (pos)
                    (Pc_survivorat_s_p7)

                    ; #89925: <==closure== 72770 (pos)
                    (Pd_survivorat_s_p7)

                    ; #22159: <==negation-removal== 31690 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #31184: <==negation-removal== 89925 (pos)
                    (not (Bd_not_survivorat_s_p7))

                    ; #43431: <==negation-removal== 10336 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #47041: <==negation-removal== 59450 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #63410: <==negation-removal== 72770 (pos)
                    (not (Pd_not_survivorat_s_p7))

                    ; #69103: <==negation-removal== 63465 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #77863: <==negation-removal== 76306 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #78954: <==negation-removal== 25091 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #54045: <==closure== 64288 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64288: origin
                    (Bd_survivorat_s_p8)

                    ; #66578: origin
                    (Bc_survivorat_s_p8)

                    ; #66882: <==closure== 66578 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77950: origin
                    (Ba_survivorat_s_p8)

                    ; #85229: origin
                    (Bb_survivorat_s_p8)

                    ; #86733: <==closure== 85229 (pos)
                    (Pb_survivorat_s_p8)

                    ; #97576: <==closure== 77950 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10099: <==negation-removal== 97576 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38877: <==negation-removal== 54045 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #41297: <==negation-removal== 85229 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42152: <==negation-removal== 86733 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51919: <==negation-removal== 64288 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #77018: <==negation-removal== 66578 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #79365: <==negation-removal== 77950 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88396: <==negation-removal== 66882 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #54045: <==closure== 64288 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64288: origin
                    (Bd_survivorat_s_p8)

                    ; #66578: origin
                    (Bc_survivorat_s_p8)

                    ; #66882: <==closure== 66578 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77950: origin
                    (Ba_survivorat_s_p8)

                    ; #85229: origin
                    (Bb_survivorat_s_p8)

                    ; #86733: <==closure== 85229 (pos)
                    (Pb_survivorat_s_p8)

                    ; #97576: <==closure== 77950 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10099: <==negation-removal== 97576 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38877: <==negation-removal== 54045 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #41297: <==negation-removal== 85229 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42152: <==negation-removal== 86733 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51919: <==negation-removal== 64288 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #77018: <==negation-removal== 66578 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #79365: <==negation-removal== 77950 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88396: <==negation-removal== 66882 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #54045: <==closure== 64288 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64288: origin
                    (Bd_survivorat_s_p8)

                    ; #66578: origin
                    (Bc_survivorat_s_p8)

                    ; #66882: <==closure== 66578 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77950: origin
                    (Ba_survivorat_s_p8)

                    ; #85229: origin
                    (Bb_survivorat_s_p8)

                    ; #86733: <==closure== 85229 (pos)
                    (Pb_survivorat_s_p8)

                    ; #97576: <==closure== 77950 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10099: <==negation-removal== 97576 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38877: <==negation-removal== 54045 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #41297: <==negation-removal== 85229 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42152: <==negation-removal== 86733 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51919: <==negation-removal== 64288 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #77018: <==negation-removal== 66578 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #79365: <==negation-removal== 77950 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88396: <==negation-removal== 66882 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_d_s
        :precondition (and (Bd_survivorat_s_p8)
                           (Pd_survivorat_s_p8)
                           (at_d_p8))
        :effect (and
                    ; #54045: <==closure== 64288 (pos)
                    (Pd_survivorat_s_p8)

                    ; #64288: origin
                    (Bd_survivorat_s_p8)

                    ; #66578: origin
                    (Bc_survivorat_s_p8)

                    ; #66882: <==closure== 66578 (pos)
                    (Pc_survivorat_s_p8)

                    ; #77950: origin
                    (Ba_survivorat_s_p8)

                    ; #85229: origin
                    (Bb_survivorat_s_p8)

                    ; #86733: <==closure== 85229 (pos)
                    (Pb_survivorat_s_p8)

                    ; #97576: <==closure== 77950 (pos)
                    (Pa_survivorat_s_p8)

                    ; #10099: <==negation-removal== 97576 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #38877: <==negation-removal== 54045 (pos)
                    (not (Bd_not_survivorat_s_p8))

                    ; #41297: <==negation-removal== 85229 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #42152: <==negation-removal== 86733 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51919: <==negation-removal== 64288 (pos)
                    (not (Pd_not_survivorat_s_p8))

                    ; #77018: <==negation-removal== 66578 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #79365: <==negation-removal== 77950 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #88396: <==negation-removal== 66882 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #15191: <==closure== 70650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #19579: <==closure== 76297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51646: <==closure== 76849 (pos)
                    (Pb_survivorat_s_p9)

                    ; #70650: origin
                    (Bc_survivorat_s_p9)

                    ; #76297: origin
                    (Ba_survivorat_s_p9)

                    ; #76849: origin
                    (Bb_survivorat_s_p9)

                    ; #81609: origin
                    (Bd_survivorat_s_p9)

                    ; #83316: <==closure== 81609 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12716: <==negation-removal== 51646 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39672: <==negation-removal== 83316 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #44326: <==negation-removal== 76849 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58780: <==negation-removal== 76297 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62093: <==negation-removal== 81609 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88412: <==negation-removal== 70650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #88990: <==negation-removal== 15191 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #92099: <==negation-removal== 19579 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #15191: <==closure== 70650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #19579: <==closure== 76297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51646: <==closure== 76849 (pos)
                    (Pb_survivorat_s_p9)

                    ; #70650: origin
                    (Bc_survivorat_s_p9)

                    ; #76297: origin
                    (Ba_survivorat_s_p9)

                    ; #76849: origin
                    (Bb_survivorat_s_p9)

                    ; #81609: origin
                    (Bd_survivorat_s_p9)

                    ; #83316: <==closure== 81609 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12716: <==negation-removal== 51646 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39672: <==negation-removal== 83316 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #44326: <==negation-removal== 76849 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58780: <==negation-removal== 76297 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62093: <==negation-removal== 81609 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88412: <==negation-removal== 70650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #88990: <==negation-removal== 15191 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #92099: <==negation-removal== 19579 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #15191: <==closure== 70650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #19579: <==closure== 76297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51646: <==closure== 76849 (pos)
                    (Pb_survivorat_s_p9)

                    ; #70650: origin
                    (Bc_survivorat_s_p9)

                    ; #76297: origin
                    (Ba_survivorat_s_p9)

                    ; #76849: origin
                    (Bb_survivorat_s_p9)

                    ; #81609: origin
                    (Bd_survivorat_s_p9)

                    ; #83316: <==closure== 81609 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12716: <==negation-removal== 51646 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39672: <==negation-removal== 83316 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #44326: <==negation-removal== 76849 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58780: <==negation-removal== 76297 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62093: <==negation-removal== 81609 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88412: <==negation-removal== 70650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #88990: <==negation-removal== 15191 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #92099: <==negation-removal== 19579 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_d_s
        :precondition (and (at_d_p9)
                           (Bd_survivorat_s_p9)
                           (Pd_survivorat_s_p9))
        :effect (and
                    ; #15191: <==closure== 70650 (pos)
                    (Pc_survivorat_s_p9)

                    ; #19579: <==closure== 76297 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51646: <==closure== 76849 (pos)
                    (Pb_survivorat_s_p9)

                    ; #70650: origin
                    (Bc_survivorat_s_p9)

                    ; #76297: origin
                    (Ba_survivorat_s_p9)

                    ; #76849: origin
                    (Bb_survivorat_s_p9)

                    ; #81609: origin
                    (Bd_survivorat_s_p9)

                    ; #83316: <==closure== 81609 (pos)
                    (Pd_survivorat_s_p9)

                    ; #12716: <==negation-removal== 51646 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #39672: <==negation-removal== 83316 (pos)
                    (not (Bd_not_survivorat_s_p9))

                    ; #44326: <==negation-removal== 76849 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #58780: <==negation-removal== 76297 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62093: <==negation-removal== 81609 (pos)
                    (not (Pd_not_survivorat_s_p9))

                    ; #88412: <==negation-removal== 70650 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #88990: <==negation-removal== 15191 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #92099: <==negation-removal== 19579 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #46526: origin
                    (at_a_p3)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #82653: origin
                    (not_at_a_p1)

                    ; #86196: origin
                    (at_a_p4)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #61537: origin
                    (at_a_p6)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #67888: origin
                    (at_a_p7)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #54599: origin
                    (at_a_p8)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #54384: origin
                    (at_a_p9)

                    ; #82653: origin
                    (not_at_a_p1)

                    ; #39001: <==negation-removal== 82653 (pos)
                    (not (at_a_p1))

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #42957: origin
                    (not_at_a_p2)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #42957: origin
                    (not_at_a_p2)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #46526: origin
                    (at_a_p3)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #86196: origin
                    (at_a_p4)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #42957: origin
                    (not_at_a_p2)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #61537: origin
                    (at_a_p6)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #67888: origin
                    (at_a_p7)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #54599: origin
                    (at_a_p8)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #42957: origin
                    (not_at_a_p2)

                    ; #54384: origin
                    (at_a_p9)

                    ; #27409: <==negation-removal== 42957 (pos)
                    (not (at_a_p2))

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #46526: origin
                    (at_a_p3)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #54691: origin
                    (not_at_a_p3)

                    ; #86196: origin
                    (at_a_p4)

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #54691: origin
                    (not_at_a_p3)

                    ; #61537: origin
                    (at_a_p6)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #54691: origin
                    (not_at_a_p3)

                    ; #67888: origin
                    (at_a_p7)

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #54599: origin
                    (at_a_p8)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #54384: origin
                    (at_a_p9)

                    ; #54691: origin
                    (not_at_a_p3)

                    ; #46526: <==negation-removal== 54691 (pos)
                    (not (at_a_p3))

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #46526: origin
                    (at_a_p3)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #60220: origin
                    (not_at_a_p4)

                    ; #86196: origin
                    (at_a_p4)

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #60220: origin
                    (not_at_a_p4)

                    ; #61537: origin
                    (at_a_p6)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #60220: origin
                    (not_at_a_p4)

                    ; #67888: origin
                    (at_a_p7)

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #54599: origin
                    (at_a_p8)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #54384: origin
                    (at_a_p9)

                    ; #60220: origin
                    (not_at_a_p4)

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))

                    ; #86196: <==negation-removal== 60220 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #39001: origin
                    (at_a_p1)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #27468: origin
                    (not_at_a_p5)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #46526: origin
                    (at_a_p3)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #86196: origin
                    (at_a_p4)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #39313: origin
                    (at_a_p5)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #61537: origin
                    (at_a_p6)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #67888: origin
                    (at_a_p7)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #54599: origin
                    (at_a_p8)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #27468: origin
                    (not_at_a_p5)

                    ; #54384: origin
                    (at_a_p9)

                    ; #39313: <==negation-removal== 27468 (pos)
                    (not (at_a_p5))

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #41267: origin
                    (not_at_a_p6)

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #41267: origin
                    (not_at_a_p6)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #46526: origin
                    (at_a_p3)

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #86196: origin
                    (at_a_p4)

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #41267: origin
                    (not_at_a_p6)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #61537: origin
                    (at_a_p6)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #67888: origin
                    (at_a_p7)

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #54599: origin
                    (at_a_p8)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #41267: origin
                    (not_at_a_p6)

                    ; #54384: origin
                    (at_a_p9)

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))

                    ; #61537: <==negation-removal== 41267 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #46526: origin
                    (at_a_p3)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #83997: origin
                    (not_at_a_p7)

                    ; #86196: origin
                    (at_a_p4)

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #61537: origin
                    (at_a_p6)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #67888: origin
                    (at_a_p7)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #54599: origin
                    (at_a_p8)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #54384: origin
                    (at_a_p9)

                    ; #83997: origin
                    (not_at_a_p7)

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))

                    ; #67888: <==negation-removal== 83997 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #39001: origin
                    (at_a_p1)

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #27409: origin
                    (at_a_p2)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #46526: origin
                    (at_a_p3)

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #86196: origin
                    (at_a_p4)

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #39313: origin
                    (at_a_p5)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #61537: origin
                    (at_a_p6)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #67888: origin
                    (at_a_p7)

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #54599: origin
                    (at_a_p8)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #17728: origin
                    (not_at_a_p8)

                    ; #54384: origin
                    (at_a_p9)

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))

                    ; #54599: <==negation-removal== 17728 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #39001: origin
                    (at_a_p1)

                    ; #47039: origin
                    (not_at_a_p9)

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))

                    ; #82653: <==negation-removal== 39001 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #27409: origin
                    (at_a_p2)

                    ; #47039: origin
                    (not_at_a_p9)

                    ; #42957: <==negation-removal== 27409 (pos)
                    (not (not_at_a_p2))

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #46526: origin
                    (at_a_p3)

                    ; #47039: origin
                    (not_at_a_p9)

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))

                    ; #54691: <==negation-removal== 46526 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #47039: origin
                    (not_at_a_p9)

                    ; #86196: origin
                    (at_a_p4)

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))

                    ; #60220: <==negation-removal== 86196 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #39313: origin
                    (at_a_p5)

                    ; #47039: origin
                    (not_at_a_p9)

                    ; #27468: <==negation-removal== 39313 (pos)
                    (not (not_at_a_p5))

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #47039: origin
                    (not_at_a_p9)

                    ; #61537: origin
                    (at_a_p6)

                    ; #41267: <==negation-removal== 61537 (pos)
                    (not (not_at_a_p6))

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #47039: origin
                    (not_at_a_p9)

                    ; #67888: origin
                    (at_a_p7)

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))

                    ; #83997: <==negation-removal== 67888 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #47039: origin
                    (not_at_a_p9)

                    ; #54599: origin
                    (at_a_p8)

                    ; #17728: <==negation-removal== 54599 (pos)
                    (not (not_at_a_p8))

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #47039: origin
                    (not_at_a_p9)

                    ; #54384: origin
                    (at_a_p9)

                    ; #47039: <==negation-removal== 54384 (pos)
                    (not (not_at_a_p9))

                    ; #54384: <==negation-removal== 47039 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #72588: origin
                    (at_b_p1)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #70139: origin
                    (at_b_p5)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #44046: origin
                    (at_b_p6)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #64641: origin
                    (at_b_p7)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #86228: origin
                    (not_at_b_p1)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #68915: origin
                    (at_b_p9)

                    ; #86228: origin
                    (not_at_b_p1)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #72588: <==negation-removal== 86228 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #52018: origin
                    (not_at_b_p2)

                    ; #72588: origin
                    (at_b_p1)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #52018: origin
                    (not_at_b_p2)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #52018: origin
                    (not_at_b_p2)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #52018: origin
                    (not_at_b_p2)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #52018: origin
                    (not_at_b_p2)

                    ; #70139: origin
                    (at_b_p5)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #44046: origin
                    (at_b_p6)

                    ; #52018: origin
                    (not_at_b_p2)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #52018: origin
                    (not_at_b_p2)

                    ; #64641: origin
                    (at_b_p7)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #52018: origin
                    (not_at_b_p2)

                    ; #91514: origin
                    (at_b_p8)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #52018: origin
                    (not_at_b_p2)

                    ; #68915: origin
                    (at_b_p9)

                    ; #18132: <==negation-removal== 52018 (pos)
                    (not (at_b_p2))

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #72588: origin
                    (at_b_p1)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #30415: origin
                    (not_at_b_p3)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #30415: origin
                    (not_at_b_p3)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #30415: origin
                    (not_at_b_p3)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #70139: origin
                    (at_b_p5)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #44046: origin
                    (at_b_p6)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #64641: origin
                    (at_b_p7)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #91514: origin
                    (at_b_p8)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #30415: origin
                    (not_at_b_p3)

                    ; #68915: origin
                    (at_b_p9)

                    ; #19006: <==negation-removal== 30415 (pos)
                    (not (at_b_p3))

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #70321: origin
                    (not_at_b_p4)

                    ; #72588: origin
                    (at_b_p1)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #70139: origin
                    (at_b_p5)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #44046: origin
                    (at_b_p6)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #64641: origin
                    (at_b_p7)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #70321: origin
                    (not_at_b_p4)

                    ; #91514: origin
                    (at_b_p8)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #68915: origin
                    (at_b_p9)

                    ; #70321: origin
                    (not_at_b_p4)

                    ; #14543: <==negation-removal== 70321 (pos)
                    (not (at_b_p4))

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #55996: origin
                    (not_at_b_p5)

                    ; #72588: origin
                    (at_b_p1)

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #55996: origin
                    (not_at_b_p5)

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #55996: origin
                    (not_at_b_p5)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #55996: origin
                    (not_at_b_p5)

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #55996: origin
                    (not_at_b_p5)

                    ; #70139: origin
                    (at_b_p5)

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #44046: origin
                    (at_b_p6)

                    ; #55996: origin
                    (not_at_b_p5)

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #55996: origin
                    (not_at_b_p5)

                    ; #64641: origin
                    (at_b_p7)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #55996: origin
                    (not_at_b_p5)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #55996: origin
                    (not_at_b_p5)

                    ; #68915: origin
                    (at_b_p9)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #70139: <==negation-removal== 55996 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #72588: origin
                    (at_b_p1)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #70139: origin
                    (at_b_p5)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #44046: origin
                    (at_b_p6)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #64641: origin
                    (at_b_p7)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #76111: origin
                    (not_at_b_p6)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #68915: origin
                    (at_b_p9)

                    ; #76111: origin
                    (not_at_b_p6)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #44046: <==negation-removal== 76111 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #72588: origin
                    (at_b_p1)

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #29650: origin
                    (not_at_b_p7)

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #29650: origin
                    (not_at_b_p7)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #29650: origin
                    (not_at_b_p7)

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #70139: origin
                    (at_b_p5)

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #44046: origin
                    (at_b_p6)

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #64641: origin
                    (at_b_p7)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #29650: origin
                    (not_at_b_p7)

                    ; #68915: origin
                    (at_b_p9)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #64641: <==negation-removal== 29650 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #72588: origin
                    (at_b_p1)

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #40095: origin
                    (not_at_b_p8)

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #40095: origin
                    (not_at_b_p8)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #40095: origin
                    (not_at_b_p8)

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #70139: origin
                    (at_b_p5)

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #44046: origin
                    (at_b_p6)

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #64641: origin
                    (at_b_p7)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #40095: origin
                    (not_at_b_p8)

                    ; #68915: origin
                    (at_b_p9)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #91514: <==negation-removal== 40095 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #72588: origin
                    (at_b_p1)

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))

                    ; #86228: <==negation-removal== 72588 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18132: origin
                    (at_b_p2)

                    ; #21083: origin
                    (not_at_b_p9)

                    ; #52018: <==negation-removal== 18132 (pos)
                    (not (not_at_b_p2))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #19006: origin
                    (at_b_p3)

                    ; #21083: origin
                    (not_at_b_p9)

                    ; #30415: <==negation-removal== 19006 (pos)
                    (not (not_at_b_p3))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #14543: origin
                    (at_b_p4)

                    ; #21083: origin
                    (not_at_b_p9)

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))

                    ; #70321: <==negation-removal== 14543 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #70139: origin
                    (at_b_p5)

                    ; #55996: <==negation-removal== 70139 (pos)
                    (not (not_at_b_p5))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #44046: origin
                    (at_b_p6)

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))

                    ; #76111: <==negation-removal== 44046 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #64641: origin
                    (at_b_p7)

                    ; #29650: <==negation-removal== 64641 (pos)
                    (not (not_at_b_p7))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #91514: origin
                    (at_b_p8)

                    ; #40095: <==negation-removal== 91514 (pos)
                    (not (not_at_b_p8))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #21083: origin
                    (not_at_b_p9)

                    ; #68915: origin
                    (at_b_p9)

                    ; #21083: <==negation-removal== 68915 (pos)
                    (not (not_at_b_p9))

                    ; #68915: <==negation-removal== 21083 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #60905: origin
                    (not_at_c_p1)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #60905: origin
                    (not_at_c_p1)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #60905: origin
                    (not_at_c_p1)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #60905: origin
                    (not_at_c_p1)

                    ; #78189: origin
                    (at_c_p4)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #60905: origin
                    (not_at_c_p1)

                    ; #89058: origin
                    (at_c_p5)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #60905: origin
                    (not_at_c_p1)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #60905: origin
                    (not_at_c_p1)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #45029: origin
                    (at_c_p8)

                    ; #60905: origin
                    (not_at_c_p1)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #60905: origin
                    (not_at_c_p1)

                    ; #64205: origin
                    (at_c_p9)

                    ; #22335: <==negation-removal== 60905 (pos)
                    (not (at_c_p1))

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #78189: origin
                    (at_c_p4)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #89058: origin
                    (at_c_p5)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #69136: origin
                    (at_c_p7)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #45029: origin
                    (at_c_p8)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #64205: origin
                    (at_c_p9)

                    ; #91201: origin
                    (not_at_c_p2)

                    ; #18917: <==negation-removal== 91201 (pos)
                    (not (at_c_p2))

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #25361: origin
                    (not_at_c_p3)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #25361: origin
                    (not_at_c_p3)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #36231: origin
                    (at_c_p3)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #78189: origin
                    (at_c_p4)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #89058: origin
                    (at_c_p5)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #31543: origin
                    (at_c_p6)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #45029: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #25361: origin
                    (not_at_c_p3)

                    ; #64205: origin
                    (at_c_p9)

                    ; #36231: <==negation-removal== 25361 (pos)
                    (not (at_c_p3))

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #38207: origin
                    (not_at_c_p4)

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #38207: origin
                    (not_at_c_p4)

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #38207: origin
                    (not_at_c_p4)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #38207: origin
                    (not_at_c_p4)

                    ; #78189: origin
                    (at_c_p4)

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #38207: origin
                    (not_at_c_p4)

                    ; #89058: origin
                    (at_c_p5)

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #38207: origin
                    (not_at_c_p4)

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #38207: origin
                    (not_at_c_p4)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #38207: origin
                    (not_at_c_p4)

                    ; #45029: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #38207: origin
                    (not_at_c_p4)

                    ; #64205: origin
                    (at_c_p9)

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))

                    ; #78189: <==negation-removal== 38207 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #48892: origin
                    (not_at_c_p5)

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #48892: origin
                    (not_at_c_p5)

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #48892: origin
                    (not_at_c_p5)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #48892: origin
                    (not_at_c_p5)

                    ; #78189: origin
                    (at_c_p4)

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #48892: origin
                    (not_at_c_p5)

                    ; #89058: origin
                    (at_c_p5)

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #48892: origin
                    (not_at_c_p5)

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #48892: origin
                    (not_at_c_p5)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #45029: origin
                    (at_c_p8)

                    ; #48892: origin
                    (not_at_c_p5)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #48892: origin
                    (not_at_c_p5)

                    ; #64205: origin
                    (at_c_p9)

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))

                    ; #89058: <==negation-removal== 48892 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #71132: origin
                    (not_at_c_p6)

                    ; #78189: origin
                    (at_c_p4)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #71132: origin
                    (not_at_c_p6)

                    ; #89058: origin
                    (at_c_p5)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #69136: origin
                    (at_c_p7)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #45029: origin
                    (at_c_p8)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #64205: origin
                    (at_c_p9)

                    ; #71132: origin
                    (not_at_c_p6)

                    ; #31543: <==negation-removal== 71132 (pos)
                    (not (at_c_p6))

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #22335: origin
                    (at_c_p1)

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #22169: origin
                    (not_at_c_p7)

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #36231: origin
                    (at_c_p3)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #78189: origin
                    (at_c_p4)

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #89058: origin
                    (at_c_p5)

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #31543: origin
                    (at_c_p6)

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #45029: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #22169: origin
                    (not_at_c_p7)

                    ; #64205: origin
                    (at_c_p9)

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))

                    ; #69136: <==negation-removal== 22169 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #22335: origin
                    (at_c_p1)

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #20318: origin
                    (not_at_c_p8)

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #36231: origin
                    (at_c_p3)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #78189: origin
                    (at_c_p4)

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #89058: origin
                    (at_c_p5)

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #31543: origin
                    (at_c_p6)

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #45029: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #20318: origin
                    (not_at_c_p8)

                    ; #64205: origin
                    (at_c_p9)

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))

                    ; #45029: <==negation-removal== 20318 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #22335: origin
                    (at_c_p1)

                    ; #40141: origin
                    (not_at_c_p9)

                    ; #60905: <==negation-removal== 22335 (pos)
                    (not (not_at_c_p1))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #18917: origin
                    (at_c_p2)

                    ; #40141: origin
                    (not_at_c_p9)

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))

                    ; #91201: <==negation-removal== 18917 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #36231: origin
                    (at_c_p3)

                    ; #40141: origin
                    (not_at_c_p9)

                    ; #25361: <==negation-removal== 36231 (pos)
                    (not (not_at_c_p3))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #40141: origin
                    (not_at_c_p9)

                    ; #78189: origin
                    (at_c_p4)

                    ; #38207: <==negation-removal== 78189 (pos)
                    (not (not_at_c_p4))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #40141: origin
                    (not_at_c_p9)

                    ; #89058: origin
                    (at_c_p5)

                    ; #48892: <==negation-removal== 89058 (pos)
                    (not (not_at_c_p5))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #31543: origin
                    (at_c_p6)

                    ; #40141: origin
                    (not_at_c_p9)

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))

                    ; #71132: <==negation-removal== 31543 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #40141: origin
                    (not_at_c_p9)

                    ; #69136: origin
                    (at_c_p7)

                    ; #22169: <==negation-removal== 69136 (pos)
                    (not (not_at_c_p7))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #40141: origin
                    (not_at_c_p9)

                    ; #45029: origin
                    (at_c_p8)

                    ; #20318: <==negation-removal== 45029 (pos)
                    (not (not_at_c_p8))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #40141: origin
                    (not_at_c_p9)

                    ; #64205: origin
                    (at_c_p9)

                    ; #40141: <==negation-removal== 64205 (pos)
                    (not (not_at_c_p9))

                    ; #64205: <==negation-removal== 40141 (pos)
                    (not (at_c_p9))))

    (:action move_d_p1_p1
        :precondition (and (at_d_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p1_p2
        :precondition (and (at_d_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_d_p1))
        :effect (and
                    ; #73720: origin
                    (not_at_d_p1)

                    ; #97909: origin
                    (at_d_p3)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p1_p4
        :precondition (and (at_d_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #73720: origin
                    (not_at_d_p1)

                    ; #74584: origin
                    (at_d_p4)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_d_p1))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))))

    (:action move_d_p1_p6
        :precondition (and (at_d_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_d_p1))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p1_p8
        :precondition (and (at_d_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_d_p1))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #73720: origin
                    (not_at_d_p1)

                    ; #30568: <==negation-removal== 73720 (pos)
                    (not (at_d_p1))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p2_p1
        :precondition (and (at_d_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p2_p2
        :precondition (and (at_d_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_d_p2))
        :effect (and
                    ; #84463: origin
                    (not_at_d_p2)

                    ; #97909: origin
                    (at_d_p3)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_d_p2))
        :effect (and
                    ; #74584: origin
                    (at_d_p4)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p5
        :precondition (and (at_d_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))))

    (:action move_d_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_d_p2))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p2_p7
        :precondition (and (at_d_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_d_p2))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p2_p9
        :precondition (and (at_d_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #84463: origin
                    (not_at_d_p2)

                    ; #49675: <==negation-removal== 84463 (pos)
                    (not (at_d_p2))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_d_p3))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_d_p3))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p3
        :precondition (and (at_d_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #52981: origin
                    (not_at_d_p3)

                    ; #97909: origin
                    (at_d_p3)

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_d_p3))
        :effect (and
                    ; #52981: origin
                    (not_at_d_p3)

                    ; #74584: origin
                    (at_d_p4)

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_d_p3))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_d_p3))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_d_p3))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p8
        :precondition (and (at_d_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #52981: origin
                    (not_at_d_p3)

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_d_p3))
        :effect (and
                    ; #52981: origin
                    (not_at_d_p3)

                    ; #58124: origin
                    (at_d_p9)

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))

                    ; #97909: <==negation-removal== 52981 (pos)
                    (not (at_d_p3))))

    (:action move_d_p4_p1
        :precondition (and (at_d_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #41415: origin
                    (not_at_d_p4)

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_d_p4))
        :effect (and
                    ; #41415: origin
                    (not_at_d_p4)

                    ; #49675: origin
                    (at_d_p2)

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p4_p3
        :precondition (and (at_d_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #41415: origin
                    (not_at_d_p4)

                    ; #97909: origin
                    (at_d_p3)

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_d_p4))
        :effect (and
                    ; #41415: origin
                    (not_at_d_p4)

                    ; #74584: origin
                    (at_d_p4)

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p5
        :precondition (and (at_d_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #41415: origin
                    (not_at_d_p4)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_d_p4))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #41415: origin
                    (not_at_d_p4)

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_d_p4))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #41415: origin
                    (not_at_d_p4)

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p8
        :precondition (and (at_d_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #41415: origin
                    (not_at_d_p4)

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))))

    (:action move_d_p4_p9
        :precondition (and (at_d_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #41415: origin
                    (not_at_d_p4)

                    ; #58124: origin
                    (at_d_p9)

                    ; #74584: <==negation-removal== 41415 (pos)
                    (not (at_d_p4))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #30568: origin
                    (at_d_p1)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #49675: origin
                    (at_d_p2)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p5_p3
        :precondition (and (at_d_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #97909: origin
                    (at_d_p3)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #74584: origin
                    (at_d_p4)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #38697: origin
                    (at_d_p5)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))))

    (:action move_d_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #31820: origin
                    (at_d_p6)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #26576: origin
                    (at_d_p7)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p5_p8
        :precondition (and (at_d_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #38965: origin
                    (at_d_p8)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_d_p5))
        :effect (and
                    ; #10305: origin
                    (not_at_d_p5)

                    ; #58124: origin
                    (at_d_p9)

                    ; #38697: <==negation-removal== 10305 (pos)
                    (not (at_d_p5))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_d_p6))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_d_p6))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p6_p3
        :precondition (and (at_d_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #73104: origin
                    (not_at_d_p6)

                    ; #97909: origin
                    (at_d_p3)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p6_p4
        :precondition (and (at_d_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #73104: origin
                    (not_at_d_p6)

                    ; #74584: origin
                    (at_d_p4)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_d_p6))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))))

    (:action move_d_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_d_p6))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_d_p6))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_d_p6))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p6_p9
        :precondition (and (at_d_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #73104: origin
                    (not_at_d_p6)

                    ; #31820: <==negation-removal== 73104 (pos)
                    (not (at_d_p6))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_d_p7))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_d_p7))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_d_p7))
        :effect (and
                    ; #62143: origin
                    (not_at_d_p7)

                    ; #97909: origin
                    (at_d_p3)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p7_p4
        :precondition (and (at_d_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #62143: origin
                    (not_at_d_p7)

                    ; #74584: origin
                    (at_d_p4)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_d_p7))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))))

    (:action move_d_p7_p6
        :precondition (and (at_d_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_d_p7))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_d_p7))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_d_p7))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #62143: origin
                    (not_at_d_p7)

                    ; #26576: <==negation-removal== 62143 (pos)
                    (not (at_d_p7))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_d_p8))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_d_p8))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p8_p3
        :precondition (and (at_d_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #60503: origin
                    (not_at_d_p8)

                    ; #97909: origin
                    (at_d_p3)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))))

    (:action move_d_p8_p4
        :precondition (and (at_d_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60503: origin
                    (not_at_d_p8)

                    ; #74584: origin
                    (at_d_p4)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))))

    (:action move_d_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_d_p8))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))))

    (:action move_d_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_d_p8))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_d_p8))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_d_p8))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_d_p8))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #60503: origin
                    (not_at_d_p8)

                    ; #38965: <==negation-removal== 60503 (pos)
                    (not (at_d_p8))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action move_d_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_d_p9))
        :effect (and
                    ; #30568: origin
                    (at_d_p1)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #73720: <==negation-removal== 30568 (pos)
                    (not (not_at_d_p1))))

    (:action move_d_p9_p2
        :precondition (and (at_d_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #49675: origin
                    (at_d_p2)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #84463: <==negation-removal== 49675 (pos)
                    (not (not_at_d_p2))))

    (:action move_d_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_d_p9))
        :effect (and
                    ; #84084: origin
                    (not_at_d_p9)

                    ; #97909: origin
                    (at_d_p3)

                    ; #52981: <==negation-removal== 97909 (pos)
                    (not (not_at_d_p3))

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p4
        :precondition (and (at_d_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #74584: origin
                    (at_d_p4)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #41415: <==negation-removal== 74584 (pos)
                    (not (not_at_d_p4))

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p5
        :precondition (and (at_d_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #38697: origin
                    (at_d_p5)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #10305: <==negation-removal== 38697 (pos)
                    (not (not_at_d_p5))

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))))

    (:action move_d_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_d_p9))
        :effect (and
                    ; #31820: origin
                    (at_d_p6)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #73104: <==negation-removal== 31820 (pos)
                    (not (not_at_d_p6))))

    (:action move_d_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_d_p9))
        :effect (and
                    ; #26576: origin
                    (at_d_p7)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #62143: <==negation-removal== 26576 (pos)
                    (not (not_at_d_p7))))

    (:action move_d_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_d_p9))
        :effect (and
                    ; #38965: origin
                    (at_d_p8)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #60503: <==negation-removal== 38965 (pos)
                    (not (not_at_d_p8))))

    (:action move_d_p9_p9
        :precondition (and (at_d_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #58124: origin
                    (at_d_p9)

                    ; #84084: origin
                    (not_at_d_p9)

                    ; #58124: <==negation-removal== 84084 (pos)
                    (not (at_d_p9))

                    ; #84084: <==negation-removal== 58124 (pos)
                    (not (not_at_d_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #31050: <==commonly_known== 33277 (pos)
                    (Bd_checked_p1)

                    ; #33277: origin
                    (checked_p1)

                    ; #37122: <==commonly_known== 90190 (neg)
                    (Pc_checked_p1)

                    ; #41072: <==closure== 62813 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #41098: <==commonly_known== 33277 (pos)
                    (Bb_checked_p1)

                    ; #46450: <==commonly_known== 90190 (neg)
                    (Pa_checked_p1)

                    ; #55957: <==closure== 73362 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #62704: <==commonly_known== 33277 (pos)
                    (Ba_checked_p1)

                    ; #62813: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #63154: <==commonly_known== 90190 (neg)
                    (Pb_checked_p1)

                    ; #64950: <==commonly_known== 90190 (neg)
                    (Pd_checked_p1)

                    ; #73362: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #82293: <==commonly_known== 33277 (pos)
                    (Bc_checked_p1)

                    ; #14928: <==negation-removal== 64950 (pos)
                    (not (Bd_not_checked_p1))

                    ; #19684: <==negation-removal== 62704 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20779: <==negation-removal== 63154 (pos)
                    (not (Bb_not_checked_p1))

                    ; #25887: <==uncertain_firing== 62813 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #26168: <==negation-removal== 62813 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #31708: <==uncertain_firing== 55957 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #31842: <==negation-removal== 82293 (pos)
                    (not (Pc_not_checked_p1))

                    ; #38797: <==negation-removal== 37122 (pos)
                    (not (Bc_not_checked_p1))

                    ; #38927: <==negation-removal== 73362 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #43873: <==uncertain_firing== 41072 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #55078: <==negation-removal== 31050 (pos)
                    (not (Pd_not_checked_p1))

                    ; #59677: <==negation-removal== 46450 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65688: <==negation-removal== 55957 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #66415: <==negation-removal== 41072 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #72354: <==negation-removal== 41098 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77166: <==uncertain_firing== 73362 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #90190: <==negation-removal== 33277 (pos)
                    (not (not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11899: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #17070: <==commonly_known== 25645 (neg)
                    (Pc_checked_p2)

                    ; #28470: <==commonly_known== 51211 (pos)
                    (Ba_checked_p2)

                    ; #30877: <==closure== 89324 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #33821: <==commonly_known== 25645 (neg)
                    (Pd_checked_p2)

                    ; #36314: <==commonly_known== 25645 (neg)
                    (Pa_checked_p2)

                    ; #51211: origin
                    (checked_p2)

                    ; #51394: <==commonly_known== 25645 (neg)
                    (Pb_checked_p2)

                    ; #60285: <==commonly_known== 51211 (pos)
                    (Bb_checked_p2)

                    ; #62881: <==commonly_known== 51211 (pos)
                    (Bd_checked_p2)

                    ; #78693: <==commonly_known== 51211 (pos)
                    (Bc_checked_p2)

                    ; #80942: <==closure== 11899 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #89324: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #15598: <==negation-removal== 78693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #25391: <==negation-removal== 17070 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25645: <==negation-removal== 51211 (pos)
                    (not (not_checked_p2))

                    ; #27195: <==negation-removal== 30877 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #27740: <==uncertain_firing== 89324 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #27895: <==uncertain_firing== 30877 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #28272: <==negation-removal== 80942 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #32545: <==uncertain_firing== 80942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #33431: <==negation-removal== 33821 (pos)
                    (not (Bd_not_checked_p2))

                    ; #37899: <==negation-removal== 62881 (pos)
                    (not (Pd_not_checked_p2))

                    ; #45216: <==negation-removal== 36314 (pos)
                    (not (Ba_not_checked_p2))

                    ; #52833: <==negation-removal== 11899 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #56520: <==uncertain_firing== 11899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #68081: <==negation-removal== 51394 (pos)
                    (not (Bb_not_checked_p2))

                    ; #70114: <==negation-removal== 89324 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #81938: <==negation-removal== 28470 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82739: <==negation-removal== 60285 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12514: <==commonly_known== 42829 (neg)
                    (Pd_checked_p3)

                    ; #18661: <==commonly_known== 52615 (pos)
                    (Bb_checked_p3)

                    ; #20375: <==closure== 30823 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #26658: <==commonly_known== 52615 (pos)
                    (Bc_checked_p3)

                    ; #30823: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #32406: <==closure== 91667 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #46219: <==commonly_known== 42829 (neg)
                    (Pb_checked_p3)

                    ; #47608: <==commonly_known== 42829 (neg)
                    (Pc_checked_p3)

                    ; #52615: origin
                    (checked_p3)

                    ; #53822: <==commonly_known== 52615 (pos)
                    (Bd_checked_p3)

                    ; #60081: <==commonly_known== 42829 (neg)
                    (Pa_checked_p3)

                    ; #63045: <==commonly_known== 52615 (pos)
                    (Ba_checked_p3)

                    ; #91667: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #14237: <==negation-removal== 63045 (pos)
                    (not (Pa_not_checked_p3))

                    ; #31708: <==uncertain_firing== 30823 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #32543: <==negation-removal== 46219 (pos)
                    (not (Bb_not_checked_p3))

                    ; #33754: <==negation-removal== 32406 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #36761: <==negation-removal== 12514 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42829: <==negation-removal== 52615 (pos)
                    (not (not_checked_p3))

                    ; #44408: <==negation-removal== 30823 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #54908: <==uncertain_firing== 32406 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #55274: <==negation-removal== 18661 (pos)
                    (not (Pb_not_checked_p3))

                    ; #55581: <==negation-removal== 20375 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #58927: <==negation-removal== 91667 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #58949: <==negation-removal== 53822 (pos)
                    (not (Pd_not_checked_p3))

                    ; #59297: <==negation-removal== 47608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #66202: <==negation-removal== 26658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #78280: <==negation-removal== 60081 (pos)
                    (not (Ba_not_checked_p3))

                    ; #84052: <==uncertain_firing== 91667 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #90999: <==uncertain_firing== 20375 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11543: <==commonly_known== 90883 (pos)
                    (Bd_checked_p4)

                    ; #13449: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #24006: <==commonly_known== 42074 (neg)
                    (Pd_checked_p4)

                    ; #32323: <==commonly_known== 42074 (neg)
                    (Pb_checked_p4)

                    ; #42584: <==closure== 51977 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #45075: <==commonly_known== 42074 (neg)
                    (Pc_checked_p4)

                    ; #51977: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #52073: <==commonly_known== 90883 (pos)
                    (Bb_checked_p4)

                    ; #55852: <==commonly_known== 42074 (neg)
                    (Pa_checked_p4)

                    ; #70641: <==commonly_known== 90883 (pos)
                    (Bc_checked_p4)

                    ; #80181: <==closure== 13449 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #83215: <==commonly_known== 90883 (pos)
                    (Ba_checked_p4)

                    ; #90883: origin
                    (checked_p4)

                    ; #25053: <==negation-removal== 32323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30437: <==negation-removal== 42584 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #30737: <==negation-removal== 70641 (pos)
                    (not (Pc_not_checked_p4))

                    ; #31696: <==uncertain_firing== 42584 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #31990: <==uncertain_firing== 51977 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38079: <==negation-removal== 45075 (pos)
                    (not (Bc_not_checked_p4))

                    ; #38710: <==negation-removal== 80181 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #42074: <==negation-removal== 90883 (pos)
                    (not (not_checked_p4))

                    ; #42296: <==uncertain_firing== 13449 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44263: <==negation-removal== 13449 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #45512: <==uncertain_firing== 80181 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #46703: <==negation-removal== 52073 (pos)
                    (not (Pb_not_checked_p4))

                    ; #67105: <==negation-removal== 51977 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #75247: <==negation-removal== 24006 (pos)
                    (not (Bd_not_checked_p4))

                    ; #77279: <==negation-removal== 83215 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80400: <==negation-removal== 11543 (pos)
                    (not (Pd_not_checked_p4))

                    ; #81530: <==negation-removal== 55852 (pos)
                    (not (Ba_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11333: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #18925: origin
                    (checked_p5)

                    ; #35655: <==commonly_known== 18925 (pos)
                    (Bd_checked_p5)

                    ; #38779: <==closure== 60113 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #40495: <==closure== 11333 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #54223: <==commonly_known== 40682 (neg)
                    (Pd_checked_p5)

                    ; #55483: <==commonly_known== 18925 (pos)
                    (Bc_checked_p5)

                    ; #60113: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #69645: <==commonly_known== 18925 (pos)
                    (Bb_checked_p5)

                    ; #71736: <==commonly_known== 40682 (neg)
                    (Pc_checked_p5)

                    ; #84552: <==commonly_known== 18925 (pos)
                    (Ba_checked_p5)

                    ; #90445: <==commonly_known== 40682 (neg)
                    (Pa_checked_p5)

                    ; #92735: <==commonly_known== 40682 (neg)
                    (Pb_checked_p5)

                    ; #17090: <==negation-removal== 40495 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #17760: <==negation-removal== 11333 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #17982: <==negation-removal== 90445 (pos)
                    (not (Ba_not_checked_p5))

                    ; #18911: <==negation-removal== 92735 (pos)
                    (not (Bb_not_checked_p5))

                    ; #36100: <==uncertain_firing== 40495 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #37885: <==uncertain_firing== 11333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #40682: <==negation-removal== 18925 (pos)
                    (not (not_checked_p5))

                    ; #41396: <==uncertain_firing== 38779 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #45382: <==negation-removal== 84552 (pos)
                    (not (Pa_not_checked_p5))

                    ; #50292: <==negation-removal== 54223 (pos)
                    (not (Bd_not_checked_p5))

                    ; #59470: <==negation-removal== 35655 (pos)
                    (not (Pd_not_checked_p5))

                    ; #62190: <==negation-removal== 55483 (pos)
                    (not (Pc_not_checked_p5))

                    ; #64194: <==negation-removal== 71736 (pos)
                    (not (Bc_not_checked_p5))

                    ; #65520: <==negation-removal== 60113 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #66825: <==uncertain_firing== 60113 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #76644: <==negation-removal== 69645 (pos)
                    (not (Pb_not_checked_p5))

                    ; #80280: <==negation-removal== 38779 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16622: <==commonly_known== 49868 (pos)
                    (Bc_checked_p6)

                    ; #18971: <==commonly_known== 49868 (pos)
                    (Bd_checked_p6)

                    ; #19210: <==commonly_known== 83913 (neg)
                    (Pc_checked_p6)

                    ; #27115: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #32954: <==commonly_known== 83913 (neg)
                    (Pd_checked_p6)

                    ; #41110: <==commonly_known== 49868 (pos)
                    (Bb_checked_p6)

                    ; #49868: origin
                    (checked_p6)

                    ; #56199: <==closure== 61607 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #61607: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #66645: <==commonly_known== 49868 (pos)
                    (Ba_checked_p6)

                    ; #69919: <==commonly_known== 83913 (neg)
                    (Pa_checked_p6)

                    ; #70686: <==commonly_known== 83913 (neg)
                    (Pb_checked_p6)

                    ; #75042: <==closure== 27115 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #26197: <==uncertain_firing== 56199 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27271: <==negation-removal== 19210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29308: <==negation-removal== 70686 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30604: <==negation-removal== 41110 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31008: <==negation-removal== 18971 (pos)
                    (not (Pd_not_checked_p6))

                    ; #32564: <==negation-removal== 75042 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #36222: <==negation-removal== 61607 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #49803: <==uncertain_firing== 61607 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #51200: <==negation-removal== 56199 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #51298: <==negation-removal== 69919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52635: <==uncertain_firing== 27115 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #55544: <==negation-removal== 27115 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #61531: <==negation-removal== 66645 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67315: <==negation-removal== 16622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #77073: <==uncertain_firing== 75042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #81913: <==negation-removal== 32954 (pos)
                    (not (Bd_not_checked_p6))

                    ; #83913: <==negation-removal== 49868 (pos)
                    (not (not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11710: <==closure== 79329 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #30163: <==commonly_known== 77015 (neg)
                    (Pb_checked_p7)

                    ; #37468: <==closure== 87884 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #43572: <==commonly_known== 74556 (pos)
                    (Bb_checked_p7)

                    ; #47099: <==commonly_known== 77015 (neg)
                    (Pa_checked_p7)

                    ; #51830: <==commonly_known== 74556 (pos)
                    (Bc_checked_p7)

                    ; #53856: <==commonly_known== 74556 (pos)
                    (Bd_checked_p7)

                    ; #73360: <==commonly_known== 74556 (pos)
                    (Ba_checked_p7)

                    ; #74556: origin
                    (checked_p7)

                    ; #79329: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #87884: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #88420: <==commonly_known== 77015 (neg)
                    (Pc_checked_p7)

                    ; #89346: <==commonly_known== 77015 (neg)
                    (Pd_checked_p7)

                    ; #10044: <==negation-removal== 73360 (pos)
                    (not (Pa_not_checked_p7))

                    ; #15945: <==uncertain_firing== 87884 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #16547: <==uncertain_firing== 79329 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #27866: <==negation-removal== 30163 (pos)
                    (not (Bb_not_checked_p7))

                    ; #28949: <==negation-removal== 37468 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #43348: <==negation-removal== 89346 (pos)
                    (not (Bd_not_checked_p7))

                    ; #61414: <==negation-removal== 87884 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #71580: <==negation-removal== 79329 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #74187: <==negation-removal== 47099 (pos)
                    (not (Ba_not_checked_p7))

                    ; #76173: <==uncertain_firing== 37468 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #76604: <==negation-removal== 51830 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76697: <==negation-removal== 53856 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77015: <==negation-removal== 74556 (pos)
                    (not (not_checked_p7))

                    ; #78275: <==negation-removal== 88420 (pos)
                    (not (Bc_not_checked_p7))

                    ; #82610: <==uncertain_firing== 11710 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #90411: <==negation-removal== 11710 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #92071: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11455: <==commonly_known== 18894 (neg)
                    (Pd_checked_p8)

                    ; #20057: <==commonly_known== 65434 (pos)
                    (Bb_checked_p8)

                    ; #23383: <==commonly_known== 65434 (pos)
                    (Ba_checked_p8)

                    ; #28821: <==commonly_known== 18894 (neg)
                    (Pa_checked_p8)

                    ; #34079: <==commonly_known== 65434 (pos)
                    (Bd_checked_p8)

                    ; #34898: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #35989: <==closure== 86537 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #45136: <==commonly_known== 65434 (pos)
                    (Bc_checked_p8)

                    ; #49160: <==commonly_known== 18894 (neg)
                    (Pb_checked_p8)

                    ; #55425: <==commonly_known== 18894 (neg)
                    (Pc_checked_p8)

                    ; #65434: origin
                    (checked_p8)

                    ; #86537: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #89927: <==closure== 34898 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #12193: <==negation-removal== 45136 (pos)
                    (not (Pc_not_checked_p8))

                    ; #14090: <==negation-removal== 86537 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #17681: <==negation-removal== 89927 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #18894: <==negation-removal== 65434 (pos)
                    (not (not_checked_p8))

                    ; #23207: <==negation-removal== 55425 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25340: <==uncertain_firing== 86537 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #25601: <==negation-removal== 49160 (pos)
                    (not (Bb_not_checked_p8))

                    ; #26026: <==uncertain_firing== 35989 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #35838: <==negation-removal== 20057 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41841: <==negation-removal== 34079 (pos)
                    (not (Pd_not_checked_p8))

                    ; #55646: <==negation-removal== 35989 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #62781: <==uncertain_firing== 34898 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #65692: <==negation-removal== 34898 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #72887: <==uncertain_firing== 89927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #77220: <==negation-removal== 28821 (pos)
                    (not (Ba_not_checked_p8))

                    ; #86887: <==negation-removal== 23383 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88514: <==negation-removal== 11455 (pos)
                    (not (Bd_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13511: <==commonly_known== 44279 (pos)
                    (Bc_checked_p9)

                    ; #15356: <==commonly_known== 10659 (neg)
                    (Pc_checked_p9)

                    ; #17607: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #17911: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #20137: <==commonly_known== 44279 (pos)
                    (Ba_checked_p9)

                    ; #26382: <==commonly_known== 10659 (neg)
                    (Pb_checked_p9)

                    ; #26761: <==commonly_known== 10659 (neg)
                    (Pd_checked_p9)

                    ; #37077: <==commonly_known== 44279 (pos)
                    (Bb_checked_p9)

                    ; #44279: origin
                    (checked_p9)

                    ; #51216: <==commonly_known== 10659 (neg)
                    (Pa_checked_p9)

                    ; #72919: <==commonly_known== 44279 (pos)
                    (Bd_checked_p9)

                    ; #79862: <==closure== 17911 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #87139: <==closure== 17607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #10659: <==negation-removal== 44279 (pos)
                    (not (not_checked_p9))

                    ; #16791: <==negation-removal== 26382 (pos)
                    (not (Bb_not_checked_p9))

                    ; #17481: <==negation-removal== 17911 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #21919: <==negation-removal== 15356 (pos)
                    (not (Bc_not_checked_p9))

                    ; #24268: <==uncertain_firing== 17607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33503: <==negation-removal== 26761 (pos)
                    (not (Bd_not_checked_p9))

                    ; #37611: <==negation-removal== 51216 (pos)
                    (not (Ba_not_checked_p9))

                    ; #41341: <==negation-removal== 79862 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #59483: <==negation-removal== 37077 (pos)
                    (not (Pb_not_checked_p9))

                    ; #62237: <==uncertain_firing== 79862 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #70871: <==negation-removal== 72919 (pos)
                    (not (Pd_not_checked_p9))

                    ; #75157: <==uncertain_firing== 17911 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #78958: <==negation-removal== 17607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #81687: <==negation-removal== 20137 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83146: <==uncertain_firing== 87139 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88618: <==negation-removal== 87139 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #88671: <==negation-removal== 13511 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #19687: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #31050: <==commonly_known== 33277 (pos)
                    (Bd_checked_p1)

                    ; #31502: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #33277: origin
                    (checked_p1)

                    ; #37122: <==commonly_known== 90190 (neg)
                    (Pc_checked_p1)

                    ; #41098: <==commonly_known== 33277 (pos)
                    (Bb_checked_p1)

                    ; #46450: <==commonly_known== 90190 (neg)
                    (Pa_checked_p1)

                    ; #54556: <==closure== 19687 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #62704: <==commonly_known== 33277 (pos)
                    (Ba_checked_p1)

                    ; #63154: <==commonly_known== 90190 (neg)
                    (Pb_checked_p1)

                    ; #64950: <==commonly_known== 90190 (neg)
                    (Pd_checked_p1)

                    ; #79903: <==closure== 31502 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #82293: <==commonly_known== 33277 (pos)
                    (Bc_checked_p1)

                    ; #14803: <==uncertain_firing== 79903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #14928: <==negation-removal== 64950 (pos)
                    (not (Bd_not_checked_p1))

                    ; #19684: <==negation-removal== 62704 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20779: <==negation-removal== 63154 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21516: <==negation-removal== 54556 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #21641: <==negation-removal== 79903 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #31842: <==negation-removal== 82293 (pos)
                    (not (Pc_not_checked_p1))

                    ; #38797: <==negation-removal== 37122 (pos)
                    (not (Bc_not_checked_p1))

                    ; #41056: <==negation-removal== 19687 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #45370: <==uncertain_firing== 19687 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #50771: <==uncertain_firing== 31502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #53235: <==negation-removal== 31502 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #55078: <==negation-removal== 31050 (pos)
                    (not (Pd_not_checked_p1))

                    ; #59677: <==negation-removal== 46450 (pos)
                    (not (Ba_not_checked_p1))

                    ; #72354: <==negation-removal== 41098 (pos)
                    (not (Pb_not_checked_p1))

                    ; #81149: <==uncertain_firing== 54556 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #90190: <==negation-removal== 33277 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17070: <==commonly_known== 25645 (neg)
                    (Pc_checked_p2)

                    ; #26475: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #28470: <==commonly_known== 51211 (pos)
                    (Ba_checked_p2)

                    ; #33821: <==commonly_known== 25645 (neg)
                    (Pd_checked_p2)

                    ; #36314: <==commonly_known== 25645 (neg)
                    (Pa_checked_p2)

                    ; #51211: origin
                    (checked_p2)

                    ; #51394: <==commonly_known== 25645 (neg)
                    (Pb_checked_p2)

                    ; #60285: <==commonly_known== 51211 (pos)
                    (Bb_checked_p2)

                    ; #62715: <==closure== 75174 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #62881: <==commonly_known== 51211 (pos)
                    (Bd_checked_p2)

                    ; #67131: <==closure== 26475 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #75174: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #78693: <==commonly_known== 51211 (pos)
                    (Bc_checked_p2)

                    ; #15598: <==negation-removal== 78693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #15896: <==uncertain_firing== 75174 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #25391: <==negation-removal== 17070 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25645: <==negation-removal== 51211 (pos)
                    (not (not_checked_p2))

                    ; #26040: <==uncertain_firing== 26475 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27931: <==negation-removal== 62715 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #33431: <==negation-removal== 33821 (pos)
                    (not (Bd_not_checked_p2))

                    ; #37899: <==negation-removal== 62881 (pos)
                    (not (Pd_not_checked_p2))

                    ; #40010: <==negation-removal== 26475 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #41046: <==uncertain_firing== 62715 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #45216: <==negation-removal== 36314 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68081: <==negation-removal== 51394 (pos)
                    (not (Bb_not_checked_p2))

                    ; #78464: <==uncertain_firing== 67131 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #81938: <==negation-removal== 28470 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82739: <==negation-removal== 60285 (pos)
                    (not (Pb_not_checked_p2))

                    ; #90220: <==negation-removal== 75174 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #96741: <==negation-removal== 67131 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12514: <==commonly_known== 42829 (neg)
                    (Pd_checked_p3)

                    ; #14085: <==closure== 90339 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #18661: <==commonly_known== 52615 (pos)
                    (Bb_checked_p3)

                    ; #19257: <==closure== 63342 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #26658: <==commonly_known== 52615 (pos)
                    (Bc_checked_p3)

                    ; #46219: <==commonly_known== 42829 (neg)
                    (Pb_checked_p3)

                    ; #47608: <==commonly_known== 42829 (neg)
                    (Pc_checked_p3)

                    ; #52615: origin
                    (checked_p3)

                    ; #53822: <==commonly_known== 52615 (pos)
                    (Bd_checked_p3)

                    ; #60081: <==commonly_known== 42829 (neg)
                    (Pa_checked_p3)

                    ; #63045: <==commonly_known== 52615 (pos)
                    (Ba_checked_p3)

                    ; #63342: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #90339: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #13517: <==uncertain_firing== 14085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #14237: <==negation-removal== 63045 (pos)
                    (not (Pa_not_checked_p3))

                    ; #23488: <==uncertain_firing== 19257 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #26073: <==negation-removal== 63342 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #32543: <==negation-removal== 46219 (pos)
                    (not (Bb_not_checked_p3))

                    ; #36761: <==negation-removal== 12514 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42829: <==negation-removal== 52615 (pos)
                    (not (not_checked_p3))

                    ; #43867: <==negation-removal== 14085 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #55274: <==negation-removal== 18661 (pos)
                    (not (Pb_not_checked_p3))

                    ; #58949: <==negation-removal== 53822 (pos)
                    (not (Pd_not_checked_p3))

                    ; #59297: <==negation-removal== 47608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #66202: <==negation-removal== 26658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #69999: <==negation-removal== 90339 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78280: <==negation-removal== 60081 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78402: <==uncertain_firing== 90339 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #78538: <==uncertain_firing== 63342 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #85385: <==negation-removal== 19257 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11543: <==commonly_known== 90883 (pos)
                    (Bd_checked_p4)

                    ; #13446: <==closure== 85437 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #22703: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #24006: <==commonly_known== 42074 (neg)
                    (Pd_checked_p4)

                    ; #32323: <==commonly_known== 42074 (neg)
                    (Pb_checked_p4)

                    ; #45075: <==commonly_known== 42074 (neg)
                    (Pc_checked_p4)

                    ; #52073: <==commonly_known== 90883 (pos)
                    (Bb_checked_p4)

                    ; #55852: <==commonly_known== 42074 (neg)
                    (Pa_checked_p4)

                    ; #70641: <==commonly_known== 90883 (pos)
                    (Bc_checked_p4)

                    ; #74315: <==closure== 22703 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #83215: <==commonly_known== 90883 (pos)
                    (Ba_checked_p4)

                    ; #85437: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #90883: origin
                    (checked_p4)

                    ; #25053: <==negation-removal== 32323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #29756: <==negation-removal== 22703 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #30737: <==negation-removal== 70641 (pos)
                    (not (Pc_not_checked_p4))

                    ; #31353: <==uncertain_firing== 74315 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38079: <==negation-removal== 45075 (pos)
                    (not (Bc_not_checked_p4))

                    ; #42074: <==negation-removal== 90883 (pos)
                    (not (not_checked_p4))

                    ; #42426: <==uncertain_firing== 13446 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #46703: <==negation-removal== 52073 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56193: <==negation-removal== 13446 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #63300: <==negation-removal== 85437 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #75247: <==negation-removal== 24006 (pos)
                    (not (Bd_not_checked_p4))

                    ; #77279: <==negation-removal== 83215 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80400: <==negation-removal== 11543 (pos)
                    (not (Pd_not_checked_p4))

                    ; #80477: <==uncertain_firing== 85437 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #81530: <==negation-removal== 55852 (pos)
                    (not (Ba_not_checked_p4))

                    ; #87745: <==uncertain_firing== 22703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #88137: <==negation-removal== 74315 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18925: origin
                    (checked_p5)

                    ; #20083: <==closure== 78153 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #35655: <==commonly_known== 18925 (pos)
                    (Bd_checked_p5)

                    ; #40893: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #54223: <==commonly_known== 40682 (neg)
                    (Pd_checked_p5)

                    ; #55483: <==commonly_known== 18925 (pos)
                    (Bc_checked_p5)

                    ; #64005: <==closure== 40893 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #69645: <==commonly_known== 18925 (pos)
                    (Bb_checked_p5)

                    ; #71736: <==commonly_known== 40682 (neg)
                    (Pc_checked_p5)

                    ; #78153: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #84552: <==commonly_known== 18925 (pos)
                    (Ba_checked_p5)

                    ; #90445: <==commonly_known== 40682 (neg)
                    (Pa_checked_p5)

                    ; #92735: <==commonly_known== 40682 (neg)
                    (Pb_checked_p5)

                    ; #17982: <==negation-removal== 90445 (pos)
                    (not (Ba_not_checked_p5))

                    ; #18911: <==negation-removal== 92735 (pos)
                    (not (Bb_not_checked_p5))

                    ; #20710: <==uncertain_firing== 78153 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #21770: <==uncertain_firing== 64005 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #29270: <==uncertain_firing== 20083 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #32915: <==negation-removal== 40893 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #40682: <==negation-removal== 18925 (pos)
                    (not (not_checked_p5))

                    ; #43329: <==uncertain_firing== 40893 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #45382: <==negation-removal== 84552 (pos)
                    (not (Pa_not_checked_p5))

                    ; #50292: <==negation-removal== 54223 (pos)
                    (not (Bd_not_checked_p5))

                    ; #59470: <==negation-removal== 35655 (pos)
                    (not (Pd_not_checked_p5))

                    ; #62190: <==negation-removal== 55483 (pos)
                    (not (Pc_not_checked_p5))

                    ; #64194: <==negation-removal== 71736 (pos)
                    (not (Bc_not_checked_p5))

                    ; #67419: <==negation-removal== 78153 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #76644: <==negation-removal== 69645 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85496: <==negation-removal== 20083 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89585: <==negation-removal== 64005 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16622: <==commonly_known== 49868 (pos)
                    (Bc_checked_p6)

                    ; #18971: <==commonly_known== 49868 (pos)
                    (Bd_checked_p6)

                    ; #19210: <==commonly_known== 83913 (neg)
                    (Pc_checked_p6)

                    ; #32954: <==commonly_known== 83913 (neg)
                    (Pd_checked_p6)

                    ; #41110: <==commonly_known== 49868 (pos)
                    (Bb_checked_p6)

                    ; #49868: origin
                    (checked_p6)

                    ; #62482: <==closure== 84134 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #64653: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #66645: <==commonly_known== 49868 (pos)
                    (Ba_checked_p6)

                    ; #69919: <==commonly_known== 83913 (neg)
                    (Pa_checked_p6)

                    ; #70686: <==commonly_known== 83913 (neg)
                    (Pb_checked_p6)

                    ; #75337: <==closure== 64653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #84134: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #11651: <==uncertain_firing== 75337 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #27271: <==negation-removal== 19210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29308: <==negation-removal== 70686 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30604: <==negation-removal== 41110 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31008: <==negation-removal== 18971 (pos)
                    (not (Pd_not_checked_p6))

                    ; #35006: <==negation-removal== 75337 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #43756: <==uncertain_firing== 84134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #51298: <==negation-removal== 69919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #57023: <==uncertain_firing== 62482 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #57941: <==negation-removal== 62482 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #61531: <==negation-removal== 66645 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67315: <==negation-removal== 16622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #74808: <==negation-removal== 64653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #74996: <==uncertain_firing== 64653 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #81913: <==negation-removal== 32954 (pos)
                    (not (Bd_not_checked_p6))

                    ; #83913: <==negation-removal== 49868 (pos)
                    (not (not_checked_p6))

                    ; #88503: <==negation-removal== 84134 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10465: <==closure== 23364 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #12240: <==closure== 75614 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #23364: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #30163: <==commonly_known== 77015 (neg)
                    (Pb_checked_p7)

                    ; #43572: <==commonly_known== 74556 (pos)
                    (Bb_checked_p7)

                    ; #47099: <==commonly_known== 77015 (neg)
                    (Pa_checked_p7)

                    ; #51830: <==commonly_known== 74556 (pos)
                    (Bc_checked_p7)

                    ; #53856: <==commonly_known== 74556 (pos)
                    (Bd_checked_p7)

                    ; #73360: <==commonly_known== 74556 (pos)
                    (Ba_checked_p7)

                    ; #74556: origin
                    (checked_p7)

                    ; #75614: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #88420: <==commonly_known== 77015 (neg)
                    (Pc_checked_p7)

                    ; #89346: <==commonly_known== 77015 (neg)
                    (Pd_checked_p7)

                    ; #10044: <==negation-removal== 73360 (pos)
                    (not (Pa_not_checked_p7))

                    ; #27806: <==uncertain_firing== 10465 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #27866: <==negation-removal== 30163 (pos)
                    (not (Bb_not_checked_p7))

                    ; #30846: <==negation-removal== 12240 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43348: <==negation-removal== 89346 (pos)
                    (not (Bd_not_checked_p7))

                    ; #44004: <==negation-removal== 23364 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #44425: <==negation-removal== 75614 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #49833: <==negation-removal== 10465 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #53366: <==uncertain_firing== 75614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #59810: <==uncertain_firing== 23364 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #74187: <==negation-removal== 47099 (pos)
                    (not (Ba_not_checked_p7))

                    ; #76604: <==negation-removal== 51830 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76697: <==negation-removal== 53856 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77015: <==negation-removal== 74556 (pos)
                    (not (not_checked_p7))

                    ; #78275: <==negation-removal== 88420 (pos)
                    (not (Bc_not_checked_p7))

                    ; #78320: <==uncertain_firing== 12240 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #92071: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11455: <==commonly_known== 18894 (neg)
                    (Pd_checked_p8)

                    ; #15075: <==closure== 74238 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #20057: <==commonly_known== 65434 (pos)
                    (Bb_checked_p8)

                    ; #23383: <==commonly_known== 65434 (pos)
                    (Ba_checked_p8)

                    ; #28821: <==commonly_known== 18894 (neg)
                    (Pa_checked_p8)

                    ; #34079: <==commonly_known== 65434 (pos)
                    (Bd_checked_p8)

                    ; #45136: <==commonly_known== 65434 (pos)
                    (Bc_checked_p8)

                    ; #49160: <==commonly_known== 18894 (neg)
                    (Pb_checked_p8)

                    ; #54885: <==closure== 67614 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #55425: <==commonly_known== 18894 (neg)
                    (Pc_checked_p8)

                    ; #65434: origin
                    (checked_p8)

                    ; #67614: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #74238: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #12193: <==negation-removal== 45136 (pos)
                    (not (Pc_not_checked_p8))

                    ; #18894: <==negation-removal== 65434 (pos)
                    (not (not_checked_p8))

                    ; #19389: <==negation-removal== 67614 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #23207: <==negation-removal== 55425 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25601: <==negation-removal== 49160 (pos)
                    (not (Bb_not_checked_p8))

                    ; #26815: <==uncertain_firing== 67614 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #29781: <==uncertain_firing== 74238 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #35838: <==negation-removal== 20057 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40959: <==uncertain_firing== 15075 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #41841: <==negation-removal== 34079 (pos)
                    (not (Pd_not_checked_p8))

                    ; #65762: <==negation-removal== 54885 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #69311: <==negation-removal== 15075 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #76016: <==negation-removal== 74238 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #77220: <==negation-removal== 28821 (pos)
                    (not (Ba_not_checked_p8))

                    ; #86887: <==negation-removal== 23383 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88514: <==negation-removal== 11455 (pos)
                    (not (Bd_not_checked_p8))

                    ; #92110: <==uncertain_firing== 54885 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13511: <==commonly_known== 44279 (pos)
                    (Bc_checked_p9)

                    ; #15356: <==commonly_known== 10659 (neg)
                    (Pc_checked_p9)

                    ; #20137: <==commonly_known== 44279 (pos)
                    (Ba_checked_p9)

                    ; #26382: <==commonly_known== 10659 (neg)
                    (Pb_checked_p9)

                    ; #26761: <==commonly_known== 10659 (neg)
                    (Pd_checked_p9)

                    ; #30049: <==closure== 52268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #33395: <==closure== 78607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #37077: <==commonly_known== 44279 (pos)
                    (Bb_checked_p9)

                    ; #44279: origin
                    (checked_p9)

                    ; #51216: <==commonly_known== 10659 (neg)
                    (Pa_checked_p9)

                    ; #52268: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #72919: <==commonly_known== 44279 (pos)
                    (Bd_checked_p9)

                    ; #78607: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #10659: <==negation-removal== 44279 (pos)
                    (not (not_checked_p9))

                    ; #16791: <==negation-removal== 26382 (pos)
                    (not (Bb_not_checked_p9))

                    ; #16990: <==negation-removal== 30049 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #19636: <==negation-removal== 78607 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #21919: <==negation-removal== 15356 (pos)
                    (not (Bc_not_checked_p9))

                    ; #33503: <==negation-removal== 26761 (pos)
                    (not (Bd_not_checked_p9))

                    ; #37611: <==negation-removal== 51216 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59483: <==negation-removal== 37077 (pos)
                    (not (Pb_not_checked_p9))

                    ; #62661: <==uncertain_firing== 52268 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #62816: <==uncertain_firing== 33395 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #65344: <==negation-removal== 52268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #67475: <==uncertain_firing== 78607 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #70871: <==negation-removal== 72919 (pos)
                    (not (Pd_not_checked_p9))

                    ; #80227: <==uncertain_firing== 30049 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #81687: <==negation-removal== 20137 (pos)
                    (not (Pa_not_checked_p9))

                    ; #88671: <==negation-removal== 13511 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91223: <==negation-removal== 33395 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16052: <==closure== 51776 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #31050: <==commonly_known== 33277 (pos)
                    (Bd_checked_p1)

                    ; #33277: origin
                    (checked_p1)

                    ; #37122: <==commonly_known== 90190 (neg)
                    (Pc_checked_p1)

                    ; #41098: <==commonly_known== 33277 (pos)
                    (Bb_checked_p1)

                    ; #46450: <==commonly_known== 90190 (neg)
                    (Pa_checked_p1)

                    ; #51776: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #62084: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #62704: <==commonly_known== 33277 (pos)
                    (Ba_checked_p1)

                    ; #63154: <==commonly_known== 90190 (neg)
                    (Pb_checked_p1)

                    ; #64950: <==commonly_known== 90190 (neg)
                    (Pd_checked_p1)

                    ; #82293: <==commonly_known== 33277 (pos)
                    (Bc_checked_p1)

                    ; #86203: <==closure== 62084 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #11612: <==uncertain_firing== 51776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #14928: <==negation-removal== 64950 (pos)
                    (not (Bd_not_checked_p1))

                    ; #19684: <==negation-removal== 62704 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20779: <==negation-removal== 63154 (pos)
                    (not (Bb_not_checked_p1))

                    ; #31842: <==negation-removal== 82293 (pos)
                    (not (Pc_not_checked_p1))

                    ; #37166: <==negation-removal== 16052 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #38797: <==negation-removal== 37122 (pos)
                    (not (Bc_not_checked_p1))

                    ; #55078: <==negation-removal== 31050 (pos)
                    (not (Pd_not_checked_p1))

                    ; #59662: <==uncertain_firing== 86203 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59677: <==negation-removal== 46450 (pos)
                    (not (Ba_not_checked_p1))

                    ; #63545: <==negation-removal== 62084 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #72354: <==negation-removal== 41098 (pos)
                    (not (Pb_not_checked_p1))

                    ; #74899: <==uncertain_firing== 62084 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #78108: <==negation-removal== 86203 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #82347: <==uncertain_firing== 16052 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #82675: <==negation-removal== 51776 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #90190: <==negation-removal== 33277 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17070: <==commonly_known== 25645 (neg)
                    (Pc_checked_p2)

                    ; #26811: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #28470: <==commonly_known== 51211 (pos)
                    (Ba_checked_p2)

                    ; #33821: <==commonly_known== 25645 (neg)
                    (Pd_checked_p2)

                    ; #36314: <==commonly_known== 25645 (neg)
                    (Pa_checked_p2)

                    ; #41837: <==closure== 63688 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #51211: origin
                    (checked_p2)

                    ; #51394: <==commonly_known== 25645 (neg)
                    (Pb_checked_p2)

                    ; #60285: <==commonly_known== 51211 (pos)
                    (Bb_checked_p2)

                    ; #61868: <==closure== 26811 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #62881: <==commonly_known== 51211 (pos)
                    (Bd_checked_p2)

                    ; #63688: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #78693: <==commonly_known== 51211 (pos)
                    (Bc_checked_p2)

                    ; #13942: <==negation-removal== 61868 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #15598: <==negation-removal== 78693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #15708: <==uncertain_firing== 63688 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #19933: <==uncertain_firing== 26811 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #20333: <==negation-removal== 41837 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #25391: <==negation-removal== 17070 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25645: <==negation-removal== 51211 (pos)
                    (not (not_checked_p2))

                    ; #25814: <==uncertain_firing== 41837 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #33431: <==negation-removal== 33821 (pos)
                    (not (Bd_not_checked_p2))

                    ; #34418: <==uncertain_firing== 61868 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37233: <==negation-removal== 26811 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #37899: <==negation-removal== 62881 (pos)
                    (not (Pd_not_checked_p2))

                    ; #45216: <==negation-removal== 36314 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68081: <==negation-removal== 51394 (pos)
                    (not (Bb_not_checked_p2))

                    ; #79939: <==negation-removal== 63688 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #81938: <==negation-removal== 28470 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82739: <==negation-removal== 60285 (pos)
                    (not (Pb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12514: <==commonly_known== 42829 (neg)
                    (Pd_checked_p3)

                    ; #18661: <==commonly_known== 52615 (pos)
                    (Bb_checked_p3)

                    ; #26658: <==commonly_known== 52615 (pos)
                    (Bc_checked_p3)

                    ; #29324: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #44756: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #46219: <==commonly_known== 42829 (neg)
                    (Pb_checked_p3)

                    ; #47608: <==commonly_known== 42829 (neg)
                    (Pc_checked_p3)

                    ; #52615: origin
                    (checked_p3)

                    ; #53822: <==commonly_known== 52615 (pos)
                    (Bd_checked_p3)

                    ; #60081: <==commonly_known== 42829 (neg)
                    (Pa_checked_p3)

                    ; #63045: <==commonly_known== 52615 (pos)
                    (Ba_checked_p3)

                    ; #67344: <==closure== 44756 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #69564: <==closure== 29324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #14237: <==negation-removal== 63045 (pos)
                    (not (Pa_not_checked_p3))

                    ; #32543: <==negation-removal== 46219 (pos)
                    (not (Bb_not_checked_p3))

                    ; #36761: <==negation-removal== 12514 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42829: <==negation-removal== 52615 (pos)
                    (not (not_checked_p3))

                    ; #55274: <==negation-removal== 18661 (pos)
                    (not (Pb_not_checked_p3))

                    ; #56433: <==uncertain_firing== 69564 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #58949: <==negation-removal== 53822 (pos)
                    (not (Pd_not_checked_p3))

                    ; #59297: <==negation-removal== 47608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #59567: <==uncertain_firing== 44756 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #66202: <==negation-removal== 26658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #67717: <==negation-removal== 29324 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #68707: <==negation-removal== 69564 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #78280: <==negation-removal== 60081 (pos)
                    (not (Ba_not_checked_p3))

                    ; #78458: <==uncertain_firing== 29324 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #82404: <==negation-removal== 44756 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #90379: <==uncertain_firing== 67344 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #99086: <==negation-removal== 67344 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11543: <==commonly_known== 90883 (pos)
                    (Bd_checked_p4)

                    ; #17576: <==closure== 75667 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #24006: <==commonly_known== 42074 (neg)
                    (Pd_checked_p4)

                    ; #32323: <==commonly_known== 42074 (neg)
                    (Pb_checked_p4)

                    ; #45075: <==commonly_known== 42074 (neg)
                    (Pc_checked_p4)

                    ; #52073: <==commonly_known== 90883 (pos)
                    (Bb_checked_p4)

                    ; #55852: <==commonly_known== 42074 (neg)
                    (Pa_checked_p4)

                    ; #56764: <==closure== 72309 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70641: <==commonly_known== 90883 (pos)
                    (Bc_checked_p4)

                    ; #72309: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #75667: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #83215: <==commonly_known== 90883 (pos)
                    (Ba_checked_p4)

                    ; #90883: origin
                    (checked_p4)

                    ; #15562: <==negation-removal== 75667 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #20477: <==uncertain_firing== 17576 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #25053: <==negation-removal== 32323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30737: <==negation-removal== 70641 (pos)
                    (not (Pc_not_checked_p4))

                    ; #36667: <==uncertain_firing== 72309 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #38079: <==negation-removal== 45075 (pos)
                    (not (Bc_not_checked_p4))

                    ; #39778: <==negation-removal== 72309 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #42074: <==negation-removal== 90883 (pos)
                    (not (not_checked_p4))

                    ; #46703: <==negation-removal== 52073 (pos)
                    (not (Pb_not_checked_p4))

                    ; #65161: <==negation-removal== 17576 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #71829: <==negation-removal== 56764 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #75247: <==negation-removal== 24006 (pos)
                    (not (Bd_not_checked_p4))

                    ; #75849: <==uncertain_firing== 75667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #77279: <==negation-removal== 83215 (pos)
                    (not (Pa_not_checked_p4))

                    ; #80400: <==negation-removal== 11543 (pos)
                    (not (Pd_not_checked_p4))

                    ; #81530: <==negation-removal== 55852 (pos)
                    (not (Ba_not_checked_p4))

                    ; #81765: <==uncertain_firing== 56764 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12134: <==closure== 79787 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #18925: origin
                    (checked_p5)

                    ; #33346: <==closure== 36144 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #35655: <==commonly_known== 18925 (pos)
                    (Bd_checked_p5)

                    ; #36144: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #54223: <==commonly_known== 40682 (neg)
                    (Pd_checked_p5)

                    ; #55483: <==commonly_known== 18925 (pos)
                    (Bc_checked_p5)

                    ; #69645: <==commonly_known== 18925 (pos)
                    (Bb_checked_p5)

                    ; #71736: <==commonly_known== 40682 (neg)
                    (Pc_checked_p5)

                    ; #79787: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #84552: <==commonly_known== 18925 (pos)
                    (Ba_checked_p5)

                    ; #90445: <==commonly_known== 40682 (neg)
                    (Pa_checked_p5)

                    ; #92735: <==commonly_known== 40682 (neg)
                    (Pb_checked_p5)

                    ; #17982: <==negation-removal== 90445 (pos)
                    (not (Ba_not_checked_p5))

                    ; #18911: <==negation-removal== 92735 (pos)
                    (not (Bb_not_checked_p5))

                    ; #33317: <==uncertain_firing== 79787 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #40682: <==negation-removal== 18925 (pos)
                    (not (not_checked_p5))

                    ; #45382: <==negation-removal== 84552 (pos)
                    (not (Pa_not_checked_p5))

                    ; #46370: <==negation-removal== 12134 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #50292: <==negation-removal== 54223 (pos)
                    (not (Bd_not_checked_p5))

                    ; #51029: <==uncertain_firing== 36144 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52369: <==negation-removal== 33346 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57550: <==negation-removal== 79787 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #59470: <==negation-removal== 35655 (pos)
                    (not (Pd_not_checked_p5))

                    ; #62190: <==negation-removal== 55483 (pos)
                    (not (Pc_not_checked_p5))

                    ; #64194: <==negation-removal== 71736 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75845: <==negation-removal== 36144 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #76644: <==negation-removal== 69645 (pos)
                    (not (Pb_not_checked_p5))

                    ; #77142: <==uncertain_firing== 33346 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #91920: <==uncertain_firing== 12134 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16622: <==commonly_known== 49868 (pos)
                    (Bc_checked_p6)

                    ; #18971: <==commonly_known== 49868 (pos)
                    (Bd_checked_p6)

                    ; #19210: <==commonly_known== 83913 (neg)
                    (Pc_checked_p6)

                    ; #24320: <==closure== 68196 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #31723: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #32954: <==commonly_known== 83913 (neg)
                    (Pd_checked_p6)

                    ; #32980: <==closure== 31723 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #41110: <==commonly_known== 49868 (pos)
                    (Bb_checked_p6)

                    ; #49868: origin
                    (checked_p6)

                    ; #66645: <==commonly_known== 49868 (pos)
                    (Ba_checked_p6)

                    ; #68196: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #69919: <==commonly_known== 83913 (neg)
                    (Pa_checked_p6)

                    ; #70686: <==commonly_known== 83913 (neg)
                    (Pb_checked_p6)

                    ; #21816: <==uncertain_firing== 31723 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #27271: <==negation-removal== 19210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29308: <==negation-removal== 70686 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30604: <==negation-removal== 41110 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31008: <==negation-removal== 18971 (pos)
                    (not (Pd_not_checked_p6))

                    ; #32094: <==uncertain_firing== 68196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #40959: <==uncertain_firing== 32980 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #45741: <==negation-removal== 31723 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #51298: <==negation-removal== 69919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #57764: <==negation-removal== 68196 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #61531: <==negation-removal== 66645 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67315: <==negation-removal== 16622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #76782: <==uncertain_firing== 24320 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81665: <==negation-removal== 24320 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81913: <==negation-removal== 32954 (pos)
                    (not (Bd_not_checked_p6))

                    ; #83913: <==negation-removal== 49868 (pos)
                    (not (not_checked_p6))

                    ; #86087: <==negation-removal== 32980 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19149: <==closure== 42298 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #21305: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #30163: <==commonly_known== 77015 (neg)
                    (Pb_checked_p7)

                    ; #42298: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #43572: <==commonly_known== 74556 (pos)
                    (Bb_checked_p7)

                    ; #47099: <==commonly_known== 77015 (neg)
                    (Pa_checked_p7)

                    ; #51830: <==commonly_known== 74556 (pos)
                    (Bc_checked_p7)

                    ; #53856: <==commonly_known== 74556 (pos)
                    (Bd_checked_p7)

                    ; #67081: <==closure== 21305 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #73360: <==commonly_known== 74556 (pos)
                    (Ba_checked_p7)

                    ; #74556: origin
                    (checked_p7)

                    ; #88420: <==commonly_known== 77015 (neg)
                    (Pc_checked_p7)

                    ; #89346: <==commonly_known== 77015 (neg)
                    (Pd_checked_p7)

                    ; #10044: <==negation-removal== 73360 (pos)
                    (not (Pa_not_checked_p7))

                    ; #23094: <==uncertain_firing== 42298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #27866: <==negation-removal== 30163 (pos)
                    (not (Bb_not_checked_p7))

                    ; #38710: <==negation-removal== 67081 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #43348: <==negation-removal== 89346 (pos)
                    (not (Bd_not_checked_p7))

                    ; #44305: <==negation-removal== 42298 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #44389: <==uncertain_firing== 67081 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54882: <==uncertain_firing== 19149 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63604: <==negation-removal== 21305 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #74187: <==negation-removal== 47099 (pos)
                    (not (Ba_not_checked_p7))

                    ; #76604: <==negation-removal== 51830 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76697: <==negation-removal== 53856 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77015: <==negation-removal== 74556 (pos)
                    (not (not_checked_p7))

                    ; #77469: <==uncertain_firing== 21305 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #78275: <==negation-removal== 88420 (pos)
                    (not (Bc_not_checked_p7))

                    ; #87891: <==negation-removal== 19149 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #92071: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11455: <==commonly_known== 18894 (neg)
                    (Pd_checked_p8)

                    ; #20057: <==commonly_known== 65434 (pos)
                    (Bb_checked_p8)

                    ; #23383: <==commonly_known== 65434 (pos)
                    (Ba_checked_p8)

                    ; #28821: <==commonly_known== 18894 (neg)
                    (Pa_checked_p8)

                    ; #34079: <==commonly_known== 65434 (pos)
                    (Bd_checked_p8)

                    ; #45136: <==commonly_known== 65434 (pos)
                    (Bc_checked_p8)

                    ; #46439: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #49160: <==commonly_known== 18894 (neg)
                    (Pb_checked_p8)

                    ; #55425: <==commonly_known== 18894 (neg)
                    (Pc_checked_p8)

                    ; #57740: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #65434: origin
                    (checked_p8)

                    ; #69339: <==closure== 57740 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #75009: <==closure== 46439 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #12193: <==negation-removal== 45136 (pos)
                    (not (Pc_not_checked_p8))

                    ; #18894: <==negation-removal== 65434 (pos)
                    (not (not_checked_p8))

                    ; #23207: <==negation-removal== 55425 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25601: <==negation-removal== 49160 (pos)
                    (not (Bb_not_checked_p8))

                    ; #27136: <==uncertain_firing== 57740 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #34879: <==negation-removal== 46439 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #35838: <==negation-removal== 20057 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41841: <==negation-removal== 34079 (pos)
                    (not (Pd_not_checked_p8))

                    ; #47324: <==uncertain_firing== 69339 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #47574: <==negation-removal== 69339 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61188: <==negation-removal== 75009 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #69085: <==uncertain_firing== 46439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #77220: <==negation-removal== 28821 (pos)
                    (not (Ba_not_checked_p8))

                    ; #86887: <==negation-removal== 23383 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87809: <==uncertain_firing== 75009 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #88514: <==negation-removal== 11455 (pos)
                    (not (Bd_not_checked_p8))

                    ; #96685: <==negation-removal== 57740 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #13511: <==commonly_known== 44279 (pos)
                    (Bc_checked_p9)

                    ; #15356: <==commonly_known== 10659 (neg)
                    (Pc_checked_p9)

                    ; #20137: <==commonly_known== 44279 (pos)
                    (Ba_checked_p9)

                    ; #25662: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #26382: <==commonly_known== 10659 (neg)
                    (Pb_checked_p9)

                    ; #26761: <==commonly_known== 10659 (neg)
                    (Pd_checked_p9)

                    ; #29988: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #37077: <==commonly_known== 44279 (pos)
                    (Bb_checked_p9)

                    ; #44279: origin
                    (checked_p9)

                    ; #47478: <==closure== 25662 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #51216: <==commonly_known== 10659 (neg)
                    (Pa_checked_p9)

                    ; #72919: <==commonly_known== 44279 (pos)
                    (Bd_checked_p9)

                    ; #80141: <==closure== 29988 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #10659: <==negation-removal== 44279 (pos)
                    (not (not_checked_p9))

                    ; #11048: <==negation-removal== 29988 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #13906: <==uncertain_firing== 29988 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #16791: <==negation-removal== 26382 (pos)
                    (not (Bb_not_checked_p9))

                    ; #21919: <==negation-removal== 15356 (pos)
                    (not (Bc_not_checked_p9))

                    ; #23540: <==uncertain_firing== 25662 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #29298: <==negation-removal== 47478 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #33503: <==negation-removal== 26761 (pos)
                    (not (Bd_not_checked_p9))

                    ; #37611: <==negation-removal== 51216 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53564: <==uncertain_firing== 47478 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #59483: <==negation-removal== 37077 (pos)
                    (not (Pb_not_checked_p9))

                    ; #70871: <==negation-removal== 72919 (pos)
                    (not (Pd_not_checked_p9))

                    ; #76488: <==negation-removal== 80141 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #81687: <==negation-removal== 20137 (pos)
                    (not (Pa_not_checked_p9))

                    ; #83160: <==uncertain_firing== 80141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #86429: <==negation-removal== 25662 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #88671: <==negation-removal== 13511 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_d_p1_s
        :precondition (and (at_d_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #31050: <==commonly_known== 33277 (pos)
                    (Bd_checked_p1)

                    ; #33277: origin
                    (checked_p1)

                    ; #37122: <==commonly_known== 90190 (neg)
                    (Pc_checked_p1)

                    ; #41098: <==commonly_known== 33277 (pos)
                    (Bb_checked_p1)

                    ; #46450: <==commonly_known== 90190 (neg)
                    (Pa_checked_p1)

                    ; #50157: <==closure== 64426 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pd_not_survivorat_s_p1))

                    ; #62704: <==commonly_known== 33277 (pos)
                    (Ba_checked_p1)

                    ; #63154: <==commonly_known== 90190 (neg)
                    (Pb_checked_p1)

                    ; #64426: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bd_not_survivorat_s_p1))

                    ; #64950: <==commonly_known== 90190 (neg)
                    (Pd_checked_p1)

                    ; #82293: <==commonly_known== 33277 (pos)
                    (Bc_checked_p1)

                    ; #88318: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bd_survivorat_s_p1))

                    ; #90506: <==closure== 88318 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pd_survivorat_s_p1))

                    ; #14928: <==negation-removal== 64950 (pos)
                    (not (Bd_not_checked_p1))

                    ; #19684: <==negation-removal== 62704 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20779: <==negation-removal== 63154 (pos)
                    (not (Bb_not_checked_p1))

                    ; #22024: <==negation-removal== 64426 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pd_survivorat_s_p1)))

                    ; #31842: <==negation-removal== 82293 (pos)
                    (not (Pc_not_checked_p1))

                    ; #34242: <==negation-removal== 88318 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #38797: <==negation-removal== 37122 (pos)
                    (not (Bc_not_checked_p1))

                    ; #44599: <==uncertain_firing== 64426 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pd_survivorat_s_p1)))

                    ; #48959: <==uncertain_firing== 88318 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pd_not_survivorat_s_p1)))

                    ; #55078: <==negation-removal== 31050 (pos)
                    (not (Pd_not_checked_p1))

                    ; #56805: <==uncertain_firing== 90506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #59677: <==negation-removal== 46450 (pos)
                    (not (Ba_not_checked_p1))

                    ; #64341: <==negation-removal== 90506 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bd_not_survivorat_s_p1)))

                    ; #66893: <==negation-removal== 50157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bd_survivorat_s_p1)))

                    ; #72354: <==negation-removal== 41098 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83501: <==uncertain_firing== 50157 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bd_survivorat_s_p1)))

                    ; #90190: <==negation-removal== 33277 (pos)
                    (not (not_checked_p1))))

    (:action observ_d_p2_s
        :precondition (and (at_d_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #17070: <==commonly_known== 25645 (neg)
                    (Pc_checked_p2)

                    ; #28470: <==commonly_known== 51211 (pos)
                    (Ba_checked_p2)

                    ; #33821: <==commonly_known== 25645 (neg)
                    (Pd_checked_p2)

                    ; #36314: <==commonly_known== 25645 (neg)
                    (Pa_checked_p2)

                    ; #40649: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bd_survivorat_s_p2))

                    ; #51211: origin
                    (checked_p2)

                    ; #51394: <==commonly_known== 25645 (neg)
                    (Pb_checked_p2)

                    ; #60285: <==commonly_known== 51211 (pos)
                    (Bb_checked_p2)

                    ; #62881: <==commonly_known== 51211 (pos)
                    (Bd_checked_p2)

                    ; #65975: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bd_not_survivorat_s_p2))

                    ; #71254: <==closure== 40649 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pd_survivorat_s_p2))

                    ; #76282: <==closure== 65975 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pd_not_survivorat_s_p2))

                    ; #78693: <==commonly_known== 51211 (pos)
                    (Bc_checked_p2)

                    ; #15598: <==negation-removal== 78693 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24388: <==uncertain_firing== 65975 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pd_survivorat_s_p2)))

                    ; #25391: <==negation-removal== 17070 (pos)
                    (not (Bc_not_checked_p2))

                    ; #25645: <==negation-removal== 51211 (pos)
                    (not (not_checked_p2))

                    ; #30417: <==uncertain_firing== 40649 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #31725: <==uncertain_firing== 76282 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bd_survivorat_s_p2)))

                    ; #33431: <==negation-removal== 33821 (pos)
                    (not (Bd_not_checked_p2))

                    ; #37250: <==negation-removal== 76282 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bd_survivorat_s_p2)))

                    ; #37899: <==negation-removal== 62881 (pos)
                    (not (Pd_not_checked_p2))

                    ; #39632: <==negation-removal== 71254 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #45216: <==negation-removal== 36314 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68081: <==negation-removal== 51394 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81938: <==negation-removal== 28470 (pos)
                    (not (Pa_not_checked_p2))

                    ; #82739: <==negation-removal== 60285 (pos)
                    (not (Pb_not_checked_p2))

                    ; #83354: <==uncertain_firing== 71254 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bd_not_survivorat_s_p2)))

                    ; #87515: <==negation-removal== 40649 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pd_not_survivorat_s_p2)))

                    ; #98891: <==negation-removal== 65975 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pd_survivorat_s_p2)))))

    (:action observ_d_p3_s
        :precondition (and (at_d_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12514: <==commonly_known== 42829 (neg)
                    (Pd_checked_p3)

                    ; #14709: <==closure== 26053 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pd_survivorat_s_p3))

                    ; #18661: <==commonly_known== 52615 (pos)
                    (Bb_checked_p3)

                    ; #26053: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bd_survivorat_s_p3))

                    ; #26658: <==commonly_known== 52615 (pos)
                    (Bc_checked_p3)

                    ; #46219: <==commonly_known== 42829 (neg)
                    (Pb_checked_p3)

                    ; #47608: <==commonly_known== 42829 (neg)
                    (Pc_checked_p3)

                    ; #52615: origin
                    (checked_p3)

                    ; #53822: <==commonly_known== 52615 (pos)
                    (Bd_checked_p3)

                    ; #59405: <==closure== 69634 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pd_not_survivorat_s_p3))

                    ; #60081: <==commonly_known== 42829 (neg)
                    (Pa_checked_p3)

                    ; #63045: <==commonly_known== 52615 (pos)
                    (Ba_checked_p3)

                    ; #69634: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bd_not_survivorat_s_p3))

                    ; #12468: <==negation-removal== 14709 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #14237: <==negation-removal== 63045 (pos)
                    (not (Pa_not_checked_p3))

                    ; #19949: <==negation-removal== 26053 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #32543: <==negation-removal== 46219 (pos)
                    (not (Bb_not_checked_p3))

                    ; #34627: <==uncertain_firing== 14709 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bd_not_survivorat_s_p3)))

                    ; #36761: <==negation-removal== 12514 (pos)
                    (not (Bd_not_checked_p3))

                    ; #42829: <==negation-removal== 52615 (pos)
                    (not (not_checked_p3))

                    ; #52524: <==negation-removal== 59405 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bd_survivorat_s_p3)))

                    ; #55274: <==negation-removal== 18661 (pos)
                    (not (Pb_not_checked_p3))

                    ; #55734: <==negation-removal== 69634 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pd_survivorat_s_p3)))

                    ; #58949: <==negation-removal== 53822 (pos)
                    (not (Pd_not_checked_p3))

                    ; #59297: <==negation-removal== 47608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #60081: <==uncertain_firing== 59405 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bd_survivorat_s_p3)))

                    ; #66202: <==negation-removal== 26658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #69196: <==uncertain_firing== 69634 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pd_survivorat_s_p3)))

                    ; #71613: <==uncertain_firing== 26053 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pd_not_survivorat_s_p3)))

                    ; #78280: <==negation-removal== 60081 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_d_p4_s
        :precondition (and (at_d_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11543: <==commonly_known== 90883 (pos)
                    (Bd_checked_p4)

                    ; #13237: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bd_survivorat_s_p4))

                    ; #24006: <==commonly_known== 42074 (neg)
                    (Pd_checked_p4)

                    ; #32323: <==commonly_known== 42074 (neg)
                    (Pb_checked_p4)

                    ; #45075: <==commonly_known== 42074 (neg)
                    (Pc_checked_p4)

                    ; #48724: <==closure== 76408 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pd_not_survivorat_s_p4))

                    ; #52073: <==commonly_known== 90883 (pos)
                    (Bb_checked_p4)

                    ; #55852: <==commonly_known== 42074 (neg)
                    (Pa_checked_p4)

                    ; #62333: <==closure== 13237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pd_survivorat_s_p4))

                    ; #70641: <==commonly_known== 90883 (pos)
                    (Bc_checked_p4)

                    ; #76408: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bd_not_survivorat_s_p4))

                    ; #83215: <==commonly_known== 90883 (pos)
                    (Ba_checked_p4)

                    ; #90883: origin
                    (checked_p4)

                    ; #13518: <==uncertain_firing== 13237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #25053: <==negation-removal== 32323 (pos)
                    (not (Bb_not_checked_p4))

                    ; #30737: <==negation-removal== 70641 (pos)
                    (not (Pc_not_checked_p4))

                    ; #38079: <==negation-removal== 45075 (pos)
                    (not (Bc_not_checked_p4))

                    ; #42074: <==negation-removal== 90883 (pos)
                    (not (not_checked_p4))

                    ; #46703: <==negation-removal== 52073 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56366: <==negation-removal== 13237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pd_not_survivorat_s_p4)))

                    ; #57047: <==negation-removal== 62333 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #64356: <==negation-removal== 48724 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bd_survivorat_s_p4)))

                    ; #67971: <==uncertain_firing== 76408 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pd_survivorat_s_p4)))

                    ; #75247: <==negation-removal== 24006 (pos)
                    (not (Bd_not_checked_p4))

                    ; #77279: <==negation-removal== 83215 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78855: <==negation-removal== 76408 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pd_survivorat_s_p4)))

                    ; #80400: <==negation-removal== 11543 (pos)
                    (not (Pd_not_checked_p4))

                    ; #81530: <==negation-removal== 55852 (pos)
                    (not (Ba_not_checked_p4))

                    ; #82018: <==uncertain_firing== 62333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bd_not_survivorat_s_p4)))

                    ; #98022: <==uncertain_firing== 48724 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bd_survivorat_s_p4)))))

    (:action observ_d_p5_s
        :precondition (and (at_d_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18925: origin
                    (checked_p5)

                    ; #26714: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bd_not_survivorat_s_p5))

                    ; #35655: <==commonly_known== 18925 (pos)
                    (Bd_checked_p5)

                    ; #40331: <==closure== 26714 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pd_not_survivorat_s_p5))

                    ; #54223: <==commonly_known== 40682 (neg)
                    (Pd_checked_p5)

                    ; #55483: <==commonly_known== 18925 (pos)
                    (Bc_checked_p5)

                    ; #57263: <==closure== 81230 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pd_survivorat_s_p5))

                    ; #69645: <==commonly_known== 18925 (pos)
                    (Bb_checked_p5)

                    ; #71736: <==commonly_known== 40682 (neg)
                    (Pc_checked_p5)

                    ; #81230: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bd_survivorat_s_p5))

                    ; #84552: <==commonly_known== 18925 (pos)
                    (Ba_checked_p5)

                    ; #90445: <==commonly_known== 40682 (neg)
                    (Pa_checked_p5)

                    ; #92735: <==commonly_known== 40682 (neg)
                    (Pb_checked_p5)

                    ; #17982: <==negation-removal== 90445 (pos)
                    (not (Ba_not_checked_p5))

                    ; #18911: <==negation-removal== 92735 (pos)
                    (not (Bb_not_checked_p5))

                    ; #24297: <==negation-removal== 40331 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bd_survivorat_s_p5)))

                    ; #40682: <==negation-removal== 18925 (pos)
                    (not (not_checked_p5))

                    ; #45382: <==negation-removal== 84552 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48867: <==uncertain_firing== 40331 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bd_survivorat_s_p5)))

                    ; #50292: <==negation-removal== 54223 (pos)
                    (not (Bd_not_checked_p5))

                    ; #54570: <==uncertain_firing== 81230 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #55470: <==uncertain_firing== 26714 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pd_survivorat_s_p5)))

                    ; #58968: <==negation-removal== 57263 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #59470: <==negation-removal== 35655 (pos)
                    (not (Pd_not_checked_p5))

                    ; #62190: <==negation-removal== 55483 (pos)
                    (not (Pc_not_checked_p5))

                    ; #64194: <==negation-removal== 71736 (pos)
                    (not (Bc_not_checked_p5))

                    ; #76644: <==negation-removal== 69645 (pos)
                    (not (Pb_not_checked_p5))

                    ; #77652: <==negation-removal== 81230 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pd_not_survivorat_s_p5)))

                    ; #80424: <==uncertain_firing== 57263 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bd_not_survivorat_s_p5)))

                    ; #88398: <==negation-removal== 26714 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pd_survivorat_s_p5)))))

    (:action observ_d_p6_s
        :precondition (and (at_d_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16622: <==commonly_known== 49868 (pos)
                    (Bc_checked_p6)

                    ; #18971: <==commonly_known== 49868 (pos)
                    (Bd_checked_p6)

                    ; #19210: <==commonly_known== 83913 (neg)
                    (Pc_checked_p6)

                    ; #20197: <==closure== 28167 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pd_not_survivorat_s_p6))

                    ; #28167: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bd_not_survivorat_s_p6))

                    ; #32954: <==commonly_known== 83913 (neg)
                    (Pd_checked_p6)

                    ; #35632: <==closure== 56888 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pd_survivorat_s_p6))

                    ; #41110: <==commonly_known== 49868 (pos)
                    (Bb_checked_p6)

                    ; #49868: origin
                    (checked_p6)

                    ; #56888: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bd_survivorat_s_p6))

                    ; #66645: <==commonly_known== 49868 (pos)
                    (Ba_checked_p6)

                    ; #69919: <==commonly_known== 83913 (neg)
                    (Pa_checked_p6)

                    ; #70686: <==commonly_known== 83913 (neg)
                    (Pb_checked_p6)

                    ; #27271: <==negation-removal== 19210 (pos)
                    (not (Bc_not_checked_p6))

                    ; #29308: <==negation-removal== 70686 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30604: <==negation-removal== 41110 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31008: <==negation-removal== 18971 (pos)
                    (not (Pd_not_checked_p6))

                    ; #39711: <==uncertain_firing== 20197 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bd_survivorat_s_p6)))

                    ; #43839: <==uncertain_firing== 56888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pd_not_survivorat_s_p6)))

                    ; #50115: <==negation-removal== 35632 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #50252: <==negation-removal== 20197 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bd_survivorat_s_p6)))

                    ; #51298: <==negation-removal== 69919 (pos)
                    (not (Ba_not_checked_p6))

                    ; #52775: <==uncertain_firing== 35632 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bd_not_survivorat_s_p6)))

                    ; #55110: <==negation-removal== 28167 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pd_survivorat_s_p6)))

                    ; #57655: <==uncertain_firing== 28167 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pd_survivorat_s_p6)))

                    ; #61531: <==negation-removal== 66645 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67315: <==negation-removal== 16622 (pos)
                    (not (Pc_not_checked_p6))

                    ; #81913: <==negation-removal== 32954 (pos)
                    (not (Bd_not_checked_p6))

                    ; #83913: <==negation-removal== 49868 (pos)
                    (not (not_checked_p6))

                    ; #85793: <==negation-removal== 56888 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pd_not_survivorat_s_p6)))))

    (:action observ_d_p7_s
        :precondition (and (at_d_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #30163: <==commonly_known== 77015 (neg)
                    (Pb_checked_p7)

                    ; #39703: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bd_survivorat_s_p7))

                    ; #43572: <==commonly_known== 74556 (pos)
                    (Bb_checked_p7)

                    ; #47099: <==commonly_known== 77015 (neg)
                    (Pa_checked_p7)

                    ; #51830: <==commonly_known== 74556 (pos)
                    (Bc_checked_p7)

                    ; #53856: <==commonly_known== 74556 (pos)
                    (Bd_checked_p7)

                    ; #65613: <==closure== 39703 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pd_survivorat_s_p7))

                    ; #73360: <==commonly_known== 74556 (pos)
                    (Ba_checked_p7)

                    ; #74556: origin
                    (checked_p7)

                    ; #79150: <==closure== 86488 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pd_not_survivorat_s_p7))

                    ; #86488: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bd_not_survivorat_s_p7))

                    ; #88420: <==commonly_known== 77015 (neg)
                    (Pc_checked_p7)

                    ; #89346: <==commonly_known== 77015 (neg)
                    (Pd_checked_p7)

                    ; #10044: <==negation-removal== 73360 (pos)
                    (not (Pa_not_checked_p7))

                    ; #11136: <==negation-removal== 86488 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pd_survivorat_s_p7)))

                    ; #16143: <==negation-removal== 65613 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #27866: <==negation-removal== 30163 (pos)
                    (not (Bb_not_checked_p7))

                    ; #33171: <==negation-removal== 79150 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bd_survivorat_s_p7)))

                    ; #41226: <==uncertain_firing== 39703 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #43348: <==negation-removal== 89346 (pos)
                    (not (Bd_not_checked_p7))

                    ; #54498: <==uncertain_firing== 79150 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bd_survivorat_s_p7)))

                    ; #55059: <==uncertain_firing== 65613 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bd_not_survivorat_s_p7)))

                    ; #61518: <==negation-removal== 39703 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pd_not_survivorat_s_p7)))

                    ; #67451: <==uncertain_firing== 86488 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pd_survivorat_s_p7)))

                    ; #74187: <==negation-removal== 47099 (pos)
                    (not (Ba_not_checked_p7))

                    ; #76604: <==negation-removal== 51830 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76697: <==negation-removal== 53856 (pos)
                    (not (Pd_not_checked_p7))

                    ; #77015: <==negation-removal== 74556 (pos)
                    (not (not_checked_p7))

                    ; #78275: <==negation-removal== 88420 (pos)
                    (not (Bc_not_checked_p7))

                    ; #92071: <==negation-removal== 43572 (pos)
                    (not (Pb_not_checked_p7))))

    (:action observ_d_p8_s
        :precondition (and (at_d_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #11455: <==commonly_known== 18894 (neg)
                    (Pd_checked_p8)

                    ; #20057: <==commonly_known== 65434 (pos)
                    (Bb_checked_p8)

                    ; #23383: <==commonly_known== 65434 (pos)
                    (Ba_checked_p8)

                    ; #23999: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bd_not_survivorat_s_p8))

                    ; #28821: <==commonly_known== 18894 (neg)
                    (Pa_checked_p8)

                    ; #34079: <==commonly_known== 65434 (pos)
                    (Bd_checked_p8)

                    ; #38996: <==closure== 62742 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pd_survivorat_s_p8))

                    ; #45136: <==commonly_known== 65434 (pos)
                    (Bc_checked_p8)

                    ; #49160: <==commonly_known== 18894 (neg)
                    (Pb_checked_p8)

                    ; #55425: <==commonly_known== 18894 (neg)
                    (Pc_checked_p8)

                    ; #62742: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bd_survivorat_s_p8))

                    ; #64629: <==closure== 23999 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pd_not_survivorat_s_p8))

                    ; #65434: origin
                    (checked_p8)

                    ; #12193: <==negation-removal== 45136 (pos)
                    (not (Pc_not_checked_p8))

                    ; #18055: <==negation-removal== 62742 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #18894: <==negation-removal== 65434 (pos)
                    (not (not_checked_p8))

                    ; #23207: <==negation-removal== 55425 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25601: <==negation-removal== 49160 (pos)
                    (not (Bb_not_checked_p8))

                    ; #35297: <==uncertain_firing== 62742 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pd_not_survivorat_s_p8)))

                    ; #35838: <==negation-removal== 20057 (pos)
                    (not (Pb_not_checked_p8))

                    ; #38525: <==uncertain_firing== 64629 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bd_survivorat_s_p8)))

                    ; #41841: <==negation-removal== 34079 (pos)
                    (not (Pd_not_checked_p8))

                    ; #64600: <==negation-removal== 64629 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bd_survivorat_s_p8)))

                    ; #68678: <==negation-removal== 38996 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #77220: <==negation-removal== 28821 (pos)
                    (not (Ba_not_checked_p8))

                    ; #86887: <==negation-removal== 23383 (pos)
                    (not (Pa_not_checked_p8))

                    ; #87105: <==negation-removal== 23999 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pd_survivorat_s_p8)))

                    ; #88514: <==negation-removal== 11455 (pos)
                    (not (Bd_not_checked_p8))

                    ; #90584: <==uncertain_firing== 38996 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bd_not_survivorat_s_p8)))

                    ; #91730: <==uncertain_firing== 23999 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pd_survivorat_s_p8)))))

    (:action observ_d_p9_s
        :precondition (and (at_d_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #11292: <==closure== 56017 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pd_survivorat_s_p9))

                    ; #13511: <==commonly_known== 44279 (pos)
                    (Bc_checked_p9)

                    ; #15356: <==commonly_known== 10659 (neg)
                    (Pc_checked_p9)

                    ; #20137: <==commonly_known== 44279 (pos)
                    (Ba_checked_p9)

                    ; #26382: <==commonly_known== 10659 (neg)
                    (Pb_checked_p9)

                    ; #26761: <==commonly_known== 10659 (neg)
                    (Pd_checked_p9)

                    ; #27003: <==closure== 59632 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pd_not_survivorat_s_p9))

                    ; #37077: <==commonly_known== 44279 (pos)
                    (Bb_checked_p9)

                    ; #44279: origin
                    (checked_p9)

                    ; #51216: <==commonly_known== 10659 (neg)
                    (Pa_checked_p9)

                    ; #56017: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bd_survivorat_s_p9))

                    ; #59632: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bd_not_survivorat_s_p9))

                    ; #72919: <==commonly_known== 44279 (pos)
                    (Bd_checked_p9)

                    ; #10659: <==negation-removal== 44279 (pos)
                    (not (not_checked_p9))

                    ; #16791: <==negation-removal== 26382 (pos)
                    (not (Bb_not_checked_p9))

                    ; #18625: <==negation-removal== 27003 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bd_survivorat_s_p9)))

                    ; #21919: <==negation-removal== 15356 (pos)
                    (not (Bc_not_checked_p9))

                    ; #28477: <==uncertain_firing== 56017 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #33503: <==negation-removal== 26761 (pos)
                    (not (Bd_not_checked_p9))

                    ; #37611: <==negation-removal== 51216 (pos)
                    (not (Ba_not_checked_p9))

                    ; #38750: <==negation-removal== 11292 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #49358: <==negation-removal== 56017 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pd_not_survivorat_s_p9)))

                    ; #51114: <==negation-removal== 59632 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pd_survivorat_s_p9)))

                    ; #59483: <==negation-removal== 37077 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66171: <==uncertain_firing== 27003 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bd_survivorat_s_p9)))

                    ; #70871: <==negation-removal== 72919 (pos)
                    (not (Pd_not_checked_p9))

                    ; #73458: <==uncertain_firing== 11292 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bd_not_survivorat_s_p9)))

                    ; #81687: <==negation-removal== 20137 (pos)
                    (not (Pa_not_checked_p9))

                    ; #88671: <==negation-removal== 13511 (pos)
                    (not (Pc_not_checked_p9))

                    ; #90626: <==uncertain_firing== 59632 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pd_survivorat_s_p9)))))

)